import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_meet_up/providers/app_bar_provider.dart';
import 'package:social_meet_up/providers/guest_count_provider.dart';
import 'package:social_meet_up/providers/joining_event_provider.dart';
import 'package:social_meet_up/screens/event_screen/event_screen.dart';
import 'package:social_meet_up/screens/messaging_screen/messaging_screen.dart';
import 'package:social_meet_up/screens/notification_screen/notification_screen.dart';
import 'providers/index_provider.dart';

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
        ChangeNotifierProvider(create: (_) => GuestCounterProvider()),
        ChangeNotifierProvider(create: (_) => JoiningEventProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
          fontFamily: "Montserrat",
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const Scaffold(
          body: EventScreen(),
        ),
        // home: const OnboardingScreen(),
      ),
    );
  }
}
