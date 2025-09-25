import 'package:logger/logger.dart';

class LoggerService {
  Logger get logger => _logger;
  final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      lineLength: 80,
      colors: true,
      printEmojis: true,
      dateTimeFormat: DateTimeFormat.onlyTime,
    ),
    level: Level.debug,
  );

  void debug(String message) => _logger.d(message);
  void info(String message) => _logger.i(message);
  void warning(String message) => _logger.w(message);
  void error(String message, [dynamic error]) =>
      _logger.e(message, error: error, stackTrace: StackTrace.current);
}
