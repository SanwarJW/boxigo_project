// network_service.dart
import 'package:boxigo_project/model/customer_estimate_flow.dart';
import 'package:dio/dio.dart';

class NetworkService {
  final Dio dio = Dio();

  Future<BookingLeads> fetchWeltData() async {
    const url = 'http://test.api.boxigo.in/sample-data/';
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        // print("Data: ${response.data}");
        return BookingLeads.fromMap(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed network call');
    }
  }
}
