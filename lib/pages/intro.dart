import 'package:ebook_online_book_reading_app/pages/homepage.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [

        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(0xffff97a4),
            image: DecorationImage(
                image: AssetImage("assets/Bitmap.png"),
              fit: BoxFit.fill
            ),
          ),


          child: Column(
            children: [

              /// BookClub Logo
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.3),
                    child: Image(
                        image: AssetImage("assets/book_logo.png"),
                      width: MediaQuery.of(context).size.width*0.5,
                    )),

              SizedBox(height: 20),

              /// Start Reading Button
              Container(
                  width: MediaQuery.of(context).size.width*0.3,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(0.0, 4.0),
                        blurRadius: 3.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(50.0),
                  ),

                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text("Start Reading", style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                  ),

                ),
          ],
        ),)
      ],),
    );
  }
}
