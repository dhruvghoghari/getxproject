import 'package:flutter/material.dart';
import 'package:getxproject/controller/MyController.dart';
import 'package:get/get.dart';

class AerithmaticOpration extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    MyController obj = Get.put(MyController());
    return Scaffold(
      appBar: AppBar(title: Text("AerithmaticOpration")
      ),
      body: Obx(()=>SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  Text("No1 ",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: obj.no1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: " no1",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20.0),
                        right: Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Text("No2 ",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: obj.no2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: " no2",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20.0),
                        right: Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){

                obj.calculateResult();

              }, child: Text("Submit")),
              Text(obj.result.toString())
            ],
          ),
        ),
      )),
    );
  }
}

