import 'package:dio/dio.dart';

class ProjectService {
  final service = Dio(
    BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/posts'),
  );
}
