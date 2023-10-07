import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:getxproject/others/HomeScreen.dart';
import 'package:getxproject/views/routes/Routes.dart';
import 'package:getxproject/views/AerithmaticOpration.dart';
import 'package:getxproject/views/EmployeSalary.dart';
import 'package:getxproject/views/FirstScreen.dart';
import 'package:getxproject/views/Login/LoginScreen.dart';
import 'package:getxproject/views/StudentResult.dart';
import 'package:getxproject/views/Products/ViewProductsScreen.dart';
import 'package:getxproject/views/employee/ViewEmployee.dart';
import 'bindings/EmployeeBinding.dart';
import 'views/StateManagmentExample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/Homepage1',
      defaultTransition: Transition.fade,
      getPages: routes,
    );
  }
}


