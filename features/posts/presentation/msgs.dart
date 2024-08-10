import 'dart:io';

void welcomeMsg() {
  print('''

Welcome to our posts app !!!
Please select the service you want:
1. get all posts
2. get post
3. add post
4. update post
5. delete post
6. Exit
*************************************

''');
}

void endTaskMsg() {
  print('''

***************************************
Done
***************************************

''');
}

String recieverMsg (String msg) {
  stdout.write('''

***************************************
please write $msg:''');
String input = stdin.readLineSync()!;
print('''
***************************************
''');
return input;
}

