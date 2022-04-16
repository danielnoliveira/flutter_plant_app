import 'package:plant_shop/mocks/plants_list_map.dart';
import 'package:plant_shop/models/plant.dart';

final plants_list = plants_list_map.map((e) => Plant.fromMap(e));
