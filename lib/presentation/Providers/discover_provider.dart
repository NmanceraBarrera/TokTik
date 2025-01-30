import 'package:flutter/material.dart';
import 'package:toktikpp/domain/entities/video_post.dart';
import 'package:toktikpp/domain/repositories/video_post_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostsRepository videosRepository;

  bool initialLoading = true;

  List<VideoPost> videos = [];

  DiscoverProvider({required this.videosRepository});

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    // final List<VideoPost> newVideos = videoPosts
    //     .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
    //     .toList();
    final newVideos = await videosRepository.getTrendingVideoPosts(1);

    videos.addAll(newVideos);
    initialLoading = false;
    //todo: cargar videos

    notifyListeners();
  }
}
