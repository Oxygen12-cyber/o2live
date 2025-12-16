import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:o2live/components/component.dart';
import 'package:o2live/models/models.dart';
import 'package:video_player/video_player.dart';

class ForYouPage extends StatefulWidget {
  const ForYouPage({super.key});

  @override
  State<ForYouPage> createState() => _ForYouPageState();
}

class _ForYouPageState extends State<ForYouPage> {
  final VideoPlayerController videocontroller =
      VideoPlayerController.networkUrl(Uri.parse('assets/videos/mbappe.mp4'));
  late final ChewieController chewieCtrl;

  @override
  void initState() {
    chewieCtrl = ChewieController(
      videoPlayerController: videocontroller,
      // aspectRatio: 20,
    );
    super.initState();
  }

  @override
  void dispose() {
    chewieCtrl.dispose();
    videocontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: double.infinity,
          color: Colors.blue,
          child: Chewie(controller: chewieCtrl),
        ),
      ),
    );
  }
}
