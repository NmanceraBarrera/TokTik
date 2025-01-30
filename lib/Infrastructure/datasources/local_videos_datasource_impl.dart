import 'package:toktikpp/Infrastructure/models/local_video_model.dart';
import 'package:toktikpp/domain/datasource/video_posts_datasource.dart';
import 'package:toktikpp/domain/entities/video_post.dart';
import 'package:toktikpp/shared/data/local_video_post.dart';

class LocalVideosDatasourceImpl extends VideoPostsDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(String userID) {
    // TODO: implement getFavoriteVideoByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoPosts(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}
