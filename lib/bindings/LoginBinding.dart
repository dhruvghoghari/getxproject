import 'package:get/get.dart';
import 'package:getxproject/controller/EmployeeController.dart';
import 'package:getxproject/controller/Login_Controller.dart';

class LoginBinding extends Bindings
{
  @override
  void dependencies() {
    Get.put(Login_Controller());
  }
}