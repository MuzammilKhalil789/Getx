import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/counter_model.dart';


class CounterController extends GetxController {

  final Rx<CounterModel> _counterModel = CounterModel(count: 0).obs;


  int get count => _counterModel.value.count;
  DateTime get lastUpdated => _counterModel.value.lastUpdated;


  void increment() {
    _counterModel.update((model) {
      if (model != null) {
        model.count++;
        model.lastUpdated = DateTime.now();
      }
    });
  }


  void decrement() {
    if (_counterModel.value.count > 0) {
      _counterModel.update((model) {
        if (model != null) {
          model.count--;
          model.lastUpdated = DateTime.now();
        }
      });
    } else {
      Get.snackbar(
        'Warning',
        'Counter 0 se kam nahi ho sakta!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.orange.shade100,
        colorText: Colors.black,
        margin: const EdgeInsets.all(12),
        duration: const Duration(seconds: 2),
      );
    }
  }


  void reset() {
    _counterModel.update((model) {
      if (model != null) {
        model.count = 0;
        model.lastUpdated = DateTime.now();
      }
    });

    Get.snackbar(
      'Reset',
      'Counter dubara 0 par refresh ho gaya!',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green.shade100,
      colorText: Colors.black,
      margin: const EdgeInsets.all(12),
      duration: const Duration(seconds: 2),
    );
  }
}