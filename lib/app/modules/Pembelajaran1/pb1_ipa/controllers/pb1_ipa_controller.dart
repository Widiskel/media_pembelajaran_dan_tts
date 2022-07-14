import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class Pb1IpaController extends GetxController {
  VideoPlayerController videoPlayerController;
  ChewieController chewieController;

  @override
  void onInit() {
    super.onInit();
    initializePlayer();
  }

  Future<void> initializePlayer() async {
    final videoPlayerController =
        VideoPlayerController.asset("assets/video/pbv1.mp4");
    await Future.wait([videoPlayerController.initialize()]);
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 1,
      autoInitialize: true,
      looping: true,
      allowFullScreen: true,
      deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp],
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    chewieController.dispose();

    print("DISSSPOOOSEEEE");
    super.onClose();
  }
}
