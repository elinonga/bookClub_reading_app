import 'package:ebook_online_book_reading_app/pages/book_details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(children: [
        Container(

          //Background Image
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/main_page_bg.png"),
                alignment: Alignment.topCenter,
                fit: BoxFit.cover
            ),
          ),

          child: Column(children: [

            /// What are you Reading Today - Text
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.07,
                  left: MediaQuery.of(context).size.width*0.05,
              ),
                child: Column(
                  children: [

                    // Text, "What are you?"
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("What are you", style: TextStyle(
                        fontSize: 25,
                      ),),
                    ),

                    // Row of "reading + today(bold)"
                    Row(
                      children: [
                        Text("reading", style: TextStyle(
                          fontSize: 25,
                        ),),
                        SizedBox(width: 10),
                        Text("today?", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25,
                        ),),
                      ],
                    ),

                  ],
                ),
            ),
            SizedBox(height: 20),

            /// A Row of cards
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 25),
                      height: 260, width: 250,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            offset: Offset(0.0, 4.0),
                            blurRadius: 3.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25.0),
                      ),

                      child: Column(children: [

                        /// A Row of book + Column of Icon & Button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          // Book Image
                          Image(
                            image: AssetImage("assets/book-1.png"),
                            height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width*0.3,
                          ),

                          // A Column of "Favorite Icon" + "Sun Icon & Text (49))
                          Column(children: [

                            //Favorite Icon
                            Icon(Icons.favorite_border),
                            SizedBox(height: 20),

                            //Container of Sun Icon & 49 text
                            Container(
                              width: MediaQuery.of(context).size.width*0.08,
                              height: MediaQuery.of(context).size.height*0.09,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54,
                                    offset: Offset(0.0, 4.0),
                                    blurRadius: 5.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Icon(Icons.wb_sunny, color: Colors.deepOrange, size: 20,),
                                  ),
                                  SizedBox(height: 10),
                                  Text("49", style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 15
                                  ),),
                                ],
                              ),

                            ),

                          ],),

                        ],),


                        SizedBox(height: 10),

                        /// A Column of two texts
                        Column(children: [
                          Text("Crushing & Influence", style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17
                          ),),
                          Text("Gary Vaynerchuk"),
                        ],),


                        SizedBox(height: 20),

                        /// A Row of 2 buttons (Details & Read)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            // Details Button
                          Container(
                            width: MediaQuery.of(context).size.width*0.25,
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
                                  print("Details Page");
                                },
                              child: Text("Details", style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                          ),

                          // Read Button
                          Container(
                            width: MediaQuery.of(context).size.width*0.25,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.black87,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54,
                                  offset: Offset(0.0, 0.0),
                                  blurRadius: 1.0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => BookDetailsPage()));
                                  print("Read Book");
                                },
                              child: Text("Read", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),),
                            ),
                          ),

                        ],),

                      ],),

                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 25),
                      height: 260, width: 250,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            offset: Offset(0.0, 4.0),
                            blurRadius: 3.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25.0),
                      ),

                      child: Column(children: [

                        /// A Row of book + Column of Icon & Button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // Book Image
                            Image(
                              image: AssetImage("assets/book-2.png"),
                              height: MediaQuery.of(context).size.height*0.2,
                              width: MediaQuery.of(context).size.width*0.3,
                            ),

                            // A Column of "Favorite Icon" + "Sun Icon & Text (49))
                            Column(children: [

                              //Favorite Icon
                              Icon(Icons.favorite_border),
                              SizedBox(height: 20),

                              //Container of Sun Icon & 49 text
                              Container(
                                width: MediaQuery.of(context).size.width*0.08,
                                height: MediaQuery.of(context).size.height*0.09,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black54,
                                      offset: Offset(0.0, 4.0),
                                      blurRadius: 5.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Icon(Icons.wb_sunny, color: Colors.deepOrange, size: 20,),
                                    ),
                                    SizedBox(height: 10),
                                    Text("49", style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 15
                                    ),),
                                  ],
                                ),

                              ),

                            ],),

                          ],),


                        SizedBox(height: 10),

                        /// A Column of two texts
                        Column(children: [
                          Text("Crushing & Influence", style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17
                          ),),
                          Text("Gary Vaynerchuk"),
                        ],),


                        SizedBox(height: 20),

                        /// A Row of 2 buttons (Details & Read)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            // Details Button
                            Container(
                              width: MediaQuery.of(context).size.width*0.25,
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
                                  print("Details Page");
                                },
                                child: Text("Details", style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                            ),

                            // Read Button
                            Container(
                              width: MediaQuery.of(context).size.width*0.25,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.black87,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54,
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 1.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: FlatButton(
                                onPressed: () {
                                  print("Read Book");
                                },
                                child: Text("Read", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),),
                              ),
                            ),

                          ],),

                      ],),

                    ),
                  ),

                  SizedBox(width: 20,),
                ],
              ),
            ),



            /// Best of Today - Text
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height*0.07,
                left: MediaQuery.of(context).size.width*0.05,
              ),

              // Row of "reading + today(bold)"
              child: Row(children: [
                  Text("Best of the", style: TextStyle(
                    fontSize: 25,
                  ),),
                  SizedBox(width: 10),
                  Text("day", style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 25,
                  ),),
                ],
              ),
            ),
            SizedBox(height: 20),

            /// Best of the day Card
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 25),
                height: 255, width: 350,

                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 4.0),
                      blurRadius: 3.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(25.0),
                ),

                child: Column(children: [

                  /// A Row of book + Column of Texts
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      // A Column of several texts
                      Container(
                        margin: EdgeInsets.only(left: 15),

                        child: Column(children: [

                          Text("Gary Vaynerchuk"),

                          Text("How to Win \nFriends & Influence", style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17
                          ),),

                          Text("Gary Vaynerchuk"),

                        ],),
                      ),

                      // Book Image
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Image(
                          image: AssetImage("assets/book-2.png"),
                        ),
                      ),

                    ],),

                  /// A Row of Column ("Sun Icon & Text (49)) + dummy text
                  Row(
                    children: [

                      //Container of Sun Icon & 49 text
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        width: MediaQuery.of(context).size.width*0.08,
                        height: MediaQuery.of(context).size.height*0.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(0.0, 4.0),
                              blurRadius: 5.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(Icons.wb_sunny, color: Colors.deepOrange, size: 20,),
                            ),
                            SizedBox(height: 10),
                            Text("49", style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15
                            ),),
                          ],
                        ),

                      ),

                      SizedBox(width: 15),

                      // Dummy Text
                      Text("Lorem Ipsum has been \n the industry's standard \n"
                          "text ever since the 1500s"),

                    ],
                  ),

                  /// Read Button
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      width: MediaQuery.of(context).size.width*0.25,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.black87,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 1.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          print("Read Book");
                        },
                        child: Text("Read", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),
                      ),
                    ),
                  ),

                ],),

              ),
            ),
            SizedBox(height: 20),



            /// Continue reading
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height*0.07,
                left: MediaQuery.of(context).size.width*0.05,
              ),

              // Row of "reading + today(bold)"
              child: Row(children: [
                Text("Continue", style: TextStyle(
                  fontSize: 25,
                ),),
                SizedBox(width: 10),
                Text("reading", style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 25,
                ),),
              ],
              ),
            ),
            SizedBox(height: 20),

            /// Continue Reading Card
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 25),
                height: 70, width: 350,

                decoration: BoxDecoration(
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

                child: Column(children: [

                  /// A Row of book + Column of Icon & Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      // A Column of two texts
                      Column(children: [
                        Text("Crushing & Influence", style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17
                        ),),
                        Text("Gary Vaynerchuk"),
                      ],),

                      // Book Image
                      Image(
                        image: AssetImage("assets/book-1.png"),
                        height: MediaQuery.of(context).size.height*0.1,
                        width: MediaQuery.of(context).size.width*0.3,
                      ),

                    ],),

                ],),

              ),
            ),
            SizedBox(height: 20),


          ],),
        )
      ],),
    );
  }
}
