import 'package:flutter/material.dart';
import 'package:flutter_application_11/adduser.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(elevation: 16.0,
          backgroundColor: Colors.white,
          
          width: 300.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(20.0),

            ),
          ),
          semanticLabel: 'قائمة التنقل الرئيسية',
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(' Tasneem Alasbahi'),
                accountEmail: Text('+967 77 483 2386'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                      'assets/images/TasneemPic.jpeg'),
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 79, 145, 169),
                /*  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/TasneemPic.jpeg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.blue.withOpacity(0.7),

                      BlendMode.dstATop,
                    ),
                  ),*/
                ),
                margin: EdgeInsets.only(bottom: 8.0),
                onDetailsPressed: () {
                  print('تم النقر على التفاصيل');
                },
              ),

              ListTile(
                leading: Icon(Icons.person, color: Colors.blue),
                title: Text('My Profile'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
               Divider(),
               ListTile(
                leading: Icon(Icons.group, color: Colors.blue),
                title: Text('New Group'),
                onTap: () {
                  Navigator.pop(context);
                 
                },
              ),


              ListTile(
                leading: Icon(Icons.person_outline, color: Colors.blue),
                title: Text('Contacts'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: Icon(Icons.person_outline, color: Colors.blue),
                title: Text('Add user'),
                onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Adduser(),));
                },
              ),

              ListTile(
                leading: Icon(Icons.call, color: Colors.blue),
                title: Text('Calls'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: Icon(Icons.bookmark_border, color: Colors.blue),
                title: Text('Saved Messages'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              




              ListTile(
                leading: Icon(Icons.settings, color: Colors.blue),

                title: Text('Settengs'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),

              ListTile(
                leading: Icon(Icons.person_add, color: Colors.blue),
                title: Text('Invite Friends'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),


              ListTile(
                leading: Icon(Icons.help_outline, color: Colors.blue),
                title: Text('Telegram Features'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  'Additional choices ',
                  style: TextStyle(

                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                ),
              ),

              ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.red),
                title: Text('Exit '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),);
  }
}