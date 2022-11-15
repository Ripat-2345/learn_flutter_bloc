import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          // * Widget yg disediakan oleh flutter_bloc
          BlocBuilder<Counter, int>(
            bloc: mycounter,
            buildWhen: (previous, current) {
              if (current % 2 == 0) {
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) {
              return Text(
                state.toString(),
                style:
                    const TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
              );
            },
          ),

          // * Widget bawaan flutter
          // StreamBuilder(
          //   stream: mycounter.stream,
          //   builder: (context, snapshot) {
          //     return Text(
          //       snapshot.data.toString(),
          //       style:
          //           const TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
          //     );
          //   },
          // ),
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
