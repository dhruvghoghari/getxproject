import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getxproject/views/StudentResult.dart';

class StudentController extends GetxController
{
  TextEditingController name = TextEditingController();
  TextEditingController rollno = TextEditingController();
  TextEditingController sub1 = TextEditingController();
  TextEditingController sub2 = TextEditingController();
  TextEditingController sub3 = TextEditingController();

  RxString nm = "".obs;
  RxString rn = "".obs;
  RxString s1 = "".obs;
  RxString s2 = "".obs;
  RxString s3 = "".obs;
  RxInt totall = 0.obs;
  RxString pr =  "".obs;

  StudentResult() async
  {
    nm.value = name.text.toString();
    rn.value = rollno.text.toString();
    s1.value = sub1.text.toString();
    s2.value = sub2.text.toString();
    s3.value  =sub3.text.toString();

    var total = int.parse(sub1.text.toString()) + int.parse(sub2.text.toString()) + int.parse(sub3.text.toString());
    totall.value = total;
    var percentage = (total/3).toString();
    pr.value = percentage;


    name.text = "";
    rollno.text ="";
    sub1.text ="";
    sub2.text ="";
    sub3.text ="";

  }
}