import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:price_tracker/core/data/network/config.dart';
import 'package:price_tracker/core/data/network/network_service.dart';
import 'package:web_socket_channel/io.dart';

class NetworkServiceImpl extends NetworkService {

  @override
  IOWebSocketChannel request({Map<String, dynamic>? params}) {
    final uri = Uri.parse(api(getAppId()));
    final channel = IOWebSocketChannel.connect(uri);
    channel.sink.add(jsonEncode(params));

    return channel;
  }
  
  @override
  String getAppId() {
    return dotenv.env[priceTrackerAppId] ?? "";
  }
}