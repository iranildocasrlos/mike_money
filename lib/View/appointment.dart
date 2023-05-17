import 'package:flutter/material.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  final colorBar= const Color(0xE3131524);
  TextEditingController _controllerTitulo = TextEditingController();
  TextEditingController _controllerDescricao = TextEditingController();

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
                    borderRadius: BorderRadius.circular(20),
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

              //Campo titulo
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.amberAccent),
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
