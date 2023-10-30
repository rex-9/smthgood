import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smthgood/components/appbar.component.dart';
import 'package:smthgood/controllers/numbers.controller.dart';

class NumbersView extends GetView {
  const NumbersView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NumbersController());

    return Scaffold(
      appBar: myAppBar(title: "Numbers Page", hasBack: true),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 25),
        child: Center(
          child: controller.numbers.isNotEmpty
              ? GridView.builder(
                  itemCount: controller.numbers.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5, // Number of columns
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Center(
                        child: Text('${controller.numbers[index].value}'),
                      ),
                    );
                  },
                )
              : const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Please enter a smaller startNumber than an endNumber',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
