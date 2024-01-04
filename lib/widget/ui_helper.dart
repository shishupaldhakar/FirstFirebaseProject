import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController controller;
  IconData? iconsData;
  String text;
  CustomTextField(
      {super.key,
      required this.controller,
      this.iconsData,
      required this.text});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 08),
      child: Container(
        width: width,
        height: 55,
        decoration: BoxDecoration(
            color: const Color(0xffdedede),
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
            controller: controller,
            decoration: InputDecoration(
                hintText: text,
                hintStyle: const TextStyle(color: Color(0xff949191)),
                suffixIcon: Icon(iconsData),
                border: const OutlineInputBorder(borderSide: BorderSide.none))),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  VoidCallback voidCallback;
  String text;
  Color color;
  CustomElevatedButton(
      {super.key,
      required this.voidCallback,
      required this.text,
      required this.color});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: Size(width, 58),
              backgroundColor: color,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          onPressed: voidCallback,
          child: Text(
            text,
            style: const TextStyle(
                color: Color(0xfff2f2f2),
                fontSize: 24,
                fontWeight: FontWeight.w400),
          )),
    );
  }
}

class UiHelper {
  static customLoginContainer(Color color, double radius, double radius1) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(radius),
                topRight: Radius.circular(radius1))));
  }
}
