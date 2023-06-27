import 'dart:ffi';

import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category(this.icon, this.text, this.width, {super.key});
  final Icon icon;
  final String text;
  final double width;

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  Color textcolor = Color.fromARGB(255, 98, 96, 96);
  Color boxcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(20),
      //   border: Border.all(),
      // ),
      padding: const EdgeInsets.all(2),
      // height: 100,
      width: widget.width,
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            textcolor = Colors.white;
            boxcolor = Colors.blue;
          });
        },
        style: OutlinedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            foregroundColor: textcolor,
            backgroundColor: boxcolor),
        child: Container(
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.icon,
                const SizedBox(
                  height: 12,
                ),
                Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
