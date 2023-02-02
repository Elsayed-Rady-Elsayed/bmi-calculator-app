import 'package:flutter/material.dart';

Widget customTextFormFiled({
  double width =  double.infinity,
  required String text,
  required var onsave,
  var onChange,
  var onsubmitted,
  bool isPassword = false,
  required TextInputType type,
  TextEditingController? controller,
  required var prefixicon,
  var sufix,
  required var validator,
  var press ,
}){
  return TextFormField(
    validator: validator,
    keyboardType: type,
    onFieldSubmitted: onsubmitted,
    onSaved: onsave,
    obscureText: isPassword,
    maxLines: 1,
    onChanged: onChange,
    controller: controller,
    style: TextStyle(fontSize: 20,color: Colors.black),
    decoration: InputDecoration(
      prefixIcon: Icon(
        prefixicon,
      ),
      isDense: true,
      hintText: text,
      hintStyle: TextStyle(
        color: Colors.black.withOpacity(.5),
        fontSize: 20,
      ),
      suffix: sufix==null?null:GestureDetector(onTap: press,child: Icon(sufix)),
      border: OutlineInputBorder(borderSide: BorderSide()),
      label: Text(text),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
      ),
    ),
  );
}