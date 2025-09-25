import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class LoggerDeneme1 extends StatefulWidget {
  const LoggerDeneme1({super.key, required this.title});

  final String title;

  @override
  State<LoggerDeneme1> createState() => _LoggerDeneme1State();
}

class _LoggerDeneme1State extends State<LoggerDeneme1> {
  int _counter = 0;

  // Logger nesnesi
  final Logger logger = Logger(
    printer: PrettyPrinter(
      methodCount: 1, // stack trace satır sayısı
      colors: true, // konsolda renkli
      printEmojis: true, // emojiler
      dateTimeFormat: DateTimeFormat.onlyTime, // tarih saat formatı
    ),
  );

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    // Logger kullanımı
    logger.d('Butona basıldı, sayaç: $_counter'); // debug mesajı
    logger.i('Bilgi mesajı: $_counter'); // info mesajı
    logger.w('Uyarı mesajı!'); // warning
    logger.e('Hata mesajı!'); // error
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Butona basma sayısı:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'increment_fab',
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: 'debug_fab',
            onPressed: () {
              debugPrint(
                '----------------------------------------------------------------------------------------------',
              );
            },
            tooltip: 'Debug',
            child: const Icon(Icons.arrow_downward),
          ),
        ],
      ),
    );
  }
}
