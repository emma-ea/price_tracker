import 'package:web_socket_channel/io.dart';

abstract class NetworkService {

  IOWebSocketChannel request(String endpoint, {Map<String, dynamic> params});

}