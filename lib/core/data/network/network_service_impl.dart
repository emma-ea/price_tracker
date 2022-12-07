import 'dart:convert';

import 'package:price_tracker/core/data/network/config.dart';
import 'package:price_tracker/core/data/network/creds.dart';
import 'package:price_tracker/core/data/network/network_service.dart';
import 'package:price_tracker/core/logging_utils.dart';
import 'package:web_socket_channel/io.dart';

class NetworkServiceImpl extends NetworkService {

  @override
  Future<Stream<dynamic>> request(
    String endpoint, {
    Map<String, dynamic>? params
  }) async {
    final uri = Uri.parse(api(appId));
    final channel = IOWebSocketChannel.connect(uri);
    channel.sink.add(jsonEncode(params));

    return channel.stream;
  }
}