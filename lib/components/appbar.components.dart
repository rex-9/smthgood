import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smthgood/components/theme.components.dart';

AppBar myAppBar({title, hasBack = false}) => AppBar(
      backgroundColor: MyTheme().primaryColor,
      leading: hasBack
          ? IconButton(
              icon: const Icon(
                Icons.chevron_left_rounded,
                size: 30,
              ),
              onPressed: () => Get.back(),
            )
          : null,
      title: SizedBox(
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      actions: hasBack ? const [SizedBox(width: 30)] : null,
    );
