import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BLOC PROVIDER"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  child: Container(
                    width: 70,
                    height: 100,
                    child: Icon(
                      Icons.remove,
                      size: 30,
                    ),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 100,
                color: Colors.black,
                child: Text("0"),
              ),
              Material(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  child: Container(
                    width: 70,
                    height: 100,
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
