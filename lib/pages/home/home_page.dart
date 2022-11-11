import 'package:flutter/material.dart';
import '/bloc/counter.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  Counter mycounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLOC BUILDER"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            stream: mycounter.stream,
            builder: (context, snapshot) {
              return Text(
                snapshot.data.toString(),
                style:
                    const TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  mycounter.decrement();
                },
                icon: const Icon(
                  Icons.remove,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  mycounter.increment();
                },
                icon: const Icon(
                  Icons.add,
                  size: 30,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
