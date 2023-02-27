import 'package:flutter/material.dart';
import 'package:gym/fragments/usersection.dart';
import '../constants.dart' as constants;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          constants.appTitle,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: IconButton(
              iconSize: 30,
              icon: const Icon(Icons.account_circle),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Expanded(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: UserSection()
              
        ),
      )),
    );
  }
}
