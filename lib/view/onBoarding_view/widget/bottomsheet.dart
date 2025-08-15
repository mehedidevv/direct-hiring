
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../res/appImages/App_images.dart';
import '../../../res/commonWidget/customText.dart';
import 'customContainer_bottomSheet.dart';

class OnboardingBottomSheet extends StatelessWidget {
  const OnboardingBottomSheet({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(0, -3),
          )
        ],
      ),
      child: SingleChildScrollView(
        controller: scrollController,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// Drag handle
            Container(
              width: 50,
              height: 4,
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(4),
              ),
            ),

            /// Content
             CustomText(
              title: 'Announcement',
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0XFF545454),
            ),

            const Divider(),
            const SizedBox(height: 20),

            /// InfoCard 1
            InfoCard(
              imagePath: AppImages.bottomSheetImg1,
              title: 'Hire with Direct hiring',
              subtitle1: '- You will complete the',
              subtitle2: 'hiring process through Direct hiring for any helper',
            ),

            const SizedBox(height: 10),

            /// Video Section with text
            Container(
              height: 260,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF000000).withOpacity(0.15),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  /// Video Player
                  Expanded(
                    child: VideoPlayerWidget(videoPath: 'assets/videos/video.mp4'),
                  ),

                  /// Text Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: CustomText(
                                title: 'Hire with Direct hiring',
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF33A954),
                              ),
                            ),
                            Expanded(
                              child: CustomText(
                                title: '- You will complete the',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF767676),
                                letterSpacing: 0.2,
                              ),
                            ),
                          ],
                        ),
                        CustomText(
                          title: 'hiring process through Direct hiring for any helper',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF767676),
                          letterSpacing: 0.2,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 10),

            /// InfoCard 2
            InfoCard(
              imagePath: AppImages.bottomSheetImg2,
              title: 'Hire with Direct hiring',
              subtitle1: '- You will complete the',
              subtitle2: 'hiring process through Direct hiring for any helper',
            ),

            const SizedBox(height: 10),

            /// InfoCard 3
            InfoCard(
              imagePath: AppImages.bottomSheetImg3,
              title: 'Hire with Direct hiring',
              subtitle1: '- You will complete the',
              subtitle2: 'hiring process through Direct hiring for any helper',
            ),

            const SizedBox(height: 10),

            /// InfoCard 4
            InfoCard(
              imagePath: AppImages.bottomSheetImg4,
              title: 'Hire with Direct hiring',
              subtitle1: '- You will complete the',
              subtitle2: 'hiring process through Direct hiring for any helper',
            ),
          ],
        ),
      ),
    );
  }
}


//Class For Video Player
class VideoPlayerWidget extends StatefulWidget {
  final String videoPath;

  const VideoPlayerWidget({super.key, required this.videoPath});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _videoController;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (_videoController.value.isPlaying) {
        _videoController.pause();
        _isPlaying = false;
      } else {
        _videoController.play();
        _isPlaying = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AspectRatio(
          aspectRatio: _videoController.value.aspectRatio,
          child: VideoPlayer(_videoController),
        ),
        Positioned(
          child: IconButton(
            iconSize: 48,
            icon: Icon(
              _isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill,
              color: Colors.white.withOpacity(0.9),
            ),
            onPressed: _togglePlayPause,
          ),
        ),
      ],
    );
  }
}
