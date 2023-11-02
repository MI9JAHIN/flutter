import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'quiz_design.dart';
import 'calculator.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey4,

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(

              children: [

                //Expanded(child: Image(image: AssetImage('image/App.png'))),

                Expanded(
                  child: Container(
                    child: Text("WELCOME",style: TextStyle(fontSize: 40)),
                  ),
                ),


                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll<Color>(CupertinoColors.activeOrange)
                            ),
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => calculator())
                              );
                            },
                            child: Text("Start Calculator",style: TextStyle(fontSize: 40)))
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll<Color>(CupertinoColors.activeGreen)
                            ),
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => q1())
                              );
                            },
                            child: Text("Start Quiz",style: TextStyle(fontSize: 40)))
                    )
                  ],
                ),

                SizedBox(height: 10)

              ],


            ),
          ),
        ),
      ),

    );
  }
}