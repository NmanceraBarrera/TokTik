import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktikpp/config/theme/app.theme.dart';
import 'package:toktikpp/presentation/Providers/discover_provider.dart';
import 'package:toktikpp/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false, create: (_) => DiscoverProvider()..loadNextPage())
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
