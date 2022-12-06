import 'package:price_tracker/core/data/network/network_service.dart';
import 'package:web_socket_channel/io.dart';

class NetworkServiceImpl extends NetworkService {

  @override
  Future<Map<String, dynamic>> listen(
    String apiEndpont, {
    Map<String, dynamic>? bodyParams
  }) async {
    final channel = IOWebSocketChannel.connect(Uri.parse(apiEndpont));
    return {};
  }

  
}