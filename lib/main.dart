import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_meet_up/providers/app_bar_provider.dart';

import 'providers/index_provider.dart';
import 'screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => IndexProvider()),
        ChangeNotifierProvider(create: (_) => AppBarProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
          fontFamily: "Montserrat",
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const HomeScreen(),
        // home: const OnboardingScreen(),
      ),
    );
  }
}
