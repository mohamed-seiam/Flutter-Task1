import 'package:flutter/material.dart';

class CollectionRoom {
  List<RoomDetails> _CollectionRoom = [
    RoomDetails(
        name: "King Room",
        details: "A room with a king-sized bed",
        img: "assets/img/KingRoom.webp"),
    RoomDetails(
        name: "Double Room",
        details: "A room assigned to two people",
        img: "assets/img/doubleRoom.jpg"),
    RoomDetails(
        name: "Family Room",
        details: "A room assigned to three or four people",
        img: "assets/img/family.png"),
        RoomDetails(
        name: "King Room",
        details: "A room with a king-sized bed",
        img: "assets/img/KingRoom.webp"),
    RoomDetails(
        name: "Double Room",
        details: "A room assigned to two people",
        img: "assets/img/doubleRoom.jpg"),
    RoomDetails(
        name: "Family Room",
        details: "A room assigned to three or four people",
        img: "assets/img/family.png"),
        RoomDetails(
        name: "King Room",
        details: "A room with a king-sized bed",
        img: "assets/img/KingRoom.webp"),
    RoomDetails(
        name: "Double Room",
        details: "A room assigned to two people",
        img: "assets/img/doubleRoom.jpg"),
    RoomDetails(
        name: "Family Room",
        details: "A room assigned to three or four people",
        img: "assets/img/family.png"),
        
  ];
  int current = 0;
  RoomDetails GetCollection() {
    return _CollectionRoom[current];
  }

  MoveRoom() {
    if (current < _CollectionRoom.length - 1) current++;
  }
}

class RoomDetails {
  String name;
  String details;
  String img;
  RoomDetails({required this.name, required this.details, required this.img});
}
