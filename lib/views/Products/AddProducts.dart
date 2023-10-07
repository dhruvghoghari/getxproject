import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/ProductController.dart';

class AddProducts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ProductController obj = Get.put(ProductController());  // Creat Object
    return Scaffold(
      appBar: AppBar(title: Text("AddProducts")),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
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
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: obj.quantity,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: " quantity",
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
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: obj.price,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: " Price",
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

              await obj.insertproduct();
              if(obj.isinsert==true)
              {
                var snackbar = SnackBar(content: Text(obj.message.toString()));
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              }
              else
              {
                var snackbar = SnackBar(content: Text(obj.message.toString()));
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              }

            }, child: Text("Add"))
          ],
        ),
      ),
    );
  }
}
