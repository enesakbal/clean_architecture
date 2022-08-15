import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/counter/counter_bloc.dart';

class CounterExampleView extends StatelessWidget {
  const CounterExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildScaffold();
  }

  Widget buildScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Example'),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Column(
              children: [
                Text(state.counter.toString()),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(IncrementValue());
                        },
                        child: Text('Increment')),
                    ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(DecrementValue());
                        },
                        child: Text('Decrement')),
                    ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(ResetValue());
                        },
                        child: Text('Reset'))
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
