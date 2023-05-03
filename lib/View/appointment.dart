import 'package:flutter/material.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  final colorBar= const Color(0xE3131524);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBar,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorBar,
        title: Text("Agendamentos")

      ),
      body: Container(),
    );
  }
}
