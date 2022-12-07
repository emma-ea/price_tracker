import 'dart:convert';

import 'package:price_tracker/core/data/network/config.dart';
import 'package:price_tracker/core/data/network/creds.dart';
import 'package:price_tracker/core/data/network/network_service.dart';
import 'package:price_tracker/core/logging_utils.dart';
import 'package:web_socket_channel/io.dart';

class NetworkServiceImpl extends NetworkService {

  @override
  IOWebSocketChannel request(
    String endpoint, {
    Map<String, dynamic>? params
  }) {
    final uri = Uri.parse(api(appId));
    final channel = IOWebSocketChannel.connect(uri);
    channel.sink.add(jsonEncode(params));

    return channel;
  }
}