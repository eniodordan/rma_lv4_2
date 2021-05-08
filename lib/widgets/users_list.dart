import 'package:flutter/material.dart';
import 'package:rma_lv4_2/models/user.dart';
import 'package:rma_lv4_2/widgets/user_tile.dart';

class UsersList extends StatelessWidget {
  final List<User> users;

  UsersList({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return UserTile(user);
      },
    );
  }
}
