import 'package:flutter/material.dart';

void main()
{
  runApp(const MaterialApp(
    home: head(),
    debugShowCheckedModeBanner: false,
  ));
}
class head extends StatefulWidget {
  const head({Key? key}) : super(key: key);

  @override
  State<head> createState() => _headState();
}

class _headState extends State<head> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.yellow[100],
      child: Column(
        children: [
          SizedBox(height: 160),
          Image.asset("assets/images/final.png"),
        ],
      ),
    );
  }
}
