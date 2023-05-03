import 'package:flutter/material.dart';
import 'package:mike_money/ViewModel/tabble_calendar.dart';

import '../ViewModel/area_adicionar_appointment.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final colorBar= const Color(0xE3131524);

     criarAgenda(DateTime day){
      Navigator.pushNamed(context, "/appointment");
    }


    return  Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: colorBar,
            floating: true,
            title: Text(
              "Mike Money",
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
         SliverToBoxAdapter(
           child: AreaCriarAppointment(
             label: "+ Adicionar",
             onTap: null,
           ),
         ),

         SliverToBoxAdapter(
           child: Column(
             children: [
               Container(
                 child: MyTableCalendar(),
               ),
             ]
           ),
         )
        ],
      ),

    );
  }
}
