import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter_bloc/pages/home/home_page2.dart';
import './pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage2(),
    );
  }
}

// class CounterCubit extends Cubit<int> {
//   CounterCubit({this.inisialData = 0}) : super(inisialData);

//   int inisialData;

//   void tambahData() {
//     emit(state + 1);
//   }

//   void kurangData() {
//     emit(state - 1);
//   }

//   // bloc punya fitur untuk memantau data
//   @override
//   void onChange(Change<int> change) {
//     super.onChange(change);
//     print(change);
//   }

//   // bloc punya fitur untuk memantau error
//   @override
//   void onError(Object error, StackTrace stackTrace) {
//     super.onError(error, stackTrace);
//     print(error);
//   }
// }

// class HomePage extends StatelessWidget {
//   HomePage({super.key});

//   CounterCubit myCounter = CounterCubit();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("CUBIT APPS"),
//         centerTitle: true,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           StreamBuilder(
//             initialData: myCounter.inisialData,
//             stream: myCounter.stream,
//             builder: (context, snapshot) {
//               return Text(
//                 snapshot.data.toString(),
//                 style: const TextStyle(fontSize: 50),
//               );
//             },
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               IconButton(
//                 onPressed: () {
//                   myCounter.kurangData();
//                 },
//                 icon: const Icon(Icons.remove),
//               ),
//               IconButton(
//                 onPressed: () {
//                   myCounter.tambahData();
//                 },
//                 icon: const Icon(Icons.add),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
