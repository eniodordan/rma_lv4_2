import 'package:flutter/material.dart';
import 'package:rma_lv4_2/models/user.dart';

class UserTile extends StatelessWidget {
  final User user;

  UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // API ain't providing valid avatar urls
      // leading: Image.network(user.avatar),
      title: Text(user.name),
      subtitle: Text(user.email),
    );
  }
}
