abstract class NetworkService {

  Future<Map<String, dynamic>> listen(String endpoint, {Map<String, dynamic> headers});

}