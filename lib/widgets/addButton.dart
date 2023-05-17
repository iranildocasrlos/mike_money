import 'package:flutter/material.dart';


class addButton extends StatelessWidget {

  final colorBar= const Color(0xE3131524);
  final String label;
  final Function()? onTap;


  const addButton({Key? key, required this.label, required this.onTap}) : super(key: key);
 


  @override
  Widget build(BuildContext context) {
    criarAgenda(DateTime day){
      Navigator.pushNamed(context, "/appointment");
    }
    
    return GestureDetector(
      onTap: ()=> criarAgenda(DateTime.now()),
      child: Container(
        margin: EdgeInsets.only(top: 10, right: 8,left: 260),
        width: 100,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:  colorBar
        ),
        child: Center(
          child: Text(label,
          style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
