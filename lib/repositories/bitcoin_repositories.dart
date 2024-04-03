import 'package:dio/dio.dart';
import 'model/bitcoin_model.dart';

class BitcoinRepositories {
  final Dio _dio = Dio();

  Future<Bitcoin> getBitcoinPrice() async {
    final response =
        await _dio.get('https://api.coindesk.com/v1/bpi/currentprice.json');
    final Map<String, dynamic> data = response.data;
    return Bitcoin.fromJson(data);
  }
}
