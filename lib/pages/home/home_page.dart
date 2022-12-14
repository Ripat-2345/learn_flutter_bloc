import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/bloc/counter.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  Counter mycounter = Counter();

  @override
  Widget build(BuildContext context) {
    // * BLocConsumer
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLOC CONSUMER"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // * Widget yg disediakan oleh flutter_bloc
          BlocConsumer<Counter, int>(
            bloc: mycounter,
            buildWhen: (previous, current) {
              if (current >= 10) {
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
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("SUDAH MENCAPAI 15 NIH")),
              );
            },
            listenWhen: (previous, current) {
              if (current % 2 == 0) {
                return true;
              } else {
                return false;
              }
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

    // * BlocListener
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("BLOC LISTENER"),
    //     centerTitle: true,
    //   ),
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       // * Widget yg disediakan oleh flutter_bloc
    //       BlocListener(
    //         bloc: mycounter,
    //         listener: (context, state) {
    //           ScaffoldMessenger.of(context).showSnackBar(
    //             const SnackBar(content: Text("SUDAH MENCAPAI 15 NIH")),
    //           );
    //         },
    //         listenWhen: (previous, current) {
    //           if (current == 15) {
    //             return true;
    //           } else {
    //             return false;
    //           }
    //         },
    //         child: BlocBuilder<Counter, int>(
    //           bloc: mycounter,
    //           builder: (context, state) {
    //             return Text(
    //               state.toString(),
    //               style: const TextStyle(
    //                   fontSize: 38, fontWeight: FontWeight.w700),
    //             );
    //           },
    //         ),
    //       ),

    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         children: [
    //           IconButton(
    //             onPressed: () {
    //               mycounter.decrement();
    //             },
    //             icon: const Icon(
    //               Icons.remove,
    //               size: 30,
    //             ),
    //           ),
    //           IconButton(
    //             onPressed: () {
    //               mycounter.increment();
    //             },
    //             icon: const Icon(
    //               Icons.add,
    //               size: 30,
    //             ),
    //           )
    //         ],
    //       )
    //     ],
    //   ),
    // );

    // * BlocBuilder
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("BLOC BUILDER"),
    //     centerTitle: true,
    //   ),
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       // * Widget yg disediakan oleh flutter_bloc
    //       BlocBuilder<Counter, int>(
    //         bloc: mycounter,
    //         buildWhen: (previous, current) {
    //           if (current % 2 == 0) {
    //             return true;
    //           } else {
    //             return false;
    //           }
    //         },
    //         builder: (context, state) {
    //           return Text(
    //             state.toString(),
    //             style:
    //                 const TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
    //           );
    //         },
    //       ),

    //       // * Widget bawaan flutter
    //       // StreamBuilder(
    //       //   stream: mycounter.stream,
    //       //   builder: (context, snapshot) {
    //       //     return Text(
    //       //       snapshot.data.toString(),
    //       //       style:
    //       //           const TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
    //       //     );
    //       //   },
    //       // ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         children: [
    //           IconButton(
    //             onPressed: () {
    //               mycounter.decrement();
    //             },
    //             icon: const Icon(
    //               Icons.remove,
    //               size: 30,
    //             ),
    //           ),
    //           IconButton(
    //             onPressed: () {
    //               mycounter.increment();
    //             },
    //             icon: const Icon(
    //               Icons.add,
    //               size: 30,
    //             ),
    //           )
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}
