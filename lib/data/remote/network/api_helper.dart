import 'dart:convert';

import 'package:http/http.dart' as http;
extension HttpResponseHelper on http.Response {
  jsonBody() => json.decode(this.body);
}