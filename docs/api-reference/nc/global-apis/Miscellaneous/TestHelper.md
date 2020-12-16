# TestHelper class

Test Helpers for asserting common conditions.

---
## Methods
### `assertArgumentException(Exception actualException)` → `void`

Asserts that the specified exception is an ArgumentException.

#### Parameters
|Param|Description|
|-----|-----------|
|`actualException` |  The exception to check. |

### `assertArgumentNullException(Exception actualException, String paramName)` → `void`

Asserts that the specified exception is an ArgumentNullException and that its parameter name matches the one specified.

#### Parameters
|Param|Description|
|-----|-----------|
|`actualException` |  The exception to check. |
|`paramName` |  The expected parameter name. |

### `assertArgumentNullException(Exception actualException)` → `void`

Asserts that the specified exception is an ArgumentNullException.

#### Parameters
|Param|Description|
|-----|-----------|
|`actualException` |  The exception to check. |

### `assertException(Type expectedType, Exception actualException)` → `void`

Asserts that the specified exception is of the specified type.

#### Parameters
|Param|Description|
|-----|-----------|
|`expectedType` |  The type of exception that is expected to be thrown. |
|`actualException` |  The exception to check. |

### `assertException(Type expectedType, Exception actualException, String expectedMessage)` → `void`

Asserts that the specified exception is of the specified type and that its message matches the provided string.

#### Parameters
|Param|Description|
|-----|-----------|
|`expectedType` |  The type of exception that is expected to be thrown. |
|`actualException` |  The exception to check. |
|`expectedMessage` |  The expected result of calling actualException.getMessage(). |

### `assertInvalidTypeException(Exception actualException)` → `void`

Asserts that the specified exception is an InvalidTypeException.

#### Parameters
|Param|Description|
|-----|-----------|
|`actualException` |  The exception to check. |

### `assertNoSuchObjectException(Exception actualException)` → `void`

Asserts that the specified exception is a NoSuchObjectException.

#### Parameters
|Param|Description|
|-----|-----------|
|`actualException` |  The exception to check. |

### `assertPaymentProcessedException(Exception actualException, String message)` → `void`

Asserts that the specified exception is a PaymentProcessedException and that its message matches the one specified.

#### Parameters
|Param|Description|
|-----|-----------|
|`actualException` |  The exception to check. |
|`message` |  The expected message. |

#### Throws
|Exception|Description|
|---------|-----------|
|`An` |  ArgumentNullException if actualException or message are null. |

### `assertPaymentProcessedException(Exception actualException)` → `void`

Asserts that the specified exception is a PaymentProcessedException.

#### Parameters
|Param|Description|
|-----|-----------|
|`actualException` |  The exception to check. |

#### Throws
|Exception|Description|
|---------|-----------|
|`An` |  ArgumentNullException if actualException is null. |

### `assertUnauthorizedAccessException(Exception actualException, String message)` → `void`

Asserts that the specified exception is a UnauthorizedAccessException and that its message matches the one specified.

#### Parameters
|Param|Description|
|-----|-----------|
|`actualException` |  The exception to check. |
|`message` |  The expected message. |

#### Throws
|Exception|Description|
|---------|-----------|
|`An` |  ArgumentNullException if actualException or message are null. |

### `expectedArgumentException()` → `void`

Cause an assertion failure indicating that an ArgumentException was expected and no exception was thrown.

### `expectedArgumentException(Exception actualException)` → `void`

Cause an assertion failure indicating that an ArgumentException was expected but an exception of another type was thrown.

#### Parameters
|Param|Description|
|-----|-----------|
|`actualException` |  The exception that was thrown. |

### `expectedArgumentNullException()` → `void`

Cause an assertion failure indicating that an ArgumentNullException was expected and no exception was thrown.

### `expectedArgumentNullException(Exception actualException)` → `void`

Cause an assertion failure indicating that an ArgumentNullException was expected but an exception of another type was thrown.

#### Parameters
|Param|Description|
|-----|-----------|
|`actualException` |  The exception that was thrown. |

### `expectedException(Type expectedType)` → `void`

Causes an assertion failure indicating that an exception of the specified type was expected and no exception was thrown.

#### Parameters
|Param|Description|
|-----|-----------|
|`expectedType` |  The type of the exception that was expected to be thrown. |

### `expectedException(Type expectedType, Exception actualException)` → `void`

Causes an assertion failure indicating than an exception of one type was expected but an exception of another type was thrown.

#### Parameters
|Param|Description|
|-----|-----------|
|`expectedType` |  The type of the exception that was expected to be thrown. |
|`actualException` |  The exception that was thrown. |

### `expectedInvalidTypeException()` → `void`

Cause an assertion failure indicating that an InvalidTypeException was expected and no exception was thrown.

### `expectedInvalidTypeException(Exception actualException)` → `void`

Cause an assertion failure indicating that an InvalidTypeException was expected but an exception of another type was thrown.

#### Parameters
|Param|Description|
|-----|-----------|
|`actualException` |  The exception that was thrown. |

### `expectedNoSuchObjectException()` → `void`

Cause an assertion failure indicating that a NoSuchObjectException was expected and no exception was thrown.

### `expectedNoSuchObjectException(Exception actualException)` → `void`

Cause an assertion failure indicating that a NoSuchObjectException was expected but an exception of another type was thrown.

#### Parameters
|Param|Description|
|-----|-----------|
|`actualException` |  The exception that was thrown. |

### `expectedPaymentProcessedException()` → `void`

Cause an assertion failure indicating that a PaymentProcessedException was expected but no exception was thrown.

### `expectedPaymentProcessedException(Exception actualException)` → `void`

Cause an assertion failure indicating that a PaymentProcessedException was expected but an exception of another type was thrown.

#### Parameters
|Param|Description|
|-----|-----------|
|`actualException` |  The exception that was thrown. |

#### Throws
|Exception|Description|
|---------|-----------|
|`An` |  ArgumentNullException if actualException is null. |

### `expectedUnauthorizedAccessException()` → `void`

Cause an assertion failure indicating that an UnauthorizedAccessException was expected and no exception was thrown.

### `expectedUnauthorizedAccessException(Exception actualException)` → `void`

Cause an assertion failure indicating that an ArgumentNullException was expected but an exception of another type was thrown.

#### Parameters
|Param|Description|
|-----|-----------|
|`actualException` |  The exception that was thrown. |

---
