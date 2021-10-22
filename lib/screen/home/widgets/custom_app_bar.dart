import 'package:flutter/material.dart';
import '../../../config/var/var.dart' as configvar;
import '../../profile.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              child: CircleAvatar(
                radius: 26,
                backgroundImage: NetworkImage(configvar.profile),
              ),
            ),
            const SizedBox(width: 15),
            Text('12 Sept, 2021', style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
        Icon(Icons.search, size: 28)
      ],
    );
  }
}