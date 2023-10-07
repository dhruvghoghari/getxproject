import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getxproject/views/EmployeSalary.dart';

class EmployeSalary_Controller extends GetxController
{
  TextEditingController name = TextEditingController();
  TextEditingController salary = TextEditingController();

  RxString nm = "".obs;
  RxString sr = "".obs;
  RxString hra = "".obs;
  RxString da = "".obs;
  RxString pf = "".obs;
  RxString nsr = "".obs;

  EmployeSalary() async
  {
    nm.value = name.text.toString();
    sr.value = salary.text.toString();
    
    var hraa = int.parse(salary.text.toString()) * 2/100;
    var daa = int.parse(salary.text.toString()) * 3/100;
    var ppf = int.parse(salary.text.toString()) * 14/100;
    var nesr = int.parse(salary.text.toString()) + hraa + daa - ppf;

    hra.value = hraa.toString();
    da. value = daa.toString();
    pf.value = ppf.toString();
    nsr.value = nesr.toString();

    name.text="";
    salary.text="";
  }
}