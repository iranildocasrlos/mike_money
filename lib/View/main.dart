import 'package:flutter/material.dart';
import 'package:mike_money/ViewModel/app_widget.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(AppWidget()));
}


