import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyController extends GetxController
{
  TextEditingController no1 = TextEditingController();
  TextEditingController no2 = TextEditingController();

  RxInt result = 0.obs;

  calculateResult() async
  {
    var total = int.parse(no1.text.toString()) + int.parse(no2.text.toString());
    result.value = total;
  }
}