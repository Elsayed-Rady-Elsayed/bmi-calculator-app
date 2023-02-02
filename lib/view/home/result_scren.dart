import 'package:flutter/material.dart';
class result_screen extends StatefulWidget {
  var gender = false;
  int? age =20 ;
  int? weight = 50;
  int? height = 120;

  result_screen({required this.gender,required this.age,required this.weight,required this.height});
  @override
  _result_screenState createState() => _result_screenState();
}

class _result_screenState extends State<result_screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height*.4,
          width: MediaQuery.of(context).size.width*.8,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Text(widget.gender?"Gender : male":"Gender : female",style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 30),),
              Text("age : ${widget.age}",style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 30),),
              Text("height : ${widget.height}",style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 30),),
              Text("weight : ${widget.weight}",style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 30),),
            ],
          ),
        ),
      ),
    );
  }
}
