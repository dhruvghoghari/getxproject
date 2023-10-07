import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/controller/Login_Controller.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Login_Controller obj = Get.put(Login_Controller());
    return Scaffold(
      appBar: AppBar(title: Text("RegisterScreen"),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: obj.name,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: " Name",
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
                  controller: obj.email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: " Email",
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
                  controller: obj.password,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
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
                  controller: obj.cpassword,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
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
                // obj.name.text="";
                // obj.email.text="";
                // obj.password.text="";
                // obj.cpassword.text="";

                Get.back();
              }, child: Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }
}
