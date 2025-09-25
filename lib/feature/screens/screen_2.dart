import 'package:flutter/material.dart';
import 'package:flutter_getit/product/service/logger_service.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

class LoggerDeneme2 extends StatefulWidget {
  const LoggerDeneme2({super.key});

  @override
  State<LoggerDeneme2> createState() => _LoggerDeneme2State();
}

class _LoggerDeneme2State extends State<LoggerDeneme2> {
  late final Logger logger;

  @override
  void initState() {
    super.initState();
    logger = GetIt.instance<LoggerService>().logger;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LoggerDeneme2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {
                logger.d('LoggerDeneme2 - ElevatedButton 1');
              },
              child: Text('logger.d'),
            ),
            ElevatedButton(
              onPressed: () {
                logger.i('LoggerDeneme2 - ElevatedButton 2');
              },
              child: Text('logger.i'),
            ),
            ElevatedButton(
              onPressed: () {
                logger.w('LoggerDeneme2 - ElevatedButton 3');
              },
              child: Text('logger.w'),
            ),

            ElevatedButton(
              onPressed: () {
                logger.e('LoggerDeneme2 - ElevatedButton 4');
              },
              child: Text('logger.e'),
            ),
          ],
        ),
      ),
    );
  }
}
