import 'dart:convert';
import 'package:get/get.dart';
import 'package:getxproject/helpers/ApiHandler.dart';
import 'package:getxproject/models/Employe.dart';
import 'package:getxproject/resources/UrlResources.dart';
import 'package:getxproject/views/employee/ViewEmployee.dart';
import '../helpers/ErrorHandler.dart';
import '../models/Product.dart';

class EmployeeController extends GetxController
{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getdata();
  }

  RxList<Employe>? alldata = <Employe>[].obs;


  getdata() async {
    print("cALL");
    // APi
    try
    {
      await ApiHandler.getRequest(UrlResources.All_Employee).then((json){
        alldata!(json["data"].map<Employe>((obj) => Employe.fromJson(obj)).toList());
      });
    }
    on ErrorHandler catch (ex)
    {
      if(ex.message.toString()=="Internet Connection Failure")
      {
        //rdirect to no internet page
      }
      else if(ex.message.toString()=="Bad Response Format")
      {
        //redirect to support page
      }
    }
  }
}