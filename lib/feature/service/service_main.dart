import 'package:dio/dio.dart';
import 'package:json_place_holder_sample/feature/model/post_model.dart';

abstract class ServiceMain {
  final Dio dio;

  ServiceMain(this.dio);

  Future<List<PostModel>?> fetchItems();
}
