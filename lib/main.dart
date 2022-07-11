import 'package:amazon_apps_clone/constants/global_variables.dart';
import 'package:amazon_apps_clone/features/auth/screens/auth_screen.dart';
import 'package:amazon_apps_clone/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Scaffold(
        appBar: AppBar(title: const Text("Hello")),
        body: Column(
          children: [
            const Center(
              child: Text('Flutter Demo Home Page'),
            ),
            Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AuthScreen.routeName);
                  },
                  child: const Text("Click"),
                );
              }
            )
          ],
        ),
      ),
    );
  }
}
