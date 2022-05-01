
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Drawe extends StatelessWidget {
  // const Drawe({Key? key}) : super(key: key);

  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'kaira advani';
    final email = 'Kairaadvani@gmail.com';
    final urlImage =
        'https://www.thenews.com.pk/assets/uploads/updates/2021-12-26/920058_6194067_Kiara-Advani_updates.JPG';

    return Container(
      width: 260,
      child: Drawer(
        child: Material(
          color: Colors.black,
          child: ListView(
            children: <Widget>[
              buildHeader(
                urlImage: urlImage,
                name: name,
                email: email,
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UserPage(
                    name: 'Sarah Abs',
                    urlImage: urlImage,
                  ),
                )
                ),
              ),
              Container(
                padding: padding,
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    buildSearchField(),
                    const SizedBox(height: 24),
                    buildMenuItem(
                      text: 'People',
                      icon: Icons.people,
                      onClicked: () => selectedItem(context, 0),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Favourites',
                      icon: Icons.favorite_border,
                      onClicked: () => selectedItem(context, 1),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Workflow',
                      icon: Icons.workspaces_outline,
                      onClicked: () => selectedItem(context, 2),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Updates',
                      icon: Icons.update,
                      onClicked: () => selectedItem(context, 3),
                    ),
                    const SizedBox(height: 24),
                    Divider(color: Colors.tealAccent),
                    const SizedBox(height: 24),
                    buildMenuItem(
                      text: 'Plugins',
                      icon: Icons.account_tree_outlined,
                      onClicked: () => selectedItem(context, 4),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Notifications',
                      icon: Icons.notifications_outlined,
                      onClicked: () => selectedItem(context, 5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.tealAccent),
                  ),
                  const SizedBox(height: 4),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(
                        email,
                        maxLines: 2,
                        style: TextStyle(fontSize: 12, color: Colors.tealAccent),
                      ),
                ),

                ],
              ),
              Spacer(),

            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final color = Colors.tealAccent;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.tealAccent;
    final hoverColor = Colors.tealAccent;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    // Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FavouritesPage(),
        ));
        break;
    }
  }
}
//
// class ButtonWidget extends StatelessWidget {
//   final IconData icon;
//   final String text;
//   final VoidCallback onClicked;
//
//   const ButtonWidget({
//     Key? key,
//     required this.icon,
//     required this.text,
//     required this.onClicked,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) => ElevatedButton(
//     style: ElevatedButton.styleFrom(
//       minimumSize: Size.fromHeight(50),
//     ),
//     child: buildContent(),
//     onPressed: onClicked,
//   );
//
//   Widget buildContent() => Row(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//       Icon(icon, size: 48),
//       SizedBox(width: 46),
//       Text(
//         text,
//         style: TextStyle(fontSize: 22, color: Colors.white),
//       ),
//     ],
//   );
// }



class UserPage extends StatelessWidget {
  final String name;
  final String urlImage;



  const UserPage({
    Key? key,
    required this.name,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black,
      title: Text(name),
      centerTitle: true,
    ),
    body: Image.network(
      urlImage,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    ),
  );
}

class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    //drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('People'),
      centerTitle: true,
      backgroundColor: Colors.black,
    ),
  );
}


class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    //drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('People'),
      centerTitle: true,
      backgroundColor: Colors.black,
    ),
  );
}