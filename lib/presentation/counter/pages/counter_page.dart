import 'package:escuela_verano/presentation/core/widgets/app_nav_bar.dart';
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
      bottomNavigationBar: AppNavBar.navBar(context, NavBarPages.counter.index),
    );
  }
}

class _CounterRiverpodWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: DefaultTextStyle(
          style: TextStyle(fontSize: 24),
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
                    color: Colors.redAccent.shade100,
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
                    color: Colors.tealAccent,
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
