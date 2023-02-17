import 'package:flutter/material.dart';
import 'package:gym/fragments/usersection.dart';
import '../constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appTitle,
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(child: Text("User Section")),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(children: [
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.white54,
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.white54,
                )
              ]),
            )
          ]),
        ),
      )),
    );
  }
}
