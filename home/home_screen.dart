import 'package:contact/shared/components/components.dart';
import 'package:contact/support/support_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 24.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(onPressed: ()
        {
          Navigator.pop(context);
        },
          icon: CircleAvatar(
            radius: 24.5,
            backgroundImage:AssetImage('images/back.png'),
          ),
        ),
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
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff2675E2),
                    Color(0xff133B71),
                  ],
                ),
            ),
              height: 210.0,
              width: double.infinity,
              child: Image(
                image:AssetImage('images/header.png'),
                height: 164.0,
                width: 164.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Please, select the appropriate contact ?',
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0xff666666),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            defaultButton(
              function:()
              {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> SupportScreen(),
                    ),
                );
              },
              borderRadius: BorderRadius.circular(12.0),
              image: AssetImage('images/support.png'),
              text: 'Support',
            ),
            SizedBox(
              height: 19.8,
            ),
            defaultButton(
              function:(){},
              borderRadius: BorderRadius.circular(12.0),
              image: AssetImage('images/complaint.png'),
              text: 'Complaint',
            ),
            SizedBox(
              height: 19.8,
            ),
            defaultButton(
              function:(){},
              borderRadius: BorderRadius.circular(12.0),
              image: AssetImage('images/suggestion.png'),
              text: 'Suggestion',
            ),
            SizedBox(
              height: 19.8,
            ),
            defaultButton(
              function:(){},
              borderRadius: BorderRadius.circular(12.0),
              image: AssetImage('images/join us.png'),
              text: 'Join us',
            ),
          ],
        ),
      ),
    );
  }
}
/**/