// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tts_controller.dart';

class TtsView extends GetView<TtsController> {
  const TtsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TtsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TtsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
