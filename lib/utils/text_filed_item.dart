import 'package:e_commerce_app/MyTheme.dart';
import 'package:flutter/material.dart';


class TextFiled_Item extends StatelessWidget{
  String hintText;
  var KeybordType;
   Widget? suffixIcon;
  bool isPassword;
  TextEditingController controller;
  String?Function(String?) myValidator;

  TextFiled_Item({required this.hintText,this.KeybordType=TextInputType.text
    ,this.isPassword=false,required this.controller,required this.myValidator,this.suffixIcon});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child:   TextFormField(
        decoration: InputDecoration(
          fillColor: MyTheme.WhiteColor,
          filled: true,
          hintText: hintText,
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color:MyTheme.WhiteColor,width: 4)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color:MyTheme.WhiteColor,width: 4)),
          suffixIcon: suffixIcon
        ),
        keyboardType: KeybordType,
        obscureText: isPassword,
        controller: controller,
        validator: myValidator,
      ),
    );
  }
}