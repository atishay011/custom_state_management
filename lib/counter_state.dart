import 'package:custom_state_management/custom_state_manager/state_manager.dart';


class CounterState extends StateManager {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners(); 
  }

  void decrement() {
    if (_counter > 0) {
      _counter--;
      notifyListeners(); 
    }
  }
}
