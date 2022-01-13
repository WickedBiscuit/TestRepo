import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flavor_example/counter_event.dart';
import 'package:flavor_example/counter_bloc.dart';


void main() => runApp(Dashboard());

class Dashboard extends StatelessWidget {
  final _bloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Test'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: _bloc.counter,
          initialData: 0,

        ),
      )
  }
}
