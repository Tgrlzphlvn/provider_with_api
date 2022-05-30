import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_place_holder_sample/feature/model/post_model.dart';
import 'package:json_place_holder_sample/feature/service/service_main.dart';

class PostmodelViewModel extends ChangeNotifier {
  late ServiceMain serviceMain;
  List<PostModel>? postModel = [];
  bool _isLoading = false;

  PostmodelViewModel(this.serviceMain) {
    _fetchItems();
  }

  void _changeLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  Future<void> _fetchItems() async {
    _changeLoading();
    postModel = await serviceMain.fetchItems();
    _changeLoading();
  }
}
