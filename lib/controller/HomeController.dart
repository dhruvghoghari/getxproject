import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
class HomeController extends GetxController
{
  var s ="XXX";

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getdata();
  }
  RxString uid = "".obs;
  RxString uname = "".obs;
  RxString email = "".obs;
  RxString utoken = "".obs;



  getdata() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    uid(prefs.getString("id"));
    uname(prefs.getString("name"));
    email(prefs.getString("email"));
    utoken(prefs.getString("user_session_token"));
  }

  RxString name="ABC".obs;

  display() async
  {
    name.value = "XYZ";
  }
  addproduct() async
  {

  }
}