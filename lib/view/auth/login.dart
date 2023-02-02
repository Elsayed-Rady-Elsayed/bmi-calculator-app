import 'package:bmi/view/home/home_screen.dart';
import 'package:bmi/view/widgets/buttom.dart';
import 'package:bmi/view/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  String? email;
  String? password;
  bool ispass = true;
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .05,
                    bottom: MediaQuery.of(context).size.height * .02),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Form(
                key: formkey,
                child: Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * .05,
                      left: MediaQuery.of(context).size.width * .05),
                  child: Column(
                    children: [
                      customTextFormFiled(
                          validator: (value) {
                            if (value.isEmpty) return 'enter your email';
                            return null;
                          },
                          text: 'login',
                          onsave: (value) {
                            email = value;
                          },
                          type: TextInputType.emailAddress,
                          prefixicon: Icons.account_box_sharp),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .04,
                      ),
                      customTextFormFiled(
                          validator: (value) {
                            if (value.isEmpty) return 'enter your password';
                            return null;
                          },
                          text: 'password',
                          isPassword: ispass,
                          press: () {
                            setState(() {
                              ispass = !ispass;
                            });
                          },
                          sufix: Icons.visibility,
                          onsave: (value) {
                            password = value;
                          },
                          type: TextInputType.visiblePassword,
                          prefixicon: Icons.account_box_rounded),
                      SizedBox(height: MediaQuery.of(context).size.height*.03,),
                      materialbuttom(

                        press: (){
                          if(formkey.currentState!.validate())
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return home_screen();
                            }));
                        },
                        text: 'LOGIN',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
