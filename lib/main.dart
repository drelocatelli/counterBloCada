import 'package:bloc/bloc.dart';
import 'package:blocdev/src/bloc/counter_observer.dart';
import 'package:blocdev/view/counter_page.dart';
import 'package:blocdev/view/counter_view.dart';
import 'package:flutter/material.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(
      MaterialApp(home: CounterPage() , debugShowCheckedModeBanner: false)
      ),
    blocObserver: CounterObserver()
  );
}
