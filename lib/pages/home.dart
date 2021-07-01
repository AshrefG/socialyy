import 'package:flutter/material.dart';
import 'package:socialyy/widgets/appbar.dart';
import 'package:socialyy/widgets/postsitem.dart';
import 'package:socialyy/widgets/saveitem.dart';
import 'package:socialyy/widgets/storyitem.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: ListView(
                padding: EdgeInsets.only(left: 20, right: 10),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                children: [
                  SizedBox(height: 10.0),
                  StoryItem(),
                  SavedItem(),
                  PostItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
