import 'package:flutter/material.dart';
import '../constants.dart' as constants;
class UserSection extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    Text(
                      constants.userSection, 
                      style: Theme.of(context).textTheme.bodyLarge
                    ),
                    Row(children: const [
                      UserTile(),
                      SizedBox(width: 10),
                      UserTile()
                    ],)
                    
          ]);
  }
}

class UserTile extends StatelessWidget {
  const UserTile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
            color: Colors.white, border: Border.all(color: Colors.black)),

      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 2,
              child: Text("Add User")),
            Container(
              padding: const EdgeInsets.all(8.0),,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [                
              ],),
            )
          ]),

          
      ),

    );
  }
}
