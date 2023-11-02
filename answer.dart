import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz_end_design.dart';

class answer extends StatefulWidget {
  const answer({super.key});

  @override
  State<answer> createState() => _answerState();
}

class _answerState extends State<answer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey4,

      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [

                  Center(child: Text("Answer",style: TextStyle(fontSize: 50))),
                  Divider(thickness: 5,color: CupertinoColors.activeGreen),

                  Center(
                    child: Container(
                      child: Text("nothigndfahdfhakdhf", style: TextStyle(fontSize: 20),textAlign: TextAlign.center),
                    ),
                  ),


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
                                    MaterialPageRoute(builder: (context) => end())
                                );
                              },
                              child: Text("Back",style: TextStyle(fontSize: 40)))
                      )
                    ],
                  ),

                  SizedBox(height: 10)

                ],

              ),
            ),
          ),
        ),
      ),

    );
  }
}

