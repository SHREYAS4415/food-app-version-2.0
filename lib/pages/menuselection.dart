
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/new_menu.dart';
import 'package:google_fonts/google_fonts.dart';


class MenuHome extends StatefulWidget {
  const MenuHome({super.key});

  @override
  State<MenuHome> createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {




  String currentMenu = '';

  void changeMenu(String menu) {
    setState(() {
      currentMenu = menu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            padding: EdgeInsets.only(right: 15,top: 5),
            child: Column(
              children: [
                Image(
                  image: AssetImage("images/Plant.png"),
                ),
                Text(
                  "Pure-Veg",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ],

        title: Text(
          "Food Express",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 5, 16, 16),
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100, // Adjust the height as needed
                child: Image.asset(
                  'assets/menugif.gif', // Replace with your GIF asset
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10,),
              Row(children: <Widget>[
                Expanded(
                    child: Divider(
                  color: Colors.redAccent,
                )),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "EXPLORE",
                  style: TextStyle(fontSize: 14, letterSpacing: 1.3),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: Divider(
                  color: Colors.redAccent,
                )),
              ]),

              SizedBox(
                height: 14,
              ),

              Row(
                children: [
                  SizedBox(width: 5,),
                  SizedBox(
                    width: 180,
                    height: 183,
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/allmenu.png"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1,
                                color: Colors.black.withOpacity(0.4),
                                spreadRadius: 1)
                          ],
                          border: Border.all(
                            color: Colors.black, // Set the border color
                            width: 0.5, // Set the border width
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left:10,right:20,top: 15),
                            child: Text(
                              "VIEW ALL MENU",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  fontSize: 28),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(right: 65),
                            child: Container(
                                height: 30,
                                child: OutlinedButton(
                                    onPressed: () {
                                      changeMenu("All Menu");

                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Menupage(
                                            selectedMenu: "All Menu",
                                            headImage: "images/food.png",
                                          ),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'tap here',
                                      style: TextStyle(color: Colors.white),
                                    ))),
                          )
                        ],
                      ),
                    ),
                  ),
SizedBox(width: 8,),
                  GestureDetector(
                    onTap: () {
                      changeMenu("Breakfast");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Menupage(
                                    selectedMenu: 'Breakfast',
                                    headImage: "images/Rectangle 28.png",
                                  )));
                    },
                    child: Container(
                      width: 165,
                      // Set the width of the container to full width
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1,
                                color: Colors.black.withOpacity(0.4),
                                spreadRadius: 1)
                          ],
                          border: Border.all(
                            color: Colors.black, // Set the border color
                            width: 0.5, // Set the border width
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: const ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5), // Set top-left border radius
                          topRight:
                              Radius.circular(5), // Set top-right border radius
                        ),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage("images/Rectangle 28.png"),
                              height: 110,
                              width: double.infinity,
                              // Set the width of the image to full width
                              fit: BoxFit
                                  .cover, // Ensure the image covers the entire space
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 8.0, bottom: 5, right: 8,top:5),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Breakfast",
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          )),

                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.alarm,
                                        color: Colors.redAccent,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("7:00 - 11:00 AM")
                                    ],
                                  ),
                                  SizedBox(height: 5,),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),




                ],
              ),
              SizedBox(height:12),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          changeMenu("Lunch");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Menupage(
                                    selectedMenu: 'Lunch',
                                    headImage: "images/delicious-food-table 1.png",
                                  )));
                        },
                        child: Container(
                          width: 180,
                          // Set the width of the container to full width
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 1,
                                    color: Colors.black.withOpacity(0.4),
                                    spreadRadius: 1)
                              ],
                              border: Border.all(
                                color: Colors.black, // Set the border color
                                width: 0.5, // Set the border width
                              ),
                              borderRadius: BorderRadius.circular(5)),
                          child: const ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5), // Set top-left border radius
                              topRight:
                              Radius.circular(5), // Set top-right border radius
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Image(
                                    image:
                                    AssetImage("images/delicious-food-table 1.png"),
                                    height: 100,
                                    width: double.infinity,
                                    // Set the width of the image to full width
                                    fit: BoxFit
                                        .cover, // Ensure the image covers the entire space
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 8.0, bottom: 5, right: 8,top:5),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Lunch",
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.bold),
                                              )),

                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.alarm,
                                            color: Colors.redAccent,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("12:00 - 3:00 PM")
                                        ],
                                      ),
                                      SizedBox(height: 5,),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      GestureDetector(
                        onTap: () {
                          changeMenu("Dinner");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Menupage(
                                    selectedMenu: 'Dinner',
                                    headImage:
                                    "images/indian-cuisine-sev-tamatar_55610-2099 1.png",
                                  )));
                        },
                        child: Container(

                          width: 165,
                          // Set the width of the container to full width
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 1,
                                    color: Colors.black.withOpacity(0.4),
                                    spreadRadius: 1)
                              ],
                              border: Border.all(
                                color: Colors.black, // Set the border color
                                width: 0.5, // Set the border width
                              ),
                              borderRadius: BorderRadius.circular(5)),
                          child: const ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5), // Set top-left border radius
                              topRight:
                              Radius.circular(5), // Set top-right border radius
                            ),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage(
                                      "images/indian-cuisine-sev-tamatar_55610-2099 1.png"),
                                  height: 110,
                                  width: double.infinity,
                                  // Set the width of the image to full width
                                  fit: BoxFit
                                      .cover, // Ensure the image covers the entire space
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 8.0, bottom: 5, right: 8,top:5),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Dinner",
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.bold),
                                              )),

                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.alarm,
                                            color: Colors.redAccent,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("7:00 - 9:00 PM")
                                        ],
                                      ),
                                      SizedBox(height: 5,),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
