import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GoldController extends GetxController {
  var result = 0.0.obs;
  var totalprice = 0.0.obs;
  TextEditingController tolaPriceController = TextEditingController();
  TextEditingController tolaQuantityController = TextEditingController();
  TextEditingController GrameQuantityController = TextEditingController();
  TextEditingController totalrattiQuantityController = TextEditingController();
  TextEditingController totalPointQuantityController = TextEditingController();


  void calculateButton() {
    if (tolaPriceController.text == '') {
      Get.snackbar("title", "Error");
    }
    else {
      if (GrameQuantityController.text == '') {
        GrameQuantityController.text = '0';
      }
      if (totalrattiQuantityController.text == '') {
        totalrattiQuantityController.text = '0';
      }
      if (tolaQuantityController.text == '') {
        tolaQuantityController.text = '0';
      }
      if (totalPointQuantityController.text == '') {
        totalPointQuantityController.text = '0';
      }
      double priceTola = double.parse(tolaPriceController.text);
      double quantityTola = double.parse(tolaQuantityController.text);
      double GrameQuanrity = double.parse(GrameQuantityController.text);
      double rattiQuantity = double.parse(totalrattiQuantityController.text);
      double pointQuantity = double.parse(totalPointQuantityController.text);
      double pricePerpoint = priceTola / 309;
      double totalPointPrice = pricePerpoint * pointQuantity;
      double pricePerGrame = priceTola / 12;
      double totalGramPrice = pricePerGrame * GrameQuanrity;

      double pricePerRatti = priceTola / 96;
      double totalRattiPrice = pricePerRatti * rattiQuantity;

      totalprice.value =
          priceTola * quantityTola + totalGramPrice + totalRattiPrice +
              totalPointPrice;
      result.value = totalprice.value;
    }
  }
  clear(){
    tolaPriceController.clear();
    tolaQuantityController.clear();
    GrameQuantityController.clear();
    totalrattiQuantityController.clear();
    totalPointQuantityController.clear();
    result.value=0;
  }
}