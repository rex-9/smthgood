import 'package:flutter/material.dart';
import 'package:smthgood/components/theme.component.dart';

class MyForm {
  TextFormField numberField(controller, label) => TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        validator: (value) => value!.isEmpty ? 'Enter a number' : null,
        decoration: InputDecoration(
          labelText: label,
        ),
      );

  ElevatedButton submitButton(formKey, controller) => ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            controller.submit();
          }
        },
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(MyTheme().primaryColor),
        ),
        child: const Text(
          'Submit',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      );
}
