import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/views/SecondScreen.dart';

class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firstscreen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){

              Get.to(SecondScreen());
            }, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
