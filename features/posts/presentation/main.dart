import 'dart:io';

import '../data/model/post_model.dart';
import 'di.dart';
import 'msgs.dart';

void main() {
  while (1 == 1) {
    welcomeMsg();
    String txt = recieverMsg("Enter your option");
     int opt = 0;
    if(RegExp(r'^[0-9]$').hasMatch(txt)){
     opt = int.parse(txt);
    }else{
      if(txt.toLowerCase().contains("exit")){
        exit(0);
      }
      print("Invalid input");
      continue;
    }

    switch (opt) {
      case 1:
        getAllPosts.call();
        break;

      case 2:
        getPost.call(int.parse(recieverMsg("Enter The id of post")));
        break;

      case 3:
        String title = recieverMsg("Enter the title of post");
        String body = recieverMsg("Enter the body of post");
        PostModel post = PostModel(title: title, body: body);
        addPost.call(post);
        break;

      case 4:
      PostModel post =getPost.call(int.parse(
        recieverMsg("Enter The id of post")));
      if(post.id != -1){
        String title = recieverMsg("Enter the updated title of post");
        String body = recieverMsg("Enter the updated body of post");
        PostModel ipost = PostModel(id:post.id,title: title, body: body);
        updatePost.call(ipost);
      }
     break;
     
    case 5:
        deletePost.call(int.parse(recieverMsg("Enter The id of" "\n" "post you want to delete")));
        break;

        case 6:
          exit(0);
      default:
        print("Wrong input");
    }
  }
}
