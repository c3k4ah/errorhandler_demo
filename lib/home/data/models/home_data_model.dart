import '../../domain/entities/home_data_entity.dart';

class BitCoinDataModel extends BitCoinDataEntity {
  const BitCoinDataModel({
    required super.updated,
    required super.updatedISO,
    required super.updateduk,
    required super.disclaimer,
    required super.chartName,
    required super.bpi,
  });

  factory BitCoinDataModel.fromJson(Map<String, dynamic> json) {
    final bpi = (json['bpi'] as Map<String, dynamic>).map(
      (key, value) => MapEntry(key, CurrencyDataModel.fromJson(value)),
    );

    return BitCoinDataModel(
      updated: json['time']['updated'],
      updatedISO: json['time']['updatedISO'],
      updateduk: json['time']['updateduk'],
      disclaimer: json['disclaimer'],
      chartName: json['chartName'],
      bpi: bpi,
    );
  }
}

class CurrencyDataModel extends CurrencyData {
  const CurrencyDataModel({
    required super.code,
    required super.description,
    required super.rate,
    required super.rateFloat,
    required super.symbol,
  });

  factory CurrencyDataModel.fromJson(Map<String, dynamic> json) {
    return CurrencyDataModel(
      code: json['code'],
      symbol: json['symbol'],
      rate: json['rate'],
      description: json['description'],
      rateFloat: (json['rate_float'] as num).toDouble(),
    );
  }
}
