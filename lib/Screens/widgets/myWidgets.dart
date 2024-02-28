
import 'package:flutter/material.dart';

Widget siteNotOkWidget(BuildContext ctx) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/oops.png'),
              Text(
                'WARNING!',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(
                width: 300,
                child: Text('You are attempting to access a potentially suspicious website',
                textAlign: TextAlign.center,
                ),
              ),
              //  MaterialButton(onPressed: (){
              //   // Navigator.of(ctx).pop();
              //  },
              //  child: Text("Back to safety",
              //  style: TextStyle(
              //   color: const Color.fromARGB(255, 3, 129, 68),
              //   fontWeight: FontWeight.w800
              //  ),),
              //  )
            ],
          ),
      ),
    ),
    );
}
