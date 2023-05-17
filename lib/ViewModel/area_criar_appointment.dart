import 'package:flutter/material.dart';
import 'package:mike_money/widgets/addButton.dart';


class AreaCriarAppointment extends StatelessWidget {
  final String label;
 // final Function()? onTap;
  const AreaCriarAppointment({Key? key, required this.label}) : super(key: key);




  @override
  Widget build(BuildContext context) {

    criarAgenda(DateTime day){
      Navigator.pushNamed(context, "/appointment");
    }


    return Container(
      child: Row(
          children:[
            Text("oi"),
            addButton(label: label, onTap: (){},)

          ]
      ),
    );
  }
}
