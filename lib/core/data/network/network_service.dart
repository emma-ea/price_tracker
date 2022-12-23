import 'package:web_socket_channel/io.dart';

abstract class NetworkService {

  IOWebSocketChannel request({Map<String, dynamic> params});

  String getAppId();

}