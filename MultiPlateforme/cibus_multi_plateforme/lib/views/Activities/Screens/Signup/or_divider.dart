import 'package:cibus_multi_plateforme/constants.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin:  EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width *0.8,
      child: Row(children: const <Widget>[
        BuildDivider(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "OR",
            style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w600
            ),
          ),
        ),

        BuildDivider(),
      ],
      ),
    );
  }

}

class BuildDivider extends StatelessWidget {
  const BuildDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(child: Divider(
      color: Color(0xFFD9D9D9),
      height: 1.5,
    ),
    );
  }
}