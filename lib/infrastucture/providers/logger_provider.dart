import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

final loggerProvider = Provider<Logger>((ref) => Logger(
      printer: PrettyPrinter(
        lineLength: 80,
        printTime: true,
        methodCount: 3,
      ),
    ));
