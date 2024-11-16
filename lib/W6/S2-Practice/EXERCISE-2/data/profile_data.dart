import 'package:flutter/material.dart';
import 'package:myflutter_project/W6/S2-Practice/EXERCISE-2/model/profile_tile_model.dart';

// Sample ProfileData instance
ProfileData soksanProfile = ProfileData(
  name: "Soksan",
  position: "Flutter Developer",
  avatarUrl: '/assets/cool_anime_boy__by_yash33455_dfob3av-375w-2x.jpg',
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
    TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
    TileData(icon: Icons.email, title: "Mail", value: "soksan.phork@student.cadt.edu.kh"),
  ],
);

