import 'dart:math';
import 'package:esf/data/dummy_users.dart';
import 'package:esf/models/user.dart';
import 'package:flutter/material.dart';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(User user) {
    /*  if (user.isnull()) {
      return;
    }  */

    if (user.id != null && _items.containsKey(user.id)) {
      _items.update(
          user.id.toString(),
          (_) => User(
                id: user.id.toString(),
                name: user.name.toString(),
                email: user.email.toString(),
                avatarUrl: user.avatarUrl.toString(),
              ));
    } else {
      //adicionar
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
          id,
          () => User(
                id: id.toString(),
                name: user.name.toString(),
                email: user.email.toString(),
                avatarUrl: user.avatarUrl.toString(),
              ));
    }
    //alterar

    notifyListeners();
  }

  void remove(User user) {
    if (user.id != null) _items.remove(user.id);
    notifyListeners();
  }
}
