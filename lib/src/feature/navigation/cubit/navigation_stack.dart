import '../page/page_config.dart';

class NavigationStack {
  final List<AppPageConfig> _stack;

  NavigationStack(this._stack);

  List<AppPageConfig> get pages => _stack;

  int get length => _stack.length;

  bool canPop() => _stack.length > 1;

  NavigationStack pop() {
    if (canPop()) {
      _stack.removeLast();
    }
    return NavigationStack(_stack);
  }

  NavigationStack push(AppPageConfig config) {
    if (_stack.last != config) {
      _stack.add(config);
    }
    return NavigationStack(_stack);
  }

  NavigationStack popUntil(AppPageConfig config) {
    while (_stack.last.route != config.route && canPop()) {
      _stack.removeLast();
    }

    return NavigationStack(_stack);
  }

  NavigationStack clearAndPushAll(List<AppPageConfig> configs) {
    _stack.clear();
    _stack.addAll(configs);
    return NavigationStack(_stack);
  }

  NavigationStack replace(AppPageConfig config) {
    if (canPop()) {
      _stack.removeLast();
      _stack.add(config);
    } else {
      _stack.insert(0, config);
      _stack.removeLast();
    }
    return NavigationStack(_stack);
  }

  @override
  String toString() => _stack.map((e) => e.route).toString();
}
