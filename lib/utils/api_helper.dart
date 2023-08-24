import 'dart:convert';
import 'package:apis/train/model/train_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  Future<List> TrainApicall() async {

    String apilink = "https://trains.p.rapidapi.com";
    Uri url = Uri.parse(apilink);

    Map m1 = {"search": "Rajdhani"};
    var json = jsonEncode(m1);
    var response = await http.post(
      url,
      headers: {
        'content-type': 'application/json',
        'X-RapidAPI-Key': '4f83946f48mshca990122bc500f1p19f8b9jsn13c11a386db0',
        'X-RapidAPI-Host': 'trains.p.rapidapi.com',
      },
      body: json,
    );
    var json1 = jsonDecode(response.body);
    List trainjsonList = json1.map((e) => TrainModel.fromJson(e)).toList();
    return trainjsonList;
  }
}