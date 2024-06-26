import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '/model/core_state.dart';

class StateInheritedNotifier extends InheritedNotifier<CoreState> {
  const StateInheritedNotifier({
    super.key,
    required super.child,
    required super.notifier,
  });

  static CoreState of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<StateInheritedNotifier>()!
      .notifier!;

  // you can set listen = false in widgets that only need the data, but no updates
  // static CoreState of(BuildContext context, {listen = true}) {
  //   return listen
  //       ? context
  //           .dependOnInheritedWidgetOfExactType<StateInheritedNotifier>()!
  //           .notifier as CoreState
  //       : context
  //           .findAncestorWidgetOfExactType<StateInheritedNotifier>()!
  //           .notifier as CoreState;
  // }

  // no need to override as it is already implemented in super
  // and is NOT used in this example anyway, because
  // notifier (which is a CoreState object) itself is never renewed,
  // only its fields are changed
  // so oldWidget.notifier == notifier in this example at all times
  // @override
  // bool updateShouldNotify(StateInheritedNotifier oldWidget) =>
  //     oldWidget.notifier != notifier;
}
