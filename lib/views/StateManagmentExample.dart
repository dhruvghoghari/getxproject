import 'package:flutter/material.dart';
import '../controller/HomeController.dart';
import 'package:get/get.dart';

class StateManagmentExample extends StatefulWidget {
  const StateManagmentExample({Key? key}) : super(key: key);

  @override
  State<StateManagmentExample> createState() => _StateManagmentExampleState();
}

class _StateManagmentExampleState extends State<StateManagmentExample> {
  @override
  Widget build(BuildContext context) {
    HomeController obj = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(title: Text("StateManagmentExample"),),
      body: Obx(()=>SingleChildScrollView(
        child: Column(
          children: [
            Text(obj.name.toString()),
            ElevatedButton(onPressed: (){
              obj.display();
            }, child: Text("Submit")),
            Text(obj.name.toString()),
          Text(obj.name.toString()),
          ],
        ),
      )),
    );
  }
}
