import 'package:esf/models/user.dart';
import 'package:esf/provider/users.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserFormCopy extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Formulário de Usuário'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  _form.currentState!.save();
                  Provider.of<Users>(context, listen: false).put(
                    User(
                      id: _formData['id'].toString(),
                      name: _formData['name'].toString(),
                      email: _formData['email'].toString(),
                      avatarUrl: _formData['avatarUrl'].toString(),
                    ),
                  );
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.save))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
              key: _form,
              child: Column(
                children: <Widget>[
                  TextFormField(
                      decoration: InputDecoration(labelText: 'Nome'),
                      onSaved: (value) => _formData['name'] = value!),
                  TextFormField(
                      decoration: InputDecoration(labelText: 'Profissão'),
                      onSaved: (value) => _formData['email'] = value!),
                  TextFormField(
                      decoration: InputDecoration(labelText: 'URL DO AVATAR'),
                      onSaved: (value) => _formData['avatarUrl'] = value!)
                ],
              )),
        ));
  }
}
