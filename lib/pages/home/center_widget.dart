import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/counter.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Counter myCounter = BlocProvider.of<Counter>(context);
    return Center(
      child: BlocBuilder<Counter, int>(
        bloc: myCounter,
        builder: (context, state) {
          return Text(
            state.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          );
        },
      ),
    );
  }
}
