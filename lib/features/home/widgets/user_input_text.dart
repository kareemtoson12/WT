import 'package:flutter/material.dart';
import 'package:whispertales/core/styles/styles.dart';

Widget userInputText() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      style: AppTextStyles.font20GoogleFontEWhite,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 70.0),
        border: OutlineInputBorder(),
        hintText: '   Describe your topic...',
      ),
    ),
  );
}
