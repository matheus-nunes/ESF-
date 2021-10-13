import 'package:esf/components/user_tile.dart';
import 'package:esf/provider/users.dart';
import 'package:esf/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Gerenciamento dos Profissionais'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.USER_FORM_COPY);
                /*   users.put(
                  User(name: 'paulo', email: 'Paulo@gmail',avatarUrl: 'https://cdn.pixabay.com/photo/2019/07/06/16/44/game-4320781_960_720.png'),
                ); */
                // users.remove(users.byIndex(1));
              },
              icon: Icon(Icons.add)),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
