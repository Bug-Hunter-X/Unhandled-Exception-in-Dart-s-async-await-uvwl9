# Unhandled Exception in Dart async/await

This repository demonstrates a subtle but common error in Dart's `async`/`await` pattern: forgetting to rethrow exceptions in `catch` blocks.

The `bug.dart` file shows code that fetches data and handles potential errors, but it only prints the exception instead of rethrowing it.  This can lead to silent failures if the calling function relies on error handling.

The `bugSolution.dart` file provides the corrected version that rethrows the exception, allowing proper error propagation.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`. Observe that an exception is printed but the program doesn't immediately terminate if the API call fails. A calling function won't know the error occurred.
3. Run `bugSolution.dart`.  The exception is rethrown, providing clear error handling to calling functions.