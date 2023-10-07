import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/controller/ProductController.dart';
import 'package:getxproject/models/Product.dart';
import 'package:getxproject/views/Products/EditProduct.dart';

class MyProductItem extends StatelessWidget {

  Products item;
  VoidCallback onTap;
  VoidCallback onTapEdit;
  MyProductItem({required this.item,required this.onTap,required this.onTapEdit});

  @override
  Widget build(BuildContext context) {
    ProductController obj = Get.put(ProductController());
    return ListTile(
      title: Text(item.pname.toString()),
      subtitle: Text(item.qty.toString()),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(item.price.toString()),
          IconButton(
            onPressed: onTap,
            icon: Icon(Icons.delete,color: Colors.red,),
          ),

          IconButton(
            onPressed: onTapEdit,
            icon: Icon(Icons.edit,color: Colors.green,),
          ),
        ],
      ),
    );

  }
}
