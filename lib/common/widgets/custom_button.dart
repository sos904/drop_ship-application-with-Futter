import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  const CustomButton(
      {Key? key, required this.text, required this.onTap, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50),
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
            color: color == null ? Colors.white : Colors.black,
          ),
        ),
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
          minimumSize: const Size(double.infinity, 50),
          backgroundColor: color == null
              ? const Color.fromARGB(255, 196, 156, 77)
              : const Color.fromARGB(255, 114, 183, 239),
        ),
      ),
    );
  }
}
