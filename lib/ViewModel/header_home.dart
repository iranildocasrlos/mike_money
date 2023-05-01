import 'package:flutter/material.dart';


class HeaderHome extends StatelessWidget {
  const HeaderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[300],
                backgroundImage: AssetImage("images/avatar.png"),
              )
            ],
          )
        ],
      ),
    );
  }
}
