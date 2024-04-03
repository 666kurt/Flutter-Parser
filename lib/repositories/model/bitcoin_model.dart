class Bitcoin {
  final String chartName;
  final String code;
  final String symbol;
  final String rate;
  final double rate_float;

  Bitcoin({
    required this.chartName,
    required this.code,
    required this.symbol,
    required this.rate,
    required this.rate_float,
  });

  factory Bitcoin.fromJson(Map<String, dynamic> json) {
    return Bitcoin(
      chartName: json['chartName'],
      code: json['bpi']['USD']['code'],
      symbol: json['bpi']['USD']['symbol'],
      rate: json['bpi']['USD']['rate'],
      rate_float: json['bpi']['USD']['rate_float'],
    );
  }
}
