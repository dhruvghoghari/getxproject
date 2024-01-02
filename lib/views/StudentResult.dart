import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/StudentController.dart';

class StudentResult extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    StudentController obj = Get.put(StudentController());
    return Scaffold(
      appBar: AppBar(title: Text("StudentResult")),
      body: Obx(() => SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: obj.name,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: " name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(20.0),
                      right: Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: obj.rollno,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: " Rollno",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(20.0),
                      right: Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: obj.sub1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: " Sub1",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(20.0),
                      right: Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: obj.sub2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: " Sub2",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(20.0),
                      right: Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: obj.sub3,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: " Sub3",
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
              obj.StudentResult();
            }, child: Text("Result")),

            Text("name : "+obj.nm.toString()),
            Text("Rollno : "+obj.rn.toString()),
            Text("Sub1 : "+obj.s1.toString()),
            Text("Sub2 : "+obj.s2.toString()),
            Text("Sub3 : "+obj.s3.toString()),
             Text("TOTAl : "+obj.totall.toString()),
            Text("percentage : "+obj.pr.toString()),


          ],
        ),
      ),)
    );
  }
}
