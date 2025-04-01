import 'package:blog_mobile/pages/list-artcle/listArticle.dart';
import 'package:blog_mobile/pages/login/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main(){

  runApp(ProviderScope(child: Myapp()));

}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }

}