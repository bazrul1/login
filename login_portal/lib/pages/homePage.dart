import 'package:flutter/material.dart';
import 'package:login_portal/pages/loginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
logout () async {
  SharedPreferences sp = await SharedPreferences.getInstance();
  sp.setString("login", "false");
  Navigator.push(context, MaterialPageRoute(builder: (_) => Login1()));
}

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 115, 255, 255),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 30,
          ),
          SizedBox(width: 20),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDzq2q-AiqTdGdqzTPrIZOGqXGOVjAhPLAx1jT3FXaQGP6-lOHaWfIa0EuQxfKBe6MwYo&usqp=CAU'),
                  fit: BoxFit.cover,
                ),
              ),
            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'SOBUJ APK',
                      style: TextStyle(
                        
                        color: const Color.fromARGB(255, 4, 176, 179),
                        fontSize: 25,fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.event_available),
              title: Text('My Events'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center ,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Home Page",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(child: Text('Logout'), onTap: () => logout()),
          ],
        ),
      ),
    );
  }
}
