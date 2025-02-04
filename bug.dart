```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data here
      print(jsonData['key']);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle errors
    print('Error: $e');
    // It's crucial to rethrow the exception if needed by the caller
    rethrow;
  }
}
```