# ExchangeRatesApiV1 class

Version 1 implementation of a service that deals with exchange rates..

---
## Methods
### `convert(Decimal amount, String isoTarget)` → `Decimal`

Converts the received amount from the org's rate to the target rate.

#### Parameters
|Param|Description|
|-----|-----------|
|`amount` |  The amount to convert. |
|`isoTarget` |  Target currency as an ISO Code. |

#### Return

**Type**

Decimal

**Description**

Converted amount for the target currency.

#### Throws
|Exception|Description|
|---------|-----------|
|`ConfigurationException` |  if there are no rates configured or if a rate is not configured for the |
|`ApiContractService.ContractException` |  if any of the parameters are null. |

### `convert(Decimal amount, String isoSource, String isoTarget)` → `Decimal`

Converts the received amount from the source rate to the target rate.

#### Parameters
|Param|Description|
|-----|-----------|
|`amount` |  The amount to convert. |
|`isoSource` |  Source currency as an ISO Code. |
|`isoTarget` |  Target currency as an ISO Code. |

#### Return

**Type**

Decimal

**Description**

Converted amount for the target currency.

#### Throws
|Exception|Description|
|---------|-----------|
|`ConfigurationException` |  if there are no rates configured, a base rate is not configured or if |

---
