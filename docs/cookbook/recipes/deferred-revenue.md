# Extending Deferred Revenue

## Background

The Deferred Revenue feature has a number of technical extension points to the functionality which are outlined in this document.

## Custom Recognition Date Generation

One of the ways to extend deferred revenue is by using a Frequency record as the recognition method. When using this method, the frequency record is generating the dates to recognize the revenue on. To further extend this, the frequency record can have a custom Apex class which is generating those dates by using the **`NU.IGenerateDates`** interface.

### Interface

```apex
/**
 * @description Interface that is used to generate dates for a Frequency.
 */
global interface IGenerateDates {
    /**
     * @description Generates a list of dates based on the provided request.
     * @param request Information to generate dates, including a Frequency.
     * @return A list of generated dates.
     */
    List<Date> generate(GenerateDatesRequest request);
}
```

### Custom Apex Class Implementation

Let's say we had a use case where recognition dates were to be bi-monthly on the last day of the month. We wouldn't be able to accomplish that with just a frequency record, but we can write some custom Apex code to accomplish our goal.

```apex
/**
 * @description Calculates Membership recognition dates.
 *              Bi-monthly on the last day of the month.
 */
public with sharing class UniqueMembershipDates implements NU.IGenerateDates {
    /**
     * @description Generates Membership recognition dates.
     * @param request The request to generate the dates from.
     * @return List of generated dates based on the request's start date.
     */
    public List<Date> generate(NU.GenerateDatesRequest request) {
        // The end of the start date month.
        Date recognitionStartDate = toEndOfMonth(request.StartDate);
 
        List<Date> generatedDates = new List<Date>();
 
        if (request.IncludeStartDate) {
            generatedDates.add(request.StartDate);
        }
 
        for (Integer i = 1; i <= request.TotalOccurrences; i++) {
            // Bi-monthly.
            generatedDates.add(toEndOfMonth(recognitionStartDate.addMonths(i * 2)));
        }
 
        return generatedDates;
    }
 
    private Date toEndOfMonth(Date inputDate) {
        return inputDate.addMonths(1).toStartOfMonth().addDays(-1);
    }
}
```

### Point and Click Configuration

Now that we've created our Apex class, we need to make Nimble AMS aware of it for use on our deferred revenue method.

- Create a new **Frequency** record, specifying your custom **Dates Generator** class. The values for **Length, Unit, Occurrences** will not be applicable when using the custom class, so you can set them to something for reference, or just 1.

![Extending%20Deferred%20Revenue%20aaaaf31ed7bf4511891c17679dc41a0a/Untitled.png](Extending%20Deferred%20Revenue%20aaaaf31ed7bf4511891c17679dc41a0a/Untitled.png)

- **Save** the record.
- Assign the **Frequency** you just created to the **Frequency** lookup field on your **Deferred Revenue Method**.

![Extending%20Deferred%20Revenue%20aaaaf31ed7bf4511891c17679dc41a0a/Untitled%201.png](Extending%20Deferred%20Revenue%20aaaaf31ed7bf4511891c17679dc41a0a/Untitled%201.png)

- **Save** the record.

That's it, you're all done setting up your custom class!

## Custom Recognition Amount Calculation

Deferred revenue methods can now utilize a custom calculator Apex class to determine the recognition amounts. When using this method, the deferred revenue method will call your custom code when determining recognition based upon the **`NU.IRecognitionCalculator`** interface.

### Interface

```apex
/**
 * @description Interface that is used to calculate recognition amounts.
 */
global interface IRecognitionCalculator {
    /**
     * @description Calculates the recognition amount.
     * @param request Information to calculate the amount.
     * @return Decimal of the recognition amount.
     */
    Decimal calculateRecognitionAmount(RecognitionCalculatorRequest request);
 
    /**
     * @description Gets the difference between the expected amount (calculated) and the
     *              recognized amount on the deferred schedule.
     * @param request Information to calculate the difference.
     * @return Decimal amount that is the difference in the recognized amount and what is expected.
     */
    Decimal calculateDifferenceInExpectedAmount(RecognitionCalculatorRequest request);
}
```

### Custom Apex Class Implementation

Let's say you wanted to recognize revenue based upon a percentage of the remaining amount. You wouldn't be able to do that fully through point and click, but with a little Apex magic, you can.

```apex
/**
 * @description Calculates recognition amounts as a percentage of the remaining total.
 */
public with sharing class PercentRecognitionCalculator implements NU.IRecognitionCalculator {
    private static final Decimal PERCENTAGE_RECOGNITION = 0.6;
 
    /**
     * @description Default constructor.
     */
    public PercentRecognitionCalculator() { }
 
    /**
     * @description Calculates the recognition amount.
     * @param request Information to calculate the amount.
     * @return Decimal of the recognition amount.
     */
    public Decimal calculateRecognitionAmount(NU.RecognitionCalculatorRequest request) {
        return this.calculateAmount(request);
    }
 
    /**
     * @description Gets the difference between the expected amount (calculated) and the
     *              recognized amount on the deferred schedule.
     * @param request Information to calculate the difference.
     * @return Decimal amount that is the difference in the recognized amount and what is expected.
     */
    public Decimal calculateDifferenceInExpectedAmount(NU.RecognitionCalculatorRequest request) {
        return this.calculateAmount(request);
    }
 
    private Decimal calculateAmount(NU.RecognitionCalculatorRequest request) {
        ArgumentNullException.throwIfNull(request, 'request');
 
        Decimal remainingAmount = request.Amount - request.RecognizedAmount;
 
        // Check to see if it's the last recognition.
        if (request.LengthToRecognize == request.RemainingRecognitionCount) {
            // Recognition amount should be the exact amount remaining, with no rounding.
            return remainingAmount;
        }
 
        Decimal recognitionAmount = 0;
 
        for (Integer i = 0; i < request.LengthToRecognize; i++) {
            Decimal percentageRecognition = (PERCENTAGE_RECOGNITION * remainingAmount).setScale(2, RoundingMode.DOWN);
            recognitionAmount += percentageRecognition;
            remainingAmount -= percentageRecognition;
        }
 
        return recognitionAmount;
    }
}
```

### Point and Click Configuration

Now that we've created our Apex class, we need to make Nimble AMS aware of it for use on our deferred revenue method.

- Create your **Deferred Revenue Method** setting the value of the **Recognition Calculator** to that of your Apex class.

![Extending%20Deferred%20Revenue%20aaaaf31ed7bf4511891c17679dc41a0a/Untitled%202.png](Extending%20Deferred%20Revenue%20aaaaf31ed7bf4511891c17679dc41a0a/Untitled%202.png)

- **Save** the record.

That's it, you're all done setting up your custom class!
