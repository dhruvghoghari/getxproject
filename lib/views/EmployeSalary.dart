import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/EmployeSalary_Controller.dart';

class EmployeSalary extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    EmployeSalary_Controller obj = Get.put(EmployeSalary_Controller());
    return Scaffold(
      appBar: AppBar(title: Text("EmployeSalary"),),
    body: Obx(()=> SafeArea(
      child: SingleChildScrollView(
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
                controller: obj.salary,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: " Salary",
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
              obj.EmployeSalary();
            }, child: Text("Submit")),

            Card(
              color: Colors.grey.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 5.0,
              margin: EdgeInsets.all(30.0),
              shadowColor: Colors.blue,
              child: Column(
                children: [
                  Text("Name :- "+obj.nm.toString(),style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0
                  ),),
                  Text("Salary :- "+obj.sr.toString(),style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0
                  ),),
                  Text("HRA :- "+obj.hra.toString(),style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0
                  ),),
                  Text("DA :- "+obj.da.toString(),style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0
                  ),),
                  Text("P.F :- "+obj.pf.toString(),style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0
                  ),),
                  SizedBox(height: 20.0),
                  Text("Net Salary : "+obj.nsr.toString(),style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w900,
                      fontSize: 40.0
                  ),)
                ],
              ),
            ),
          ],
        ),
      ),
    ),)
    );
  }
}
