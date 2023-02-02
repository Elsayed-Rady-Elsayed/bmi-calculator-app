import 'package:bmi/controller/first_expand.dart';
import 'package:bmi/controller/second_expand.dart';
import 'package:bmi/controller/third_controllller.dart';
import 'package:flutter/material.dart';

import 'result_scren.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  second_expand second = second_expand();
  third_expand third = third_expand();
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI calculator",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        first_expand.change_gender();
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: first_expand.gender?Colors.blue:Colors.grey.shade500),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/male-gender-sign.png",color: Colors.white,
                            width: mq.width * .3,
                          ),
                          SizedBox(height: mq.height*.01,),
                          Text(
                            "Male",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500,color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )),
                  SizedBox(
                    width: mq.width * .04,
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        first_expand.change_gender();
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color:first_expand.gender?Colors.grey.shade500:Colors.blue),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/female-gender-sign-pngrepo-com.png",color: Colors.white,
                            width: mq.width * .3,
                          ),
                          SizedBox(height: mq.height*.01,),
                          Text(
                            "Female",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500,color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            )),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: mq.width * .035),
              child: Container(
                width: mq.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 30),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("${second.height.round()}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),),
                        Text("CM",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white),),
                      ],
                    ),
                 Slider(value: second.height,
                   max: 250,
                   min: 50,
                   onChanged: (value){
                   setState(() {
                     second.height=value;
                   });
                   },
                   thumbColor: Colors.white,
                   activeColor: Colors.white,
                   inactiveColor: Colors.white.withOpacity(.5),),
                  ],
                ),
              ),
            )),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: mq.height*.02,top: mq.height*.02,left: mq.width*.04,right: mq.width*.04),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey.shade500),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "AGE",
                                    style: TextStyle(
                                        fontSize: 30, fontWeight: FontWeight.w600,color: Colors.white),
                                  ),
                                  Text(
                                    "${third.age}",
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        heroTag: 'a+',
                                        onPressed: (){
                                        setState(() {
                                          third.incrementage();
                                        });
                                      },child: Icon(Icons.add),mini: true,),
                                      FloatingActionButton(onPressed: (){
                                        setState(() {
                                          third.decrementage();
                                        });
                                      },
                                          heroTag: 'a-',
                                          child: Icon(Icons.arrow_right_alt_rounded),mini: true,)

                                    ],
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          width: mq.width * .04,
                        ),
                        Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey.shade500),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Weight",
                                    style: TextStyle(
                                        fontSize: 30, fontWeight: FontWeight.w600,color: Colors.white),
                                  ),
                                  Text(
                                    "${third.weight}",
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        heroTag: 'w+',
                                        onPressed: (){
                                        setState(() {
                                          third.incrementwight();
                                        });
                                      },child: Icon(Icons.add),mini: true,),
                                      FloatingActionButton(
                                        heroTag: 'w-',
                                        onPressed: (){
                                        setState(() {
                                          third.decrementweight();
                                        });
                                      },child: Icon(Icons.arrow_right_alt_rounded),mini: true,)

                                    ],
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
            ),
                )),
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return result_screen(
                    height: second.height.toInt(),
                    age: third.age,
                    gender: first_expand.gender,
                    weight: third.weight,
                  );
                }));
              },
              child: Text("calculate",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
              height: 50,
              color: Colors.blue,
              minWidth: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
