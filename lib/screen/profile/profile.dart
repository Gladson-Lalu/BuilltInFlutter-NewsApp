import 'package:flutter/material.dart';
import 'package:news/screen/profile/widgets/custom_tile.dart';
import '../../config/var/var.dart' as configVar;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  static const routeName = "ProfilePage";
  @override
  Widget build(BuildContext context) {
    const divider = Divider(
              color: Colors.black12,
              thickness: 2.0,
            );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 24,),onPressed: (){Navigator.pop(context);},),
    
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile',
              style: Theme.of(context).textTheme.headline4
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(configVar.profile),
                radius: 60,
              ),
            ),
            const Spacer(),
            const CustomTile(tileName: 'Username',name: 'Heidi Klum',),
            const Spacer(),
            divider,
            const Spacer(),
            const CustomTile(tileName: 'Email',name: 'abc@gmail.com',),
            const Spacer(),
            divider,
            const Spacer(),
            const CustomTile(tileName: 'Phone',name: '+91 8888888888',),
            const Spacer(),
            divider,
            const Spacer(),
            const CustomTile(tileName: 'Date of Birth', name: '20/09/1992'),
            const Spacer(),
            divider,
            const Spacer(),
            const CustomTile(tileName: 'Address' ,name: '123 Royal Street, NewYork'),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

