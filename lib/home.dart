import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'db_helper.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {}, child: Text('Update')),
          ElevatedButton(onPressed: () {}, child: Text('Deleta')),
          ElevatedButton(
              onPressed: () async {
                await DatabaseHelper.instance
                    .insert({DatabaseHelper.columnName: 'Shehroz'});
              },
              child: Text('Create')),
          ElevatedButton(
              onPressed: () async {
                var dbquery = await DatabaseHelper.instance.queryDatabase();
                print("Hello ji");
                print(dbquery);
              },
              child: Text('Read')),
        ],
      ),
    );
  }
}
