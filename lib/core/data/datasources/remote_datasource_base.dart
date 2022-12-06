import 'dart:async';

abstract class RemoteDatasource<T> {

  final StreamController<T> dataStreamController = StreamController<T>();

  void dispose();

}