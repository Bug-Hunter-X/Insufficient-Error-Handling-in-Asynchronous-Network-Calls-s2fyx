# Insufficient Error Handling in Asynchronous Network Calls

This repository demonstrates a common error in Dart code involving asynchronous network operations and provides a solution for more robust error handling. The original code lacks comprehensive error handling, simply printing the error to the console and rethrowing it.  The improved solution provides more informative error messages, and uses a custom exception to handle specific error cases.

## Bug
The `bug.dart` file shows the initial code with inadequate error handling. 

## Solution
The `bugSolution.dart` file presents an improved version with enhanced error handling.

## How to run
1. Clone this repository.
2. Run `dart bug.dart` and `dart bugSolution.dart` to compare the output and behavior.
