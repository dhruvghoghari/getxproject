import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../helpers/ApiHandler.dart';
import '../helpers/ErrorHandler.dart';
import '../resources/UrlResources.dart';

class Login_Controller extends GetxController
{
  RxString uid="".obs;
  RxString nm="".obs;
  RxString em="".obs;
  RxString tk="".obs;


  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController cpassword = TextEditingController();

  RxBool islogin = false.obs;
  RxString loginmessage = "".obs;
  checklogin () async
  {
    try
    {
      var hadres={
        "Content-Type":"application/json"
      };
      var params={
        "name":name.text.toString(),
        "password":password.text.toString(),
        "device_token":"12345678",
        "device_os":"android"
      };

      await ApiHandler.postRequest(UrlResources.LOGIN,body:jsonEncode(params),headers: hadres).then((json) async {
        if(json["result"]=="success")
          {
            islogin(true);
            loginmessage(json["message"].toString());
            var id = json["data"]["id"].toString();
            var name = json["data"]["name"].toString();
            var email = json["data"]["email"].toString();
            var token = json["data"]["user_session_token"].toString();



            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.setString("islogin", "yes");
            
            prefs.setString("id", id);
            prefs.setString("name", name);
            prefs.setString("email", email);
            prefs.setString("token", token);
          }
        else
          {
            islogin(false);
            loginmessage(json["message"].toString());
          }
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
    name.text="";
    password.text="";
    }
  }
