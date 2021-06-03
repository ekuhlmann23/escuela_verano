import 'package:escuela_verano/presentation/counter/state/counter_state.dart';
import 'package:escuela_verano/presentation/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: _CounterRiverpodWidget(),
    );
  }
}

class _CounterRiverpodWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: DefaultTextStyle(
          style: Theme.of(context).textTheme.headline4 ?? TextStyle(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Current count:"),
              ProviderListener<CounterState>(
                provider: counterNotifierProvider,
                onChange: (context, state) {
                  state.maybeWhen(
                    reset: () {
                      final snackBar = SnackBar(
                        content: Text("The counter has been reset."),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    orElse: () {},
                  );
                },
                child: Consumer(
                  builder: (context, watch, child) {
                    final state = watch(counterNotifierProvider);
                    return Text(state.when(
                        counting: (c) => c.toString(), reset: () => '0'));
                  },
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    color: Theme.of(context).errorColor,
                    onPressed: () {
                      BuildContextX(context)
                          .read(counterNotifierProvider.notifier)
                          .decrement();
                    },
                    icon: Icon(Icons.exposure_minus_1),
                  ),
                  IconButton(
                    color: Colors.grey,
                    onPressed: () {
                      BuildContextX(context)
                          .read(counterNotifierProvider.notifier)
                          .reset();
                    },
                    icon: Icon(Icons.loop),
                  ),
                  IconButton(
                    color: Theme.of(context).accentColor,
                    onPressed: () {
                      BuildContextX(context)
                          .read(counterNotifierProvider.notifier)
                          .increment();
                    },
                    icon: Icon(Icons.plus_one),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
