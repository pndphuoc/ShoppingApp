import 'package:flutter/material.dart';
import 'package:project1/genre_slider.dart';
import 'package:project1/slider.dart';
class DestinationPage extends StatelessWidget {
  const DestinationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            blocktitle(),
            slider(),
            GenreSlider(),
            blockActionButton(),
            blockDescription()
          ],
        ),
      ),
    );
  }

  blockImage(){
    return Image.asset("assets/images/img.png");
  }
  blocktitle(){
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("phuoc dep trai",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.indigoAccent
                ),
              ),
              Text("rin ngu"),
            ],
          ),
          Row(
            children: [
              Icon(Icons.star,
                color: Colors.red,
              ),
              Text("31"),
            ],
          )
        ],
      ),
    );
  }
  blockActionButton(){
    return Container(
      margin: EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(Icons.phone),
              Text("Call"),
            ],
          ),
          Column(
            children: [
              Icon(Icons.directions),
              Text("Route"),
            ],
          ),
          Column(
            children: [
              Icon(Icons.share),
              Text("Share"),
            ],
          ),
        ],
      ),
    );
  }
  blockDescription(){
    return Container(
      margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
      child: Text("A lake is an area filled with water, localized in a basin, surrounded by land, "
          "and distinct from any river or other outlet that serves to feed or drain the lake.[1] "
          "Lakes lie on land and are not part of the ocean, although, like the much larger oceans, "
          "they do form part of the Earth's water cycle. Lakes are distinct from lagoons, which are "
          "generally coastal parts of the ocean. Lakes are typically larger and deeper than ponds, "
          "which also lie on land, though there are no official or scientific definitions.[2] "
          "Lakes can be contrasted with rivers or streams, which usually flow in a channel on land. Most lakes are fed and drained by rivers and streams.[3]"),
    );
  }
}
