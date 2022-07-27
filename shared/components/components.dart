import 'package:contact/support/support_screen.dart';
import 'package:flutter/material.dart';

Widget defaultButton(
{
  double width = double.infinity,
  double height = 71.2,
  required BorderRadius borderRadius,
  Color background = Colors.white,
  required AssetImage image,
  required String text ,
  required VoidCallback? function,

}) => Container(
  decoration: BoxDecoration(
    borderRadius: borderRadius,
    color: background,
    boxShadow: [
      BoxShadow(
        color: Color(0xffe6eae4),
        blurRadius: 35.0,
        offset: Offset(0, 5), // Shadow position
      ),
    ],
  ),
  child: Padding(
    padding: const EdgeInsets.all(14.0),
    child: Row(
      children: [
        Image(
          image: image,
          width: 54.0,
          height: 54.0,
        ),
        SizedBox(
          width: 74.5,
        ),
        MaterialButton(
            onPressed: function,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

      ],
    ),
  ),
);

Widget defaultFormField(
{
  required TextEditingController controller,
  required TextInputType type,
  required String lable,
  required BorderRadius borderRadius,
  required EdgeInsets padding,

}) => TextFormField(
controller: controller,
keyboardType: type,
onFieldSubmitted: (String value)
{
  print(value);
},
decoration: InputDecoration(
contentPadding:padding,
labelText: lable,
labelStyle: TextStyle(
fontSize: 16.0,
fontWeight: FontWeight.bold,
color: Colors.black.withOpacity(0.5),
),
border: OutlineInputBorder(
borderRadius:borderRadius,
),

),
);