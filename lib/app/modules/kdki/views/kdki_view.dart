import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kdki_controller.dart';

class KdkiView extends GetView<KdkiController> {
  const KdkiView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KdkiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'KdkiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
