import 'package:flutter_getit/product/service/logger_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  getIt.registerLazySingleton<LoggerService>(() => LoggerService());
}
