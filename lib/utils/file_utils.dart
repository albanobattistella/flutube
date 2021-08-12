import 'dart:io';
import 'package:path_provider/path_provider.dart';

class FileUtils {
  static Future<String> appPath() async {
    return Platform.isAndroid
        ? "/storage/emulated/0/FluTube"
        : "/" +
            (await getApplicationDocumentsDirectory())
                .toString()
                .split('/')
                .toList()
                .sublist(1, 3)
                .join("/") +
            "/FluTube/";
  }
}
