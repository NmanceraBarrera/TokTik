import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktikpp/Infrastructure/datasources/local_videos_datasource_impl.dart';
import 'package:toktikpp/Infrastructure/repositories/video_post_repository_impl.dart';
import 'package:toktikpp/config/theme/app.theme.dart';
import 'package:toktikpp/presentation/Providers/discover_provider.dart';
import 'package:toktikpp/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository =
        VideoPostRepositoryImpl(videoDataSource: LocalVideosDatasourceImpl());
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false,
            create: (_) =>
                DiscoverProvider(videosRepository: videoPostRepository)
                  ..loadNextPage())
      ],
      child: MaterialApp(
        title: 'TokTik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: Scaffold(body: const DiscoverScreen()),
      ),
    );
  }
}
