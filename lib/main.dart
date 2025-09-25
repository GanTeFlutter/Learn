import 'package:flutter/material.dart';
import 'package:flutter_getit/feature/screens/screen_1.dart';
import 'package:flutter_getit/feature/screens/screen_2.dart';
import 'package:flutter_getit/product/service/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Logger Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const NavigateScreen(),
    );
  }
}

class NavigateScreen extends StatelessWidget {
  const NavigateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const LoggerDeneme1(title: 'Screen 1'),
                  ),
                );
              },
              child: Text('Screen 1'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoggerDeneme2(),
                  ),
                );
              },
              child: Text('Screen 2'),
            ),
          ],
        ),
      ),
    );
  }
}
