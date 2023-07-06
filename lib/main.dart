import 'package:flutter/material.dart';
import 'package:mero_dokan/features/dashboard/dashboard.dart';
import 'features/home/home.dart';
// import 'features/onboard/onboard.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/home": (context) => const HomePage(),
        "/": (context) => const Dashboard()
      },
    );
    // home: Navigator.pushNamed(context, "/dashboard"));
  }
}
