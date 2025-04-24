import 'package:flutter/material.dart';
import 'package:quuuu/classquiz.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body:Screen(),
      )
    );

  }
}

class Screen extends StatefulWidget {

  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  // List demo=[1,2,3,4];
  int no=0;

   List<Icon> ans=[
    

   ];
 

  List<Question> questionlist=[
    Question(q: 'elephant is mammal', a: false),
     Question(q: 'fish live on land', a: false),
 Question(q: 'frogs are cheaters', a: true),
  Question(q: 'cockrach are good', a: false),
   Question(q: 'sachin is a batter', a: true)

  ];

 

  
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
         
        children: [
         Expanded(
          flex:5,
           child: Padding(
             padding: const EdgeInsets.fromLTRB(8, 300, 8, 100),
             child: Text(questionlist[no].qt,
             textAlign: TextAlign.center,
             style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              ),),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
            children: ans,
           ),
         ),
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextButton(
              style: TextButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              ),
              ),
              onPressed:(){
                bool correct=questionlist[no].as;
                if(correct==true)
                {
                  print("correct");
                }
                else
                {
                print("wrong");
                }
                
             setState(() {
               no=no+1;
               ans.add(Icon(Icons.check,color: Colors.green));


             });
             }, 
             child: Text('my',style: TextStyle(
              color: Colors.white,
              fontSize: 15,
             ),),),
           ),
         ) ,
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                   shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              ),
             
              ),
              onPressed: (){
                  bool correct=questionlist[no].as;
                if(correct==false)
                {
                  print("correct");
                }
                else
                {
                print("wrong");
                }
                
             setState(() {
               no=no+1;
               ans.add(Icon(Icons.close,color: Colors.red));
             });
             },
             child: Text('false',style: TextStyle(
              color: Colors.white,
              fontSize: 15,
             ),),
             ),
           ),
         ),
        ],
      ),
    );
  }
}