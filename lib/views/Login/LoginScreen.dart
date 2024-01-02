import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/controller/Login_Controller.dart';
import 'package:getxproject/views/Login/Homepage.dart';
import 'package:getxproject/views/Login/RegisterScreen.dart';
import 'LoginScreen.dart';

class LoginScreen extends GetView<Login_Controller> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("LoginScreen"),),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller.name,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "User Name",
                  icon: Icon(Icons.person),
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
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller.password,
                obscureText: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Password",
                  icon: Icon(Icons.lock_open_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(20.0),
                      right: Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: () async{
              controller.name.text.toString();
              controller.password.text.toString();
              await controller.checklogin();

              if(controller.islogin==true)
                {
                  var snackbar = SnackBar(content: Text(controller.loginmessage.toString()));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  Get.to(Homepage());
                }
              else
                {
                  var snackbar = SnackBar(content: Text(controller.loginmessage.toString()));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }
            }, child: Text("Submit")),

            SizedBox(height: 10.0),
            Text("OR",style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20.0),
            Row(
              children: [
                SizedBox(width: 90.0),
                Text("Don't Have Account?",style: TextStyle(
                  fontSize: 15.0,
                ),),
                GestureDetector(
                  onTap: (){
                    Get.to(RegisterScreen());

                  },
                  child: Text("Create Account",style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
