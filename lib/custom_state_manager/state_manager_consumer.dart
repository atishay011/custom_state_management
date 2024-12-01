import 'package:custom_state_management/custom_state_manager/state_manager.dart';
import 'package:flutter/material.dart';

class StateManagerConsumer<T extends StateManager> extends StatefulWidget {
  final T stateManager;
  final Widget Function(BuildContext context, T stateManager) builder;

  const StateManagerConsumer({
    Key? key,
    required this.stateManager,
    required this.builder,
  }) : super(key: key);

  @override
  State<StateManagerConsumer<T>> createState() => _StateManagerConsumerState<T>();
}

class _StateManagerConsumerState<T extends StateManager> extends State<StateManagerConsumer<T>> {
  @override
  void initState() {
    super.initState();
    widget.stateManager.addListener(_onStateChange);
  }

  @override
  void dispose() {
    widget.stateManager.removeListener(_onStateChange);
    super.dispose();
  }

  void _onStateChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, widget.stateManager);
  }
}
