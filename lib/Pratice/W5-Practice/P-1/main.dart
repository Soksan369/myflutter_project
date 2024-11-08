import'package:flutter/material.dart';

void main () {
  runApp(
    MaterialApp(
      home: Container(
    padding: EdgeInsets.only(top: 100),
        child: Column(
          children: [
               Container(
                height: 200,
                color: Colors.blue,
                ),
               Container(
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                    color: Colors.green,
                        )
                        ),
                    Container(
                        width: 100,
                        color: Colors.pink[200],
                        ),
                  ],
                )
                ),
             Container(
                 padding: EdgeInsets.only(bottom: 20),
                height: 100,
                child: Row(
                  children: [
                      Container(
                        color: Colors.yellow[700],
                        
                        ),
                      Container(
                        color: Colors.yellow[700],

                        ),
                      Container(
                        color: Colors.yellow[700],
                        
                        ),
                  ],
                )
              ),
                Expanded(
              child: Container(
                height: 400,
                color: Colors.pink[200],
                )
                ),
          ],
        ),
      )
    ),
  );
}