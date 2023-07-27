import 'package:http/http.dart' as http;

loginUser(String email, String password) async {
  const apiUrl = 'http://127.0.0.1:8001/api/login';
  return await http.post(
    Uri.parse(apiUrl),
    body: {
      'email': email,
      'password': password,
    },
  );
}
