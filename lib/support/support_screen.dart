import 'package:contact/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/border_radius.dart';


class SupportScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 22.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
       leading: IconButton(onPressed: ()
       {
         Navigator.pop(context);
       },
         icon:Icon(Icons.arrow_back_sharp) ,
         color: Colors.blue,
       ),
       /* leading: CircleAvatar(
          radius: 24.5,
          backgroundImage:AssetImage('images/back.png'),
        ),*/
        title:Text(
        'Contact',
        style: TextStyle(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image:AssetImage('images/support.png'),
                height: 164.0,
                width: 164.0,
              ),
              SizedBox(
                height: 36.0,
              ),
              Text(
                'Please, select the appropriate contact ?',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[666666],
                ),
              ),
              SizedBox(
                height: 61.0,
              ),
              defaultFormField(
                controller: TextEditingController(),
                type: TextInputType.emailAddress,
                lable: 'Full Name',
                borderRadius: BorderRadius.circular(100.0),
                padding: EdgeInsets.only(top:13.0 , left:33.0 ),
              ),
              SizedBox(
                height: 15.0,
              ),
              defaultFormField(
                controller: TextEditingController(),
                type: TextInputType.emailAddress,
                lable: 'Email',
                borderRadius: BorderRadius.circular(100.0),
                padding: EdgeInsets.only(top:13.0 , left:33.0 ),
              ),
              SizedBox(
                height: 15.0,
              ),
              defaultFormField(
                controller: TextEditingController(),
                type: TextInputType.emailAddress,
                lable: 'Subject',
                borderRadius: BorderRadius.circular(100.0),
                padding: EdgeInsets.only(top:13.0 , left:33.0 ),
              ),
              SizedBox(
                height: 15.0,
              ),
              defaultFormField(
                controller: TextEditingController(),
                type: TextInputType.emailAddress,
                lable: 'please, write inquiry details..',
                borderRadius: BorderRadius.circular(13.0),
                padding: EdgeInsets.only(top:13.0 , left:33.0 ,bottom: 93.0 ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
  */