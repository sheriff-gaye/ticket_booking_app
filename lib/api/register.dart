import 'dart:convert';
import 'package:http/http.dart' as http;

class CallApi {
  final String _url = "http://127.0.0.1:8001/api/register";
  postData(data) async {
    return await http.post(
      Uri.parse(_url),
      body: jsonEncode(data),
      headers: _setHeaders(),
    );
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
}
