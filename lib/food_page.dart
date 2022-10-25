import 'package:flutter/material.dart';
class FoodPage extends StatefulWidget {
  FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  List<String> list = [
    "assets/images/img.png",
    "assets/images/img_1.png",
    "assets/images/img_2.png",
    "assets/images/img_3.png"
  ];
  bool showGrid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTitle(context),
              SizedBox(height: 20),
              buildWelcome(context),
              SizedBox(height: 20),
              buildSearch(context),
              SizedBox(height: 40),
              buildSavedPlace(context),
              SizedBox(height: 10),
              showGrid?buildGrid(context):buildList(context)
            ]
          ),
        ),
      ),
    );
  }

  buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications), color: Colors.black, iconSize: 30,),
        IconButton(onPressed: () {}, icon: Icon(Icons.extension), color: Colors.black, iconSize: 30,)
      ],
    );
  }

  buildWelcome(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Welcome,\n",
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold
        ),
        children: [
          TextSpan(
            text: "Duy Phuoc",
            style: TextStyle(
              fontWeight: FontWeight.normal
            )
          )
        ]
      )
    );
  }

  buildSearch(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),

        )
      ),
    );
  }

  buildSavedPlace(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Saved places",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Row(
          children: [
            showGrid?IconButton(onPressed: (){
              setState(() {
                showGrid = true;
              });
            }, icon: Icon(Icons.grid_view_rounded, size: 30,)):
            IconButton(onPressed: (){
              setState(() {
                showGrid = true;
              });
            }, icon: Icon(Icons.grid_view, size: 30,)),
            showGrid?IconButton(onPressed: (){
              setState(() {
                showGrid = false;
              });
            }, icon: Icon(Icons.list_rounded, size: 30,)):
            IconButton(onPressed: (){
              setState(() {
                showGrid = false;
              });
            }, icon: Icon(Icons.list_alt_rounded, size: 30,)),
          ],
        )
      ],
    );
  }

  buildGrid(BuildContext context) {
    return Expanded(
      child: GridView.count(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          ...list.map((e){
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(e),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
            );
          }).toList()
        ],
      ),
    );
  }

  buildList(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ...list.map((e){
            return Container(
              height: 200,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(e)
                )
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
