import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getxproject/controller/EmployeeController.dart';

class ViewEmployee extends GetView<EmployeeController>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee View")),
      body: Obx(()=>(controller.alldata==null)?Center(child: CircularProgressIndicator(),):ListView.builder(
          itemCount: controller.alldata!.length,
          itemBuilder: (context,index)
          {
            return ListTile(
              onTap: (){
                Get.toNamed("/login");
              },
              title: Text(controller.alldata![index].ename.toString()),
              subtitle: Text(controller.alldata![index].gender.toString()),
              trailing: Column(
                children: [
                  Text(controller.alldata![index].salary.toString()),
                  Text(controller.alldata![index].department.toString())
                ],
              ),
            );
          }
      )),
    );
  }

}