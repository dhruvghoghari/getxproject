import 'package:flutter/material.dart';
import 'package:getxproject/views/Login/LoginScreen.dart';
import 'package:getxproject/views/Products/AddProducts.dart';
import 'package:getxproject/views/AerithmaticOpration.dart';
import 'package:getxproject/views/EmployeSalary.dart';
import 'package:getxproject/views/Products/ViewProductsScreen.dart';
import 'package:getxproject/views/StateManagmentExample.dart';
import 'package:getxproject/views/StudentResult.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children:[
            ListTile(
              title: Text("Aerithmatic Opration"),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => AerithmaticOpration())
                );
              },
            ),
            ListTile(
              title: Text("StateManagment Example"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StateManagmentExample())
                );
              },
            ),
            ListTile(
              title: Text("Student Result"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StudentResult())
                );
              },
            ),
            ListTile(
              title: Text("EmployeSalary"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EmployeSalary())
                );
              },
            ),
            ListTile(
              title: Text("AddProducts"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddProducts())
                );
              },
            ),
            ListTile(
              title: Text("ViewProducts"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ViewProductsScreen())
                );
              },
            ),
            ListTile(
              title: Text(" User Login"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen())
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
