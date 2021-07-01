import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialyy/pages/notification.dart';
import 'package:socialyy/pages/profile.dart';

AppBar header(context) {
  return AppBar(
    elevation: 0.0,
    actions: [
      InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => NotificationP(),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 10),
          child: Stack(
            children: <Widget>[
              Icon(
                CupertinoIcons.bell_fill,
                size: 30,
                //  color: Colors.black,
              ),
              Positioned(
                top: 5,
                right: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        offset: new Offset(0.0, 0.0),
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
