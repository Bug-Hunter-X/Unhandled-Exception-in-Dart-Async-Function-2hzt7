```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an asynchronous operation that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    if (true) {
      throw Exception('Something went wrong!');
    }
    // ...rest of the code that should run only if no exception
  } catch (e, s) {
    print('Error in fetchData: $e');
    print('Stack trace: $s');
    //Instead of rethrowing consider a more robust error handling approach
    //For example, return an error value or handle it according to your application's logic
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully!');
  } catch (e, s) {
    print('Main function caught error: $e');
    print('Stack trace: $s');
  }
}
```