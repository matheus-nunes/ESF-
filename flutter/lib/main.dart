import 'package:esf/login/login.dart';
import 'package:esf/provider/users.dart';
import 'package:esf/routes/app_routes.dart';
import 'package:esf/user_form%20add.dart';
import 'package:esf/user_form.dart';
import 'package:provider/provider.dart';
import 'package:esf/user_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        )
      ],
      child: MaterialApp(
          title: 'ESF +',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          routes: {
            AppRoutes.HOME: (_) => Login(),
            AppRoutes.USER_FORM: (_) => UserForm(),
            AppRoutes.USER_FORM_COPY: (_) => UserFormCopy(),
          }),
    );
  }
}
