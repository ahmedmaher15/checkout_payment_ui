import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({
    super.key,this.left=0,this.right=0
  });
  final double left;
  final double right;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: MediaQuery.sizeOf(context).height * .2,
        left:left==0?null: left,
        right:right==0?null: right,
        child: const CircleAvatar(
          backgroundColor: Colors.white,
        ));
  }
}
