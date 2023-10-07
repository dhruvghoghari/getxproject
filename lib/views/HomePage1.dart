import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage1"),),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              // Get.defaultDialog(
              //     title: "Welcome to Flutter Dev'S",
              //     middleText: "FlutterDevs is a protruding flutter app development company with "
              //         "an extensive in-house team of 30+ seasoned professionals who know "
              //         "exactly what you need to strengthen your business across various dimensions",
              //     backgroundColor: Colors.grey,
              //     titleStyle: TextStyle(color: Colors.white),
              //     middleTextStyle: TextStyle(color: Colors.white),
              //     radius: 30
              // );
              Get.snackbar(
                "Warning",
                "Display the message here",
                colorText: Colors.white,
                backgroundColor: Colors.grey,
                icon: const Icon(Icons.add_alert),
              );
            }, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
