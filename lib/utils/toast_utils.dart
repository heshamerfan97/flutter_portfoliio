import 'package:fluttertoast/fluttertoast.dart';

class ToastUtils {
  static showToast(String msg, {ToastGravity? gravity, Toast? toastLength}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: toastLength ?? Toast.LENGTH_SHORT,
        gravity: gravity ?? ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        //backgroundColor: Colors.grey[300],
        //textColor: const Color(0xFF643FDB),
        fontSize: 16.0);
  }

  static hideToast() => Fluttertoast.cancel();
}


