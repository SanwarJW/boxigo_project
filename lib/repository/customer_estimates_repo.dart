// network_service.dart
import 'package:boxigo_project/model/customer_estimate_flow.dart';
import 'package:dio/dio.dart';

class NetworkService {
  final Dio dio = Dio();
  BookingLeads? _cachedData;

  Future<BookingLeads> fetchWeltData() async {
    const url = 'http://test.api.boxigo.in/sample-data/';

    if (_cachedData != null) {
      return _cachedData!;
    }

    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        _cachedData = BookingLeads.fromMap(response.data);
        return _cachedData!;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed network call');
    }
  }
}
