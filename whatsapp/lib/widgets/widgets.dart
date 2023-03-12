import 'package:flutter/material.dart';

tile(Icon leadingIcon, String title, String metadata) {
  return ListTile(
      leading: leadingIcon,
      title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
            Text(
              metadata,
              style: TextStyle(color: Colors.grey),
            )
          ]));
}

tileonly(Icon leadingIcon, String title) {
  return ListTile(
      leading: leadingIcon,
      title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ]));
}
