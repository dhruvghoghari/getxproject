import 'package:get/get.dart';
import 'package:getxproject/bindings/LoginBinding.dart';
import 'package:getxproject/views/HomePage1.dart';
import 'package:getxproject/views/Login/LoginScreen.dart';
import '../../bindings/EmployeeBinding.dart';
import '../employee/ViewEmployee.dart';

List<GetPage> routes = [
  // GetPage(
  //   name: '/viewmeployee',
  //   page: () => ViewEmployee(),
  //   binding: EmployeeBinding(),
  // ),
  GetPage(
    name: '/login',
    page: () => LoginScreen(),
    binding: LoginBinding(),
  ),
  GetPage(
    name: '/Homepage1',
    page: () => HomePage1(),
    binding: LoginBinding(),
  ),
];