import 'dart:io';

import 'package:flutter/material.dart';

class SushiPage extends StatelessWidget {
  SushiPage({Key? key}) : super(key: key);
  List<String> list = [
    "assets/images/img_9.png",
    "assets/images/img_10.png",
    "assets/images/img_11.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.all(10),
          children: [
            buildButtonBar(context),
            SizedBox(height: 20),
            buildTodaySpecial(context),
            buildText(context),
            SizedBox(
              height: 10,
            ),
            buildFood(context),
            SizedBox(
              height: 30,
            ),
            buildPlacesText(context),
            SizedBox(
              height: 10,
            ),
            buildListPlaces(context)
          ],
      )),
    );
  }

  buildButtonBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              size: 30,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
            ))
      ],
    );
  }

  buildTodaySpecial(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Today's Special",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                shadowColor: Colors.green.withOpacity(0.5),
                elevation: 10),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )
                ],
              ),
            )),
      ],
    );
  }

  buildText(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        child: Text("Find out what's cooking today"));
  }

  buildFood(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: IntrinsicHeight(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 4.5 / 8,
                //padding: EdgeInsets.only(right: 10),
                margin: EdgeInsets.only(right: 10),

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      shadowColor: Colors.blue,
                      elevation: 10),
                  onPressed: () {},
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Image.asset("assets/images/img_6.png"),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(top: 25),
                          child: Text(
                            "Yoshisama Sushi",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            children: [
                              for (var i = 1; i<=5; i++)
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.white,
                                ),

                              Text(
                                "250 Ratings",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            "Sushi sushi sushi sushi sushi sushi",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    item("assets/images/img_7.png", "Yoshisama Sushi", 5, Colors.green),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: item("assets/images/img_8.png", "Yoshisama Sushi", 5, Colors.black),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
    ;
  }

  buildPlacesText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Places",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Expanded(
          child: Container(
            height: 30,
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black))),
          ),
        )
      ],
    );
  }

  buildListPlaces(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Column(
          children: [
            listViewItem("assets/images/img_9.png", "Shino Sushi", 5, "", context),
            listViewItem("assets/images/img_10.png", "Shino Sushi", 5, "", context),
            listViewItem("assets/images/img_11.png", "Shino Sushi", 5, "", context),
          ],
        ),
      ],
    ));
  }

  item(String image,String name,int stars, color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          shadowColor: color,
          elevation: 10),
      onPressed: () {},
      child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Image.asset(image),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  for (var i = 1; i<=stars; i++)
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.white,
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
  listViewItem(String image, String name, int stars, String link, BuildContext context)
  {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Image(
            image: AssetImage(image),
            height: 70,
          ),
          Container(
            width: MediaQuery.of(context).size.width *3.2/8,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text.rich(TextSpan(children: [
                  for (var i = 1; i <= stars; i++)
                    WidgetSpan(
                      child: Icon(Icons.star, size: 20,),
                    )
                ])),
                Text("aaaaaaaaaaaaaaaaaaaaaaaaaaa")
              ],
            ),
          ),
          Expanded(
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    shadowColor: Colors.green.withOpacity(0.5),
                    elevation: 10),
                child: Container(
                  padding: EdgeInsets.all(3),
                  child: Text("Order now"),
                )),
          ),
        ],
      ),
    );
  }
}
