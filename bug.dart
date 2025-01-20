```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Use the response.body here to process the data
      // Example: Parse JSON using jsonDecode
      final jsonData = jsonDecode(response.body);
      print(jsonData);
    } else {
      // Handle the error appropriately based on status code
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions in a more comprehensive manner
    print('Error fetching data: $e');
    rethrow; // Rethrow to let the caller handle the error or show the error to the user
  }
}
```