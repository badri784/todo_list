import 'package:intl/intl.dart';

final DateFormat formateddate = DateFormat.yMd();

class Model {
  final String titel;
  final String body;
  final DateTime date;
  late bool iscompleate;
  Model({
    required this.iscompleate,
    required this.titel,
    required this.body,
    required this.date,
  });

  String get formattedDate {
    return formateddate.format(date);
  }
}

List<Model> model = [];
