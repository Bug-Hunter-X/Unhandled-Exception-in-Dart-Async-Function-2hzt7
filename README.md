# Unhandled Exception in Dart Async Function

This repository demonstrates a common error in Dart asynchronous programming: improper exception handling. The `bug.dart` file shows an example where an exception is thrown within an asynchronous function, but the exception is not caught properly, leading to unexpected behavior.

The solution, in `bugSolution.dart`, demonstrates the improved exception handling and proper rethrowing of the exceptions.

**Key Points:**
* The importance of handling exceptions in asynchronous operations
* Proper use of `try-catch` blocks in asynchronous functions
* Effective use of `rethrow` to propagate exceptions to higher levels
* Importance of clear and informative error messages.