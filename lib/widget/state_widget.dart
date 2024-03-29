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

  // no need to override as it is already implemented in super
  // and is NOT used in this example anyway (notifier itself is never changed)
  // @override
  // bool updateShouldNotify(StateInheritedNotifier oldWidget) =>
  //     oldWidget.notifier != notifier;
}
