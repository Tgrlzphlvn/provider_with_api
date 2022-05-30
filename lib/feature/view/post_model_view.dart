import 'package:flutter/material.dart';
import 'package:json_place_holder_sample/core/theme/dark_theme.dart';
import 'package:json_place_holder_sample/feature/service/service.dart';
import 'package:json_place_holder_sample/feature/viewmodel/post_model_view_model.dart';
import 'package:json_place_holder_sample/product/constants/project_strings.dart';
import 'package:json_place_holder_sample/product/service/project_service.dart';
import 'package:provider/provider.dart';

class PostModelView extends StatelessWidget with ProjectService {
  PostModelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PostmodelViewModel>(
      create: (context) => PostmodelViewModel(
        Service(service),
      ),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: ProjectStrings.postModelViewTitle,
          ),
          body: ListView.builder(
            itemCount: context.watch<PostmodelViewModel>().postModel?.length ?? 0,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    title: Text(
                        context.read<PostmodelViewModel>().postModel?[index].title ??
                            ''),
                    subtitle: Text(
                      context.read<PostmodelViewModel>().postModel?[index].body ??
                          '',
                      style: DarkTheme().themeData.textTheme.subtitle2,
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
