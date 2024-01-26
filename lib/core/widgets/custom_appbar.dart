import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

AppBar CustomAppBar({required final String text,required BuildContext context}) {
  return AppBar(
    leading:  IconButton(
      onPressed: (){
        Navigator.of(context).pop();
      },
      icon:Icon(Icons.arrow_back_outlined,size: 35),
      color: Colors.black,

    ),
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    title:  Text(
      text,
      style: Styles.textStyle25,
    ),
  );
}