import 'package:flutter/material.dart';

Widget siteNotOkWidget() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: (
      
      
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 245, 236, 209),
        ),
      width: double.infinity,
      height: 300,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
            color: Colors.redAccent,
            ),
            height: 100,
            child: Center(
              child: Icon(
                Icons.warning_amber_rounded,
                size: 70,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            'WARNING!',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w900,
              color: Colors.redAccent,
            ),
          ),
          Text('You are try to visit a phishing site'),
        ],
      ),
    )),
  );
}



Widget siteOkWidget() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: (
      
      
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 245, 236, 209),
        ),
      width: double.infinity,
      height: 300,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
            color: const Color.fromARGB(255, 111, 255, 82),
            ),
            height: 100,
            child: Center(
              child: Icon(
                Icons.check_circle,
                size: 70,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            'SITE OK',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 6, 133, 32),
            ),
          ),
          Text('You can safely visit the site'),
        ],
      ),
    )),
  );
}
