import 'package:price_tracker/core/data/network/config.dart';
import 'package:price_tracker/core/data/network/network_service.dart';
import 'package:price_tracker/core/logging_utils.dart';
import 'package:web_socket_channel/io.dart';

class NetworkServiceImpl extends NetworkService {

  @override
  Future<Map<String, dynamic>> listen(
    String endpoint, {
    Map<String, dynamic>? headers
  }) async {
    final uri = Uri.parse("$api$endpoint");
    final channel = IOWebSocketChannel.connect(uri, headers: headers);
    channel.stream.listen((event) {
      logger.i(event);
    });
    return {};
  }
}