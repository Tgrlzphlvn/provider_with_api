import 'dart:io';

import 'package:json_place_holder_sample/feature/model/post_model.dart';
import 'package:json_place_holder_sample/feature/service/service_main.dart';
import 'package:json_place_holder_sample/product/constants/project_strings.dart';

class Service extends ServiceMain {
  Service(super.dio);

  @override
  Future<List<PostModel>?> fetchItems() async {
    final response = await dio.get(ProjectStrings.servicePath);
    if (response.statusCode == HttpStatus.ok) {
      final result = response.data;
      if (result is List) {
        return result.map((item) => PostModel.fromJson(item)).toList();
      }
    }
    return [];
  }
}
