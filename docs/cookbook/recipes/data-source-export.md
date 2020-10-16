# Data Source Export

## Background

Often times a need to provide end users with data exports is necessary e.g. CSV, JSON, etc. It's also convenient to allow the export of data in communities based upon point and click data sources. Thanks to the extensible Data Source Export framework, technical consultants can provide implementations which allow the export of data in any custom format (beyond the packaged CSV export format).

## Framework Flow Chart

Before we dive into a working example, here's a chart which depicts how all of this works behind the scenes, technically. If this chart is too complex and you feel like you're in over your head, hang in here, the followup section will break it down into a step-by-step process.

![Data%20Source%20Export%20cc50bf79de4f439ea21c2f2c244293cd/Untitled.png](Data%20Source%20Export%20cc50bf79de4f439ea21c2f2c244293cd/Untitled.png)

## The Scenario

ISEN has an extensive user base. They have millennials who are embracing the mobile first aspect of their Community Hub implementation, but they also have some members who are a little old school. These organization members are dead set on needing the ability to export the list of upcoming events as a tab delimited file, since they have users who import this data monthly into their systems.

By utilizing this example scenario, we will illustrate how to fulfill this business use case, which in turn, will allow you to build an implementation that allows you to export any data source returning records in any format desired.

### The NC.IDataSourceExportService Interface

In order to provide the extensibility for custom export formats, we created an interface named `NC.IDataSourceExportService`. By creating a custom Apex class which implements this interface, you'll be able to provide export functionality in any format you choose.

Community Hub ships with an implementation of NC.IDataSourceExportService responsible for exporting data in CSV format named CSVDataSourceExportService. Consider using this implementation before reinventing the wheel.

### Creating a TabDataSourceExportService Class

Since we want to export data source records in a tab-delimited format, we're going to creat a new class named `TabDataSourceExportService` which `implements NC.IDataSourceExportService`.

```apex
/**
 * @description This class represents an implementation of the NC.IDataSourceExportService interface utilized
 *              for exporting data from a data source in tab delimited format.
 **/
public without sharing class TabDataSourceExportService implements NC.IDataSourceExportService {
    @testVisible private static final String REQUEST_PARAM = 'request';
    @testVisible private static final String MIME_TYPE = 'text/tab-separated-values#download.tsv';
    @testVisible private static final String FIELD_DELIMITER = '\t';
    @testVisible private static final String LINE_RETURN = '\r\n';
    @testVisible private static final String EMPTY_STRING = '';
 
    /**
     * @description Gets the mime type of this export.
     * @return A String representation of 'text/tab-separated-values#download.tsv'.
     */
    public String getMimeType() {
        return MIME_TYPE;
    }
 
    /**
     * @description Exports data based upon the specified NC.DataSourceExportRequest.
     * @param request The NC.DataSourceExportRequest instance describing the nature of the type of exporting
     *        being requested.
     * @return A String representation of the final, exported data in TSV format.
     * @throws NC.ArgumentNullException if request is null, NC.ArgumentException if field set is not found.
     */
    public String exportData(NC.DataSourceExportRequest request) {
        NC.ArgumentNullException.throwIfNull(request, REQUEST_PARAM);
 
        String output = EMPTY_STRING;
 
        // Get records to output.
        List<SObject> recordsToExport = getData(request);
 
        if (recordsToExport != null && !recordsToExport.isEmpty()) {
            // Generate all rows.
            output += generateRecordRows(request, recordsToExport);
        }
 
        // We're all done!
        return output;
    }
 
    private String generateRecordRows(NC.DataSourceExportRequest request, List<SObject> records) {
        String generatedRows = EMPTY_STRING;
 
        Map<Id, List<Schema.FieldSetMember>> fieldSetMembers = getFieldSetMembersById(request, records);
 
        // Go through all records, generating rows.
        for (SObject record : records) {
            List<String> fieldValues = new List<String>();
 
            // Get all values based upon columns in field set.
            for (Schema.FieldSetMember fieldSetMember : fieldSetMembers.get(record.Id)) {
                String fieldValue = String.valueOf(
                        NC.FieldSetService.Instance.getFieldValue(record, fieldSetMember.getFieldPath()));
                fieldValues.add(fieldValue);
            }
 
            // Move along if there are no values for this row.
            if (fieldValues.isEmpty()) {
                continue;
            }
 
            // Tab separate all values, appending a line return.
            generatedRows += String.join(fieldValues, FIELD_DELIMITER) + LINE_RETURN;
        }
 
        return generatedRows;
    }
 
    private List<SObject> getData(NC.DataSourceExportRequest request) {
        NC.QueryService service = new NC.QueryService();
 
        // Add in the field set from the request.
        service.addFieldSets(request.DataSourceName, new List<String> {
                request.FieldSetName
        });
 
        // Retrieve data from data source with specified field set.
        return (List<SObject>)service.getData(request.DataSourceName);
    }
 
    private Map<Id, List<Schema.FieldSetMember>> fieldSetMembersByRecordId;
 
    private Map<Id, List<Schema.FieldSetMember>> getFieldSetMembersById(
            NC.DataSourceExportRequest request, List<SObject> records) {
 
        if (fieldSetMembersByRecordId == null) {
            fieldSetMembersByRecordId = NC.FieldSetService.Instance.readFieldSetMembers(request.FieldSetName, records);
        }
 
        return fieldSetMembersByRecordId;
    }
}
```

### Setting Up an NC__ExportConfiguration__mdt Record

Now that we've created our custom implementation, we need to configure Community Hub through point and click, so it knows about our implementation at runtime.

1. In an org, navigate to **Setup.**
2. Navigate to **Develop > Custom Metadata Types.**
3. Click **Manage Records** next to **Export Configuration**.
4. Click **New**.
5. Specify a **Name** containing **No Spaces,** making special note of it for later since it will be needed.
6. In the **Class** field put the name of the **Apex Class which implements the NC.IDataSourceExportService** interface.
7. Click **Save.**

### Calling The Page With Parameters

With all the code and configuration done, we can utilize our implementation easily. It's as simple as using the **config** query string parameter to specify the name of the **`NC__ExportConfiguration__mdt`** record we created to make the runtime aware of our custom Apex class.

Example URL (does not actually function, merely highlights the piece which tells the runtime our record name): https://community.iamnimble.org/nc__datasourceexport?ds=UpcomingEvents&fs=NC__UpcomingEventsItem&on=NU__Event__c&**config=TabDelimited**

!> Adding too many fields to the specified field set may cause the CPU timeout limit to be exceeded. Keep the fields that are exported to a minimum.

#### **Query String Parameters and What They Do**

**Param**|**Descrition**|**Example**|**Note**
:-----:|:-----:|:-----:|:-----:
ds|The name of the NC\_\_DataSource\_\_c custom settings record to use for retrieving the data.|UpcomingEvents|Required
fs|The name of the Field Set to use (including namespace) which defines the fields to include in the export.|NC\_\_UpcomingEventsItem|Required
on|The name of the primary SObject type being queried by the data source.|NU\_\_Event\_\_c|Required
config|The name of the NC\_\_ExportConfiguration\_\_mdt record which specifies an implementation of NC.IDataSourceExportService to use.|TabDelimited|"Optional - If not specified
