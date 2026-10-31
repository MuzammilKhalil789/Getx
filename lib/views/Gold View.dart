import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Components/button%20widget.dart';


import '../Components/Text field.dart';
import '../controllers/Gold controller.dart';

class GoldView extends StatelessWidget {
  const GoldView({super.key});

  @override
  Widget build(BuildContext context) {
    GoldController goldController =Get.put(GoldController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("GoldApp",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,
            fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Colors.yellow.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            SizedBox(height: 40,),
            Textformfieldwidget(hintText: "Tola price", controller:
            goldController.tolaPriceController ),
            Textformfieldwidget(hintText: "Tola Quantity",
                controller: goldController.tolaQuantityController),
            Textformfieldwidget(hintText: "Gram Quantity",
                controller:goldController.GrameQuantityController),
            Textformfieldwidget(hintText: "Total ratti",
                controller: goldController.totalrattiQuantityController),
            Textformfieldwidget(hintText: "Total Point",
                controller: goldController.totalPointQuantityController),
        
        
            Card(
                elevation: 4,
                color: Colors.yellowAccent.withOpacity(0.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Obx(()=>Text(
                    'Total Price: ${goldController.result.value.toString()}',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                  ),
                  ),
                )),
        
            SizedBox(height: 70,),
            Buttonwidget(text: "Calculate",ontap: (){
              print("tap");
              goldController.calculateButton();
            },height: 40,
              width: 180,color: Colors.white,
              fontWeight: FontWeight.w600,fontSize: 20,),
            SizedBox(height: 10,),
            Buttonwidget(text: "Clear",ontap: (){
              goldController.clear();
            },height: 40,
              width: 180,color: Colors.white,
              fontWeight: FontWeight.w600,fontSize: 20,),
            SizedBox(height: 10,),
        
          ],
        ),
      ),
    );
  }
}