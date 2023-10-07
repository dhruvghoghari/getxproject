import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/controller/ProductController.dart';
import '../../widgets/MyProductItem.dart';

class ViewProductsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ProductController obj = Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(
        title: Text("ViewProducts Screen"),
      ),
      body: Obx(()=>(obj.alldata==null)?Center(child: CircularProgressIndicator(),):
      ListView.builder(
        itemCount: obj.alldata!.length,
        itemBuilder: (context,index)
        {
          return MyProductItem(
              item:obj.alldata![index],
            onTapEdit: () async{
              var pid = obj.alldata![index].pid.toString();
              var params = {
                "pid":pid
              };
                await obj.getsingledata(params);
            },
            onTap: () async{
                var pid = obj.alldata![index].pid.toString();
                var params = {
                  "pid":pid
                };
                await obj.deleteproduct(context,params);

                if(obj.isdelete==true)
                  {
                    var snackbar = SnackBar(content: Text(obj.deletemessage.toString()));
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  }
                else
                  {
                    var snackbar = SnackBar(content: Text(obj.deletemessage.toString()));
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  }
            },
          );
        },
      )
      ),
    );
  }
}
