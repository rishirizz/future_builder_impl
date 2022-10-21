import 'package:http/http.dart' as http;
import 'dart:convert';

String usersUrl = 'https://jsonplaceholder.typicode.com/users';

Future getUsers() async {
  var response = await http.get(Uri.parse(usersUrl));
  if (response.statusCode == 200) {
    return (json.decode(response.body));
  } else {
    throw Exception('Cannot load the data');
  }
}
