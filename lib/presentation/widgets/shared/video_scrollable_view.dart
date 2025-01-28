import 'package:flutter/material.dart';
import 'package:toktikpp/domain/entities/video_post.dart';
import 'package:toktikpp/presentation/widgets/shared/video_buttons.dart';
import 'package:toktikpp/presentation/widgets/video/full_screen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final VideoPost videoPost = videos[index];

          return Stack(
            children: [
              SizedBox.expand(
                child: FullScreenPlayer(
                  videoUrl: videoPost.videoUrl,
                  caption: videoPost.caption,
                ),
              ),
              //Video Player + gradient

              // Botones
              Positioned(
                  bottom: 40, right: 20, child: VideoButtons(video: videoPost))
            ],
          );
        });
  }
}
