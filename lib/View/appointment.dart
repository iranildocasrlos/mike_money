import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  final colorBar= const Color(0xE3131524);
  TextEditingController _controllerTitulo = TextEditingController();
  TextEditingController _controllerDescricao = TextEditingController();
  TextEditingController _controllerData = TextEditingController();
  TextEditingController _controllerHoraAlarme = TextEditingController();
  TextEditingController _controllerHoraEvento = TextEditingController();
  DateTime dataAtual = DateTime.now();
  TimeOfDay _endTime = TimeOfDay.now();
  TimeOfDay _firstTime = TimeOfDay.now();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBar,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorBar,
        

      ),
      body: Container(
        margin: EdgeInsets.only(left: 8.0, right: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text("Adicionar Compromisso",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic
                  ),
                ),
              ),
              SizedBox(height: 15.0,),

             Row(
               children: [
                 SizedBox(width: 15,),
                 Text("Titulo",
                   style: TextStyle(
                       color: Colors.white,
                       fontSize: 18.0,
                       fontStyle: FontStyle.italic
                   ),
                 ),
               ]
             ),

              //Campo titulo
              TextField(
                keyboardType: TextInputType.name,
                controller: _controllerTitulo,
                decoration: InputDecoration(
                  hintText: "Digite um título",
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3, color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.amberAccent),
                  ),
                ),
              ),

              SizedBox(height: 18.0,),
              Row(
                  children: [
                    SizedBox(width: 15,),
                    Text("Descrição",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontStyle: FontStyle.italic
                      ),
                    ),
                  ]
              ),

              //Campo Descrição
              TextField(
                keyboardType: TextInputType.name,
                controller: _controllerDescricao,
                decoration: InputDecoration(
                  hintText: "Digite uma descrição",
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3, color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.amberAccent),
                  ),
                ),
              ),

              SizedBox(height: 18.0,),
              Row(
                  children: [
                    SizedBox(width: 15,),
                    Text("Data",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontStyle: FontStyle.italic
                      ),
                    ),
                  ]
              ),

              //Campo Data
              TextField(
                readOnly: true,
                controller: _controllerData,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.calendar_month),
                  hintText: DateFormat.yMd().format(dataAtual),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3, color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.amberAccent),
                  ),
                ),

                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context, initialDate: DateTime.now(),
                      firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2121)
                  );

                  if(pickedDate != null){
                     _controllerData.text = DateFormat.yMd().format(pickedDate);
                  }


                },
              ),

              SizedBox(height: 18.0,),

              Row(
                children: [
                  SizedBox(width: 15,),
                  Text("Lembrete",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontStyle: FontStyle.italic
                    ),
                  ),

              SizedBox(width: 130.0,),

                  Text("Horário",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontStyle: FontStyle.italic
                    ),
                  ),

                ],
              ),


         ///Alarme e hora do Evento
              Row(
                children:[
                  Expanded(
                      child: TextField(

                        controller: _controllerHoraAlarme,
                        decoration: InputDecoration(
                          hintText: _endTime.toString(),
                          suffixIcon: Icon(Icons.access_time_rounded),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: Colors.amberAccent),
                          ),
                          // Added this

                        ),
                        onTap: () async{
                                      final TimeOfDay pickedTime =  showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                      ) as TimeOfDay;

                                      if (pickedTime != null && pickedTime != _endTime) {
                                        setState(() {
                                          _firstTime = pickedTime;
                                          _controllerHoraEvento.text = _firstTime.toString();
                                        });
                                      }

                              },//,



                      ),
                  ),

                  SizedBox(width: 12.0,),

                  Expanded(
                    child: TextField(

                      controller: _controllerHoraEvento,
                      decoration: InputDecoration(
                        hintText: "Hora do evento",
                        suffixIcon: Icon(Icons.access_time_rounded),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: Colors.grey
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.amberAccent),
                        ),
                        // Added this

                      ),

                      onTap: () async{
                        final TimeOfDay pickedTime =  showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        ) as TimeOfDay;

                        if (pickedTime != null && pickedTime != _endTime) {
                        setState(() {
                        _endTime = pickedTime;
                        _controllerHoraEvento.text = _endTime.toString();

                        });

                       }
                      },//async
                    ),
                  ),
                ]
              ),



            ],
          ),
        ),
      ),
    );
  }
}
