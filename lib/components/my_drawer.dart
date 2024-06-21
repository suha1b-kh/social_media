import 'package:flutter/material.dart';

Widget myDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: Theme.of(context).colorScheme.background,
    child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          decoration:
              BoxDecoration(color: Theme.of(context).colorScheme.background),
          //TODO: put user info from firebase
          accountName: const Text("UserName"),
          accountEmail: const Text("abs@gmail.com"),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              child: Text(
                "US",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ListTile(
          onTap: () {
            //TODO: navigate to home
          },
          leading: Icon(Icons.home_rounded,
              color: Theme.of(context).colorScheme.inversePrimary),
          title: const Text("Home Page"),
        ),
        ListTile(
          onTap: () {
            //TODO: navigate to Profile
          },
          leading: Icon(Icons.person,
              color: Theme.of(context).colorScheme.inversePrimary),
          title: const Text("My Profile"),
        ),
        ListTile(
          onTap: () {
            //TODO: Logout
          },
          leading: Icon(
            Icons.logout,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          title: const Text("Log out"),
        )
      ],
    ),
  );
}
