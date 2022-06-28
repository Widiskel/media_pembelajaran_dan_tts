// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    title: "Media Pembelajaran dan Game",
    initialRoute: Routes.LANDING_PAGE,
    getPages: AppPages.routes,
  ));
}