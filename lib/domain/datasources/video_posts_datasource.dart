import 'package:toktikpp/domain/entities/video_post.dart';

abstract class VideoPostsDataSource {
  Future<List<VideoPost>> getTrendingVideoPosts(int page);
  Future<List<VideoPost>> getFavoriteVideoByUser(String userID);
}
