import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';

Container container({required index}) {
  return Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    height: 100,
    width: double.infinity,
    decoration: BoxDecoration(
      color: (index % 2 == 0) ? const Color(0xFF75e2ff) : const Color(
          0Xff5689c0),
      borderRadius: BorderRadius.circular(10),
    ),

    child: Text(
      '$index', style: const TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold,
    ),
    ),

  );
}