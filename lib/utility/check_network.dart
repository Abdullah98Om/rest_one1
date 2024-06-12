
import 'dart:io';

Future<bool> testInternet() async {
  try {
    final List<InternetAddress> result =
        await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      print('connected');
      return true;
    }
  } on SocketException catch (_) {
    print('not connected');

    return false;
  }
}