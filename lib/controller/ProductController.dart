import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/views/Products/EditProduct.dart';
import 'package:getxproject/views/Products/ViewProductsScreen.dart';
import '../helpers/ApiHandler.dart';
import '../helpers/ErrorHandler.dart';
import '../models/Product.dart';
import '../resources/UrlResources.dart';

class ProductController extends GetxController
{
  TextEditingController name = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController quantity = TextEditingController();

  @override
  void onInit() {
    getAllProducts();
  }

  RxList<Products>? alldata = <Products>[].obs;

  getAllProducts() async {
    try
    {
      await ApiHandler.getRequest(UrlResources.ALL_PRODUCT).then((json){
        alldata!(json["data"].map<Products>((obj) => Products.fromJson(obj)).toList());
      });
    }
    on ErrorHandler catch (ex)
    {
      if(ex.message.toString()=="Internet Connection Failure")
      {
        //rdirect to no internet page
      }
      else if(ex.message.toString()=="Bad Response Format")
      {
        //redirect to support page
      }
    }
  }


  RxBool isinsert=false.obs;
  RxString message="".obs;
  insertproduct() async {
    var params =
    {
      "pname":name.text.toString(),
      "qty":quantity.text.toString(),
      "price":price.text.toString(),
    };
    try
    {
      await ApiHandler.postRequest(UrlResources.ADD_PRODUCT,body: params).then((json){
        if(json["status"]=="true")
          {
           message(json["message"].toString());
            isinsert(true);
           Get.to(ViewProductsScreen());
          }
        else
          {
            message(json["message"].toString());
            isinsert(false);
          }
      });
    }
    on ErrorHandler catch (ex)
    {
      if(ex.message.toString()=="Internet Connection Failure")
      {
        //Navigator.of(context)
        //rdirect to no internet page
      }
      else if(ex.message.toString()=="Bad Response Format")
      {
        //redirect to support page
      }
    }
    name.text="";
    quantity.text="";
    price.text="";
  }


  RxBool isdelete=false.obs;
  RxString deletemessage="".obs;
  deleteproduct(context,params) async {

    try
    {
      await ApiHandler.postRequest(UrlResources.DELETE_PRODUCT,body: params).then((json){
        if(json["status"]=="true")
        {
          isdelete(true);
           deletemessage(json["message"].toString());
          getAllProducts();
        }
        else
        {
          isdelete(false);
        }
      });
    }
    on ErrorHandler catch (ex)
    {
      if(ex.message.toString()=="Internet Connection Failure")
      {
        //Navigator.of(context)
        //rdirect to no internet page
      }
      else if(ex.message.toString()=="Bad Response Format")
      {
        //redirect to support page
      }
    }
  }


  Products? singleobj;
  var updateid="".obs;
  getsingledata(params) async {
    try
    {
      await ApiHandler.postRequest(UrlResources.SINGLE_PRODUCT,body: params).then((json){
        if(json["status"]=="true")
        {
          singleobj = Products.fromJson(json["data"]);
          updateid(singleobj!.pid.toString());
          name.text=singleobj!.pname.toString();
          quantity.text=singleobj!.qty.toString();
          price.text=singleobj!.price.toString();
          Get.to(EditProduct());
        }
        else
        {
          isdelete(false);
        }
      });
    }
    on ErrorHandler catch (ex)
    {
      if(ex.message.toString()=="Internet Connection Failure")
      {
        //Navigator.of(context)
        //rdirect to no internet page
      }
      else if(ex.message.toString()=="Bad Response Format")
      {
        //redirect to support page
      }
    }
  }


  updateProduct() async {
    try
    {
      var params =
      {
        "pname":name.text.toString(),
        "qty":quantity.text.toString(),
        "price":price.text.toString(),
        "pid":updateid.toString()
      };
      await ApiHandler.postRequest(UrlResources.UPDATE_PRODUCT,body: params).then((json){
        if(json["status"]=="true")
        {
          getAllProducts();
        }
        else
        {

        }
      });
    }
    on ErrorHandler catch (ex)
    {
      if(ex.message.toString()=="Internet Connection Failure")
      {
        //Navigator.of(context)
        //rdirect to no internet page
      }
      else if(ex.message.toString()=="Bad Response Format")
      {
        //redirect to support page
      }
      else
      {
        //redirect to support page
      }
    }
  }
}