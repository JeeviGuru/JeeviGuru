import 'package:mobx/mobx.dart';
import 'package:mobx_api_data/api/data_api.dart';

import '../model_class/model_data.dart';

part 'post_store.g.dart';

class PostStore = _PostStore with _$PostStore;

abstract class _PostStore with Store {
  final _postApi = PostApi();

  // store variables
  @observable
  List<Posts> posts = [];

  // actions
  @action
  Future getPosts() async {
    posts = await _postApi.getPosts();
  }
}
