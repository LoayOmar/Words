import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:words/shared/styles/colors.dart';

Widget defaultButton({
  double width = double.infinity,
  double elevation = 10,
  Color? background,
  double radius = 20.0,
  double textSize = 16.0,
  required var function,
  required String text,
  Color textColor = Colors.black,
  required BuildContext context,
  LinearGradient? gradient,
}) =>
    Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: gradient,
          color: background,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: MaterialButton(
          onPressed: function,
          child: Text(
            text,
            style: Theme
                .of(context)
                .textTheme
                .bodyText1
                ?.copyWith(
              color: textColor,
              fontSize: textSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );

Widget defaultTextFormField({
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword = false,
  var onSubmit,
  var onTap,
  var onChanged,
  var suffixPressed,
  required var validate,
  String? label,
  String? hint,
  IconData? prefix,
  bool isClickable = true,
  IconData? suffix,
  Color suffixColor = Colors.blue,
}) =>
    TextFormField(
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: defaultColor),
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 20),
        prefixIcon: prefix != null
            ? Icon(
          prefix,
        )
            : null,
        suffixIcon: suffix != null
            ? IconButton(
          icon: Icon(
            suffix,
            color: suffixColor,
          ),
          onPressed: suffixPressed,
        )
            : null,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: defaultColor,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        contentPadding: const EdgeInsets.only(
            left: 15, right: 15, bottom: 20, top: 10),
      ),
      onTap: onTap,
      enabled: isClickable,
      validator: validate,
      onChanged: onChanged,
      keyboardType: type,
      controller: controller,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit,
    );

void navigateTo(context, widget) =>
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => widget,
        ));

void navigateAndFinish(context, widget) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
          (route) => false,
    );

void showToast({
  required String text,
  required ToastStates state,
}) {
  Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: chooseToastColor(state),
      textColor: Colors.white,
      fontSize: 16.0);
}

enum ToastStates { SUCCESS, ERROR, WARNING }

Color chooseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
  }

  return color;
}