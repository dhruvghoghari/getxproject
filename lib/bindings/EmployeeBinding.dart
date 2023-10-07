import 'package:get/get.dart';
import 'package:getxproject/controller/EmployeeController.dart';

class EmployeeBinding extends Bindings
{
  @override
  void dependencies() {
    Get.put(EmployeeController());
  }

}