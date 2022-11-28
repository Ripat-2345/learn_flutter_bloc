import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter_bloc/bloc/counter.dart';
import 'package:learn_flutter_bloc/pages/other/other_page.dart';

import 'data_widget.dart';

class HomePage2 extends StatelessWidget {
  HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Counter myCounter = BlocProvider.of<Counter>(context);
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
                  onTap: () {
                    myCounter.decrement();
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: const SizedBox(
                    width: 70,
                    height: 100,
                    child: Icon(
                      Icons.remove,
                      size: 30,
                    ),
                  ),
                ),
              ),
              DataWidget(),
              Material(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  onTap: () {
                    myCounter.increment();
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: const SizedBox(
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const OtherPage();
              },
            ),
          );
        },
        child: const Icon(
          Icons.next_plan,
        ),
      ),
    );
  }
}
