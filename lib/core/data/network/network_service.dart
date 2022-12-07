abstract class NetworkService {

  Future<Stream<dynamic>> request(String endpoint, {Map<String, dynamic> params});

}