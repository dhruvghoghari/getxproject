import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondScreen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Second Screen"),
            ElevatedButton(onPressed: (){

              Get.back();

            }, child: Text("Back"))
          ],
        ),
      ),
    );
  }
}
