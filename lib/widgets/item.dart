import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  String title;
  bool isDone;
  Item({required this.title,required this.isDone});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: isDone?Colors.blue:Color.fromARGB(255, 238, 235, 235),
              ),
              child:isDone?Icon(Icons.check,color: Colors.white,size:15):Text(''),
            ),
            Container(
              child: Text(
                "$title",
                style:
                    TextStyle(fontSize:isDone? 20:15,color: isDone?Colors.black:Colors.grey, fontWeight: isDone?FontWeight.bold:FontWeight.normal),
              ),
            ),
          ]),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
