import 'package:toktikpp/domain/entities/video_post.dart';

abstract class VideoPostsRepository {
  Future<List<VideoPost>> getTrendingVideoPosts(int page);
  Future<List<VideoPost>> getFavoriteVideoByUser(String userID);
}
