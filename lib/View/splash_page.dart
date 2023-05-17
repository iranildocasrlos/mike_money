import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final colorBackground = const Color(0x259E92D3);
  final secundColorBackground = const Color(0x4dBD96CF);

  void initializeSplash()async{
    await Future.delayed(Duration(seconds: 4));
    Navigator.pushReplacementNamed(context, "/home");
  }

  @override
  void initState() {
    initializeSplash();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: colorBackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("images/logo2_mike_money.png"),

            Center(
              child: Image.asset("images/mulhercalendario.jpg"),
            )


          ]
        ),

    );
  }
}

//BE92D3