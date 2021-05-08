import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:rma_lv4_2/models/user.dart';
import 'package:rma_lv4_2/services/networking.dart';
import 'package:rma_lv4_2/widgets/users_list.dart';

class UsersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('rma_lv4_2'),
      ),
      body: SafeArea(
        child: FutureBuilder<List<User>>(
          future: fetchUsers(http.Client()),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? UsersList(users: snapshot.data!)
                : Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
