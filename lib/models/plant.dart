import 'dart:convert';

import 'package:plant_shop/enums/enum_env_type.dart';
import 'package:plant_shop/enums/enum_weather_type.dart';

class Plant {
  final String name;
  final String image;
  final double price;
  final String description;
  final EnumEnvType envType;
  final EnumWeatherType weatherType;

  Plant(this.name, this.image, this.price, this.description, this.envType,
      this.weatherType);

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'image': image});
    result.addAll({'price': price});
    result.addAll({'description': description});
    result.addAll({'envType': envType.index});
    result.addAll({'weatherType': weatherType.index});

    return result;
  }

  factory Plant.fromMap(Map<String, dynamic> map) {
    return Plant(
      map['name'] ?? '',
      map['image'] ?? '',
      map['price']?.toDouble() ?? 0.0,
      map['description'] ?? '',
      EnumEnvType.values[(map['envType'])],
      EnumWeatherType.values[(map['weatherType'])],
    );
  }

  String toJson() => json.encode(toMap());

  factory Plant.fromJson(String source) => Plant.fromMap(json.decode(source));
}
