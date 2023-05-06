import 'dart:convert';

import 'package:exam_6/screens/railway/model/train_model.dart';
import 'package:http/http.dart' as http;

class APIHelper {
  Future<List> apiCaller(String name) async {

    var train = jsonEncode({"search":name});

    Uri uri = Uri.parse("https://trains.p.rapidapi.com/");
    var response = await http.post(uri, headers: {
      "X-RapidAPI-Key": "a0f85348a8mshb46c481e6ac5541p1cac20jsn984be2cd2605",
      "content-type": "application/json",
      "X-RapidAPI-Host": "trains.p.rapidapi.com"
    },body: train);
    var json = jsonDecode(response.body);

    List<dynamic> jsonList = json.map((e)=> TrainModel.fromJson(e)).toList();
    return jsonList;
  }
}
