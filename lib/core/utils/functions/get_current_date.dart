import 'package:intl/intl.dart';

String getCurrentDate() {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('EEEE, dd MMMM');
  final String formattedDate = formatter.format(now);
  return formattedDate;
}
