import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import '../widgets/themes.dart';


class MyTableCalendar extends StatefulWidget {
  const MyTableCalendar({Key? key}) : super(key: key);

  @override
  State<MyTableCalendar> createState() => _MyTableCalendarState();
}

class _MyTableCalendarState extends State<MyTableCalendar> {
  DateTime today = DateTime.now();
  List<String> agenda = ["Sem compromissos nesse dia!!"];

 


  //Método para capturar o dia Selecionado
  void _onDaySelected(DateTime day, DateTimefocusDay){
    setState(() {
      today = day;
      getAgenda(today);
    });

  }

  //Responsável por redirecionar para a tela de criação de compromisso
  void _criarAgenda(DateTime day, DateTimefocusDay){
    Navigator.pushNamed(context, "/appointment");
  }


  List<String>  getAgenda(DateTime data){

    //reseta a lista
    agenda.clear();

    //popula a lista
    if(data.day == 18){

      setState(() {
        agenda = [
          "ID da Escala: 5574225 "
              " AISP: 20.BPMM 3.CIA PM\n"
              "Dia Semana: Quinta, Data: 18/05/2023"
              "\n Hora Início: 15:00, Hora Término: 23:00"
        ];
      });

    }
    else if(data.day == 16){

      setState(() {
        agenda = [
          "ID da Escala: 5552590 AISP: 20.BPM/M 3.CIA PM"
              "\nDia Semana: Quinta, Data: 11/05/2023"
              "\nHora Início: 15:00, Hora Término: 23:00"
        ];

      });

    }
    else{
      agenda = ["Nada para hoje!"];
    }


    return agenda;


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
                  titleTextStyle: TextStyle(color: Themes.colorBar, fontSize: 20.0),
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
                  //Formatando nome do mes para maiúsculo e ano
                  titleTextFormatter: (day, locale) =>
                  DateFormat("MMMM yyy", locale)
                      .format(day).toUpperCase(),
                  
                  leftChevronIcon: Icon(
                    Icons.chevron_left,
                    color: Themes.colorBar,
                    size: 28,
                  ),
                  rightChevronIcon: Icon(
                    Icons.chevron_right,
                    color: Themes.colorBar,
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


      //calendarStyle configurações de cores e decorações dos dias e semanas
              calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.green
                ),

                weekendTextStyle: TextStyle(
                  color: Colors.red,

                )
              ),
            ),
          ),
          SizedBox(height: 16.0,),

              Padding(
                padding: EdgeInsets.all(10.0),
                child: Expanded(
                  
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      //side: BorderSide(color: colorBar)
                    ),
                    child: Text("${agenda}"),
                  ),
                ),
              ) ,

        ],
      ),
    );
  }
}
