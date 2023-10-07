import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/controller/HomeController.dart';
import 'package:getxproject/controller/Login_Controller.dart';

class Homepage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    HomeController obj = Get.put(HomeController());
    return Obx(() => Scaffold(
      appBar: AppBar(title: Text("Homepage"),
        actions: [
          IconButton(onPressed: (){
            Get.back();
          }, icon: Icon(Icons.logout))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text("Id :- " +obj.uid.toString()),
            Text("Name  :- " +obj.uname.toString()),
            Text("Email :- "+obj.email.toString()),
            Text("Token :- "+obj.utoken.toString()),


          ],
        ),
      ),
    ));
  }
}
