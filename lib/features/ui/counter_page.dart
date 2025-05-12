//handle home page
import 'package:bloc_provider/features/counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  void initState() {
    counterBloc.add(IncrementCounterEvent());
    super.initState();
  }

  final counterBloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      bloc: counterBloc,
      builder: (context, state) {
        switch (state.runtimeType) {
          case IncrementCounterState:
            final successState = state as IncrementCounterState;
            return Scaffold(
              appBar: AppBar(
                title: Text('Counter App'),
                centerTitle: true,
                backgroundColor: Colors.blue.shade200,
              ),
              body: Center(child: Text('Counter: ${successState.count}')),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  counterBloc.add(IncrementCounterEvent());
                },
                child: Icon(Icons.add),
              ),
            );
        }
        return Container();
      },
    );
  }
}
