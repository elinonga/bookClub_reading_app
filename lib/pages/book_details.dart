import 'package:ebook_online_book_reading_app/pages/circular_clipper.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends StatefulWidget {

  @override
  _BookDetailsPageState createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [

          /// Background + Children(Texts, Icons & Play Button)
          Stack(
            children: [

              /// Background Image
              Container(
                transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                child: ClipPath(
                  clipper: CircularClipper(),
                  child: Image(
                      height: 400.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/bg.png")),
                ),
              ),


              /// Row of Text + Image of Book
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 255,

                  child: Column(children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                      // A Column of several texts
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(children: [

                          // A Column - Crushing & Influence
                          Container(
                            margin: EdgeInsets.only(right: 90, top: 10),
                            child: Column(
                              children: [
                                Text("Crushing &", style: TextStyle(
                                    fontSize: 25
                                ),),
                                Text("Influence", style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25
                                ),),
                              ],
                            ),
                          ),

                          // A Row of "Dummy Text" + "Icons"
                          Row(
                            children: [
                              Text("Lorem Ipsum has been \n the industry's standard \n"
                                  "text ever since the 1500s"),

                              SizedBox(width: 20),

                              // A Column of "Favorite Icon" + "Sun Icon & Text (49))
                              Column(children: [

                                //Favorite Icon
                                Icon(Icons.favorite_border, size: 17),
                                SizedBox(height: 15),

                                //Container of Sun Icon & 49 text
                                Container(
                                  width: MediaQuery.of(context).size.width*0.08,
                                  height: MediaQuery.of(context).size.height*0.07,
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
                                        child: Icon(Icons.wb_sunny, color: Colors.deepOrange, size: 15,),
                                      ),
                                      SizedBox(height: 10),
                                      Text("49", style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 13
                                      ),),
                                    ],
                                  ),

                                ),

                              ],),

                            ],
                          ),

                          // Read Button
                          Container(
                            margin: EdgeInsets.only(right: 70,),
                            width: MediaQuery.of(context).size.width*0.35,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
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
                                  fontWeight: FontWeight.bold, fontSize: 17,
                                  color: Colors.black
                              ),),
                            ),
                          ),

                        ],),
                      ),


                      // Book Image
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Image(
                          image: AssetImage("assets/book-1.png"),
                        ),
                      ),


                    ],),
                  ],),

                ),
              ),



              /// You might also like Card
              Positioned.fill(
                bottom: 40.0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 70, width: 350,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 3.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(50.0),
                    ),

                    child: Column(children: [

                      /// A Row of an Icon + Column of Texts
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          // A Column of two texts
                          Container(
                            margin: EdgeInsets.only(left: 25, top: 15),
                            child: Column(children: [
                              Text("Chapter 1: Money", style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17
                              ),),
                              Text("Life is alphabet changes"),
                            ],),
                          ),

                          // Forward Icon
                          Container(
                              margin: EdgeInsets.only(right: 20, top: 15),
                              child: Icon(Icons.arrow_forward_ios, size: 17)
                          ),

                        ],),

                    ],),

                  ),
                ),
              ),


            ],
          ),


          /// A Container of Column(Chapter 2 ...) + Icon
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 70, width: 350,

              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 4.0),
                    blurRadius: 3.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(50.0),
              ),

              child: Column(children: [

                /// A Row of an Icon + Column of Texts
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    // A Column of two texts
                    Container(
                      margin: EdgeInsets.only(left: 25, top: 15),
                      child: Column(children: [
                        Text("Chapter 2: Power", style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17
                        ),),
                        Text("Everything evolves on Power"),
                      ],),
                    ),

                    // Forward Icon
                    Container(
                        margin: EdgeInsets.only(right: 20, top: 15),
                        child: Icon(Icons.arrow_forward_ios, size: 17)
                    ),

                  ],),

              ],),

            ),
          ),
          SizedBox(height: 20),


          /// A Container of Column(Chapter 3 ...) + Icon
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 70, width: 350,

              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 4.0),
                    blurRadius: 3.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(50.0),
              ),

              child: Column(children: [

                /// A Row of an Icon + Column of Texts
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    // A Column of two texts
                    Container(
                      margin: EdgeInsets.only(left: 25, top: 15),
                      child: Column(children: [
                        Text("Chapter 3: Influence", style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17
                        ),),
                        Text("Influence helps you control things"),
                      ],),
                    ),

                    // Forward Icon
                    Container(
                        margin: EdgeInsets.only(right: 20, top: 15),
                        child: Icon(Icons.arrow_forward_ios, size: 17)
                    ),

                  ],),

              ],),

            ),
          ),
          SizedBox(height: 20),


          /// A Container of Column(Chapter 4 ...) + Icon
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 70, width: 350,

              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 4.0),
                    blurRadius: 3.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(50.0),
              ),

              child: Column(children: [

                /// A Row of an Icon + Column of Texts
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    // A Column of two texts
                    Container(
                      margin: EdgeInsets.only(left: 25, top: 15),
                      child: Column(children: [
                        Text("Chapter 4: Win", style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17
                        ),),
                        Text("Winning is essential in this game"),
                      ],),
                    ),

                    // Forward Icon
                    Container(
                        margin: EdgeInsets.only(right: 20, top: 15),
                        child: Icon(Icons.arrow_forward_ios, size: 17)
                    ),

                  ],),

              ],),

            ),
          ),


          /// A Column of You might also like (Text + Card)
          Column(
            children: [

              /// You might also like
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.07,
                  left: MediaQuery.of(context).size.width*0.07,
                ),

                // Row of "reading + today(bold)"
                child: Row(children: [
                  Text("You might also", style: TextStyle(
                    fontSize: 25,
                  ),),
                  SizedBox(width: 10),
                  Text("like...", style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 25,
                  ),),
                ],
                ),
              ),
              SizedBox(height: 20),


              /// You might also like Card
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 170, width: 350,

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

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                    /// A Column of Texts
                    Column(children: [

                      // A Column of several texts
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20),

                        child: Column(children: [

                          Text("How to Win \nFriends & Influence", style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17
                          ),),

                          Text("Gary Vaynerchuk"),

                        ],),
                      ),

                      SizedBox(height: 30),

                      // A Row of Column ("Sun Icon & Text (49)) + dummy text
                      Row(
                        children: [

                          //Container of Sun Icon & 49 text
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            width: MediaQuery.of(context).size.width*0.08,
                            height: MediaQuery.of(context).size.height*0.07,
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
                                  child: Icon(Icons.wb_sunny, color: Colors.deepOrange, size: 15,),
                                ),
                                SizedBox(height: 10),
                                Text("49", style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13
                                ),),
                              ],
                            ),

                          ),

                          SizedBox(width: 20),

                          // Read Button
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

                        ],
                      ),

                    ],),

                    /// Image
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Image(
                        image: AssetImage("assets/book-2.png"),
                      ),
                    ),

                  ],)

                ),
              ),
              SizedBox(height: 20),


            ],
          ),
          SizedBox(height: 20),

        ],
      ),
    );
  }
}
