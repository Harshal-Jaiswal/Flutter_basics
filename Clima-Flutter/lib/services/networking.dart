import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = '240c5816915956c1e3dc27127f202bb1';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    http.Response res = await http.get(url);
    if (res.statusCode == 200) {
      String data = res.body;

      return jsonDecode(data);
    } else {
      print(res.statusCode);
    }
  }
}
