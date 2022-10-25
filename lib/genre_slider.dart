import 'package:flutter/material.dart';
import 'package:project1/model/DestinationModel.dart';
class GenreSlider extends StatefulWidget {
  const GenreSlider({Key? key}) : super(key: key);

  @override
  State<GenreSlider> createState() => _GenreSliderState();
}

class _GenreSliderState extends State<GenreSlider> {
  @override
  Widget build(BuildContext context) {
    List<DestinationModel> _list = DestinationModel.MockData();
    DestinationModel genreSelected = _list.first;

    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ..._list.map((e) {
              return InkWell(
                onTap: () {
                  setState(() {
                    genreSelected = e;
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Image.asset(e.image),
                      Text(e.name),
                      ...e.genre.map((i) => Text(i)),
                      Text(e.rating.toString()),
                    ],
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

blockGenre(DestinationModel model)
{
  return Row(
    children: [
      for(int i=0;i<model.genre.length;i++)
        Container(
          margin: EdgeInsets.all(10),
          child: Text(model.genre[i]),
        )
    ],
  );
}
