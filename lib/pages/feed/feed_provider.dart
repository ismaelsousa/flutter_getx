import 'package:getx/models/post.dart';
import 'package:getx/services/api_request.dart';

class FeedProvider {
  void getPostList({
    Function()? beforeSend,
    Function(List<Post> data)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    ApiRequest(url: 'https://jsonplaceholder.typicode.com/posts', data: null)
        .get(
            beforeSend: () => {if (beforeSend != null) beforeSend()},
            onSuccess: (data) {
              if (onSuccess != null)
                onSuccess((data as List)
                    .map((postJson) => Post.fromJson(postJson))
                    .toList());
            },
            onError: (error) =>
                {if (error != null && onError != null) onError(error)});
  }
}
