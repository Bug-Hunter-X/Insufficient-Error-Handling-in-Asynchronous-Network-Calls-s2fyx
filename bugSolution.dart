```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class CustomNetworkException implements Exception {
  final String message;
  CustomNetworkException(this.message);
  @override
  String toString() => message;
}

Future<Map<String, dynamic>> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw CustomNetworkException('Failed to load data. Status code: ${response.statusCode}');
    }
  } on CustomNetworkException catch (e) {
    // Handle specific network exceptions
    print('Network Error: ${e.toString()}');
    throw e; // Re-throw for higher level handling
  } on FormatException catch (e) {
    // Handle JSON parsing errors
    print('JSON Parsing Error: $e');
    throw e;
  } catch (e) {
    print('Unexpected error: $e');
    rethrow; // Re-throw for handling unexpected errors
  }
}

void main() async {
  try {
    final data = await fetchData();
    print('Data fetched successfully: $data');
  } catch (e) {
    print('An error occurred: $e');
  }
}
```