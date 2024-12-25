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
  } catch (e) {
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled higher up
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully!');
  } catch (e) {
    print('Main function caught error: $e');
  }
}
```