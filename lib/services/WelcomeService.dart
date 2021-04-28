import 'package:dio/dio.dart';
import 'package:testapp/models/Welcome.dart';

class WelcomeService {
  String url = "https://jsonplaceholder.typicode.com/todos";

  Future<List<Welcome>> getWelcomes() async {
    List<Welcome> welcomes = [];
    Response response = await Dio().get(url);
    var data = response.data;
    print(data);
    data.forEach((value) {
      welcomes.add(Welcome.fromJson(value));
    });
    return welcomes;
  }
}
