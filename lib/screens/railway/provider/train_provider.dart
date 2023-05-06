import 'package:exam_6/utils/api_helper/api_helper.dart';
import 'package:flutter/cupertino.dart';

class TrainProvider extends ChangeNotifier{

  APIHelper? apiHelper;

  List<dynamic> jsonList = [];

  void apiCalling(String name) async {
    apiHelper = APIHelper();
    List<dynamic> list = await apiHelper!.apiCaller(name);
    jsonList = list;
    // notifyListeners();
  }
}