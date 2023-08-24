import 'package:apis/utils/api_helper.dart';
import 'package:flutter/foundation.dart';

class TrainProvider with ChangeNotifier {

  Future<List> getTrain() async {
    ApiHelper apiHelper = ApiHelper();

    List l1 = await apiHelper.TrainApicall();
    return l1;
  }
}