import 'package:equatable/equatable.dart';

class BitCoinDataEntity extends Equatable {
  final String updated;
  final String updatedISO;
  final String updateduk;
  final String disclaimer;
  final String chartName;
  final Map<String, CurrencyData> bpi;

  const BitCoinDataEntity({
    required this.updated,
    required this.updatedISO,
    required this.updateduk,
    required this.disclaimer,
    required this.chartName,
    required this.bpi,
  });

  @override
  List<Object?> get props => [
        updated,
        updatedISO,
        updateduk,
        disclaimer,
        chartName,
        bpi,
      ];
}

class CurrencyData extends Equatable {
  final String code;
  final String symbol;
  final String rate;
  final String description;
  final double rateFloat;

  const CurrencyData({
    required this.code,
    required this.symbol,
    required this.rate,
    required this.description,
    required this.rateFloat,
  });
  @override
  List<Object?> get props => [
        code,
        symbol,
        rate,
        description,
        rateFloat,
      ];
}
