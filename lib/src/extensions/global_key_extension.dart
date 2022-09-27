import 'package:flutter/material.dart';

extension GlobalKeyExtension<T> on GlobalKey<State<StatefulWidget>> {
  // ignore: avoid_shadowing_type_parameters
  T? state<T>() {
    return currentState as T?;
  }
}
