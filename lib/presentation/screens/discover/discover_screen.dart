import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktikpp/presentation/Providers/discover_provider.dart';
import 'package:toktikpp/presentation/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    // final otroProvider = Provider.of<DiscoverProvider>(context);
    return Scaffold(
        body: discoverProvider.initialLoading
            ? const Center(
                child: CircularProgressIndicator(
                strokeWidth: 2,
              ))
            : VideoScrollableView(videos: discoverProvider.videos));
  }
}
