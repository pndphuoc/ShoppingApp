import 'package:flutter/material.dart';
class slider extends StatelessWidget {
  slider({Key? key}) : super(key: key);
  List<String> _list = [
    'assets/images/img_1.png',
    'assets/images/img_2.png',
    'assets/images/img_3.png',
    'assets/images/img_4.png',
    'assets/images/img_5.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ..._list.map((e) {
              return Container(
                margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(e),
                      fit: BoxFit.cover,
                    )
                  ),
              );
            })
          ],
        ),
      ),
    );
  }

}
