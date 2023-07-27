import 'package:http/http.dart' as http;

logoutUser() async {
  const apiUrl = 'http://127.0.0.1:8001/api/logout';
  try {
    final response = await http.post(
      Uri.parse(apiUrl),
    );

    if (response.statusCode == 200) {
      print('Logged out successfully');
    } else {
      print('Logout failed: ${response.statusCode}');
    }
  } catch (e) {
    print('Error during logout: $e');
  }
}
