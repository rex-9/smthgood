import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smthgood/models/number.dart';
import 'package:smthgood/views/numbers.view.dart';

class NumbersController extends GetxController {
  TextEditingController startNumberController = TextEditingController();
  TextEditingController endNumberController = TextEditingController();
  RxList<Number> numbers = <Number>[].obs;

  goToNumbers() => Get.to(() => const NumbersView());

  void submit() {
    final startNumber = int.parse(startNumberController.text);
    final endNumber = int.parse(endNumberController.text);
    populateNumbersArray(startNumber, endNumber);
    goToNumbers();
  }

  List<Number> populateNumbersArray(int start, int end) {
    numbers.clear();
    for (int i = start; i <= end; i++) {
      numbers.add(Number(value: i));
    }

    return numbers;
  }
}
