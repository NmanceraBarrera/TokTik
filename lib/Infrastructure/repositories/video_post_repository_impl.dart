import 'package:toktikpp/domain/datasource/video_posts_datasource.dart';
import 'package:toktikpp/domain/entities/video_post.dart';
import 'package:toktikpp/domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImpl implements VideoPostsRepository {
  final VideoPostsDataSource videoDataSource;

  VideoPostRepositoryImpl({required this.videoDataSource});
  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(String userID) {
    // TODO: implement getFavoriteVideoByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoPosts(int page) {
    return videoDataSource.getTrendingVideoPosts(page);
  }
}
