import 'package:intl/intl.dart';

final dateformat = DateFormat.yMd();

class Model {
  final String titel;
  final String body;
  final DateTime dateTime;
  Model({required this.titel, required this.body, required this.dateTime});

  List<Model> model = [];
}
