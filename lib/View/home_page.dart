import 'package:flutter/material.dart';
import 'package:mike_money/ViewModel/tabble_calendar.dart';
import 'package:mike_money/widgets/themes.dart';
import '../ViewModel/area_criar_appointment.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



     criarAgenda(DateTime day){
      Navigator.pushNamed(context, "/appointment");
    }


    return  Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Themes.colorBar,
            floating: true,
            title: Text(
              "Mike Money",
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
         SliverToBoxAdapter(
           child:
               AreaCriarAppointment(
                 label: "+ Adicionar"
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
