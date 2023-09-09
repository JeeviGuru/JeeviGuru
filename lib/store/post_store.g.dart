// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PostStore on _PostStore, Store {
  late final _$postsAtom = Atom(name: '_PostStore.posts', context: context);

  @override
  List<Posts> get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(List<Posts> value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  late final _$getPostsAsyncAction =
      AsyncAction('_PostStore.getPosts', context: context);

  @override
  Future<dynamic> getPosts() {
    return _$getPostsAsyncAction.run(() => super.getPosts());
  }

  @override
  String toString() {
    return '''
posts: ${posts}
    ''';
  }
}
