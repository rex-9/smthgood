import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smthgood/components/appbar.components.dart';
import 'package:smthgood/components/form.components.dart';
import 'package:smthgood/controllers/numbers.controller.dart';

class HomeView extends GetView {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NumbersController());
    final formKey = GlobalKey<FormState>();
    final myForm = MyForm();

    return Scaffold(
      appBar: myAppBar(title: "Home Page"),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                myForm.numberField(
                    controller.startNumberController, 'Start Number'),
                myForm.numberField(
                    controller.endNumberController, 'End Number'),
                const SizedBox(height: 16.0),
                myForm.submitButton(formKey, controller)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
