import 'package:flutter/material.dart';

class MapSection extends StatefulWidget {
  const MapSection({Key? key}) : super(key: key);

  @override
  _MapSectionState createState() => _MapSectionState();
}

class _MapSectionState extends State<MapSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("이곳에는 지도를 띄워줍니다."),
    );
  }
}
