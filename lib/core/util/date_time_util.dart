import 'package:intl/intl.dart';

extension DateTimeUtil on DateTime? {
  String simpleFormat() {
    if (this != null) {
      return DateFormat('dd MMM yy').format(
        this ?? DateTime.now(),
      );
    }
    return '';
  }
}
