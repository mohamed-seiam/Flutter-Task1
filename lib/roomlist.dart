import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel/roomdetails.dart';
class RoomList extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _RoomListState();

}
class _RoomListState extends State<RoomList> {
  CollectionRoom room = CollectionRoom();
  GetNext() {
    setState(() {
      room.MoveRoom();  
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
      height: 200,
      child: Column(
        // mainAxisSize: MainAxisSize.values:,
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Image.asset(
                room.GetCollection().img,
                width: 140,
              ),
              SizedBox(
                width: 25,
              ),
              Text(room.GetCollection().name,
                  style: TextStyle(fontSize: 20, color: Colors.orange)),
              SizedBox(
                width: 40,
              ),
              Icon(
                Icons.arrow_upward_rounded,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(height: 23),
          Expanded(
            child: Text(room.GetCollection().details,
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      GetNext();
                    },
                    child: Text("NEXT")),
              ),
            ],
          )
        ],
      ),
    );
  }
}
