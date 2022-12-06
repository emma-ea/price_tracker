abstract class NetworkService {

  Future<Map<String, dynamic>> listen(
    String apiEndpont, {
      Map<String, dynamic> bodyParams
    }
  );

}