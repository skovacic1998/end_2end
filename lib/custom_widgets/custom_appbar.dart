import 'package:flutter/material.dart';

AppBar customAppBar(String text) {
  return AppBar(
    title: Text(
      text,
      style: const TextStyle(
        color: Colors.black,
      ),
    ),
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(99, 255, 99, 1),
      ),
    ),
  );
}
