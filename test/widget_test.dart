// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

void main() {
  test("status code 200", () async {
    final response = await http
        .get(Uri.parse('http://www.omdbapi.com/?s=batman&apikey=5b5927c3'));
    expect(response.statusCode, 200);
  });

  test("status code 200 for det", () async {
    final response_details = await http
        .get(Uri.parse('http://www.omdbapi.com/?i=tt0372784&apikey=5b5927c3'));
    expect(response_details.statusCode, 200);
  });
}
