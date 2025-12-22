import 'dart:async';

class GlobalEventListener {
  final StreamController _streamController;
  StreamController get streamController => _streamController;

  GlobalEventListener({bool sync = false})
      : _streamController = StreamController.broadcast(sync: sync);

  GlobalEventListener.customController(StreamController controller)
      : _streamController = controller;

  Stream<T> on<T>() {
    if (T == dynamic) {
      return streamController.stream as Stream<T>;
    } else {
      return streamController.stream.where((event) => event is T).cast<T>();
    }
  }

  void fire<T>(T event) => streamController.add(event);

  void destroy() => _streamController.close();
}

final gEventListener = GlobalEventListener();
