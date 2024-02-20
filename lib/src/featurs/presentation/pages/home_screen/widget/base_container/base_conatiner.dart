import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final EdgeInsets margin;
  final EdgeInsets padding ;
  const BaseContainer(
      {super.key,
      required this.child,
      required this.width,
      required this.margin,
       this.padding=const  EdgeInsets.only(left: 12)
      });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // TODO: implement build
    return Container(
      width: width,
      padding: padding,
      margin: margin, //
      decoration: BoxDecoration(
          color: theme.cardColor, borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
