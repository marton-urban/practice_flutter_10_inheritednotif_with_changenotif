import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '/model/core_state.dart';

class StateInheritedNotifier extends InheritedNotifier<ChangeNotifier> {
  const StateInheritedNotifier({
    super.key,
    required super.child,
    required super.notifier,
  });

  static CoreState of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<StateInheritedNotifier>()!
      .notifier as CoreState;

  // this is not needed for this example
  // @override
  // bool updateShouldNotify(StateInheritedNotifier oldWidget) =>
  //     oldWidget.state != state;
}
