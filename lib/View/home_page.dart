import 'package:flutter/material.dart';
import 'package:mike_money/ViewModel/tabble_calendar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backgroundHome = const Color(0x211B34F2);
    final colorBar= const Color(0xE3131524);
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
           child: Container(
             child: MyTableCalendar(),
           ),
         )
        ],
      ),

    );
  }
}
