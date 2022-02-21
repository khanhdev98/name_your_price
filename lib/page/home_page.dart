import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
             const Padding(padding: EdgeInsets.only(top: 40)),
             const Text('price'),
             const Padding(padding: EdgeInsets.only(top: 20)),
             SizedBox(
               width: MediaQuery.of(context).size.width * 0.5,
               child: TextField(
                 keyboardType: TextInputType.number,
                 inputFormatters: [FilteringTextInputFormatter.digitsOnly],
               ),
             ),
             const Padding(padding: EdgeInsets.only(top: 20)),
             ElevatedButton(
               // ignore: avoid_print
               onPressed: () {print('hello');},
               child: const Text('check'),
             )
          ],
        ),
      ),
    );
  }
}