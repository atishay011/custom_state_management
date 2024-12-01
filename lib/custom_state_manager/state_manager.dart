typedef StateChangeListener = void Function();

class StateManager {
  final List<StateChangeListener> _listeners = [];

  void notifyListeners() {
    for (var listener in _listeners) {
      listener();
    }
  }

  void addListener(StateChangeListener listener) {
    _listeners.add(listener);
  }

  void removeListener(StateChangeListener listener) {
    _listeners.remove(listener);
  }
}
