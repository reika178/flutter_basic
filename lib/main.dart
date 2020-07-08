import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var grid = ["pic0", "pic1", "pic2", "pic3", "pic4", "pic5",];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('GridView'),
            ),
            body: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  if (index >= grid.length) {
                    grid.addAll(["pic0", "pic1", "pic2", "pic3", "pic4", "pic5",]);
                  }
                  return _photoItem(grid[index]);
                }
            )
        )
    );
  }

  Widget _photoItem(String image) {
    var assetsImage = "assets/img/" + image + ".png";
    return Container(
      child: Image.asset(assetsImage, fit: BoxFit.cover,),
    );
  }
}
