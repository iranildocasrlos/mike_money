import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class MyTableCalendar extends StatefulWidget {
  const MyTableCalendar({Key? key}) : super(key: key);

  @override
  State<MyTableCalendar> createState() => _MyTableCalendarState();
}

class _MyTableCalendarState extends State<MyTableCalendar> {
  DateTime today = DateTime.now();
  final colorBar= const Color(0xE3131524);

 


  //Método para capturar o dia Selecionado
  void _onDaySelected(DateTime day, DateTimefocusDay){
    setState(() {
      today = day;
    });

  }

  void _criarAgenda(DateTime day, DateTimefocusDay){
    Navigator.pushNamed(context, "/appointment");
  }




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [

          Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
                //side: BorderSide(color: colorBar)
            ),

            child: TableCalendar(
              locale: "pt_BR",
                rowHeight: 43,
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: TextStyle(color: colorBar, fontSize: 20.0),
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    )
                  ),
                  formatButtonDecoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    
                  ),

                  leftChevronIcon: Icon(
                    Icons.chevron_left,
                    color: colorBar,
                    size: 28,
                  ),
                  rightChevronIcon: Icon(
                    Icons.chevron_right,
                    color: colorBar,
                    size: 28,
                  ),

                ),
                weekendDays: [
                  DateTime.monday,6
                ] ,
                startingDayOfWeek: StartingDayOfWeek.monday,
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, today),
                focusedDay: today,
                firstDay: DateTime.utc(2023,01,01),
                lastDay: DateTime.utc(2030,3,10),
              onDaySelected: _onDaySelected ,
              onDayLongPressed: _criarAgenda,

              //Eventos

            ),
          )
        ],
      ),
    );
  }
}
