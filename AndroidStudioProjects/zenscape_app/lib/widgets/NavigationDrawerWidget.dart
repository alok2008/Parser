import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenscape_app/Screens/AkashNetwork/Validators.dart';
import 'package:zenscape_app/Screens/AkashNetwork/blocks.dart';
import 'package:zenscape_app/Screens/AkashNetwork/IBC%20Relayers.dart';
import 'package:zenscape_app/Screens/AkashNetwork/dashboard.dart';
import 'package:zenscape_app/Screens/home_screen.dart';
import 'package:zenscape_app/Screens/AkashNetwork/proposals.dart';

import '../Controller/product_controller.dart';
import '../Screens/AkashNetwork/transactions.dart';

bool isDataLoading=false;
class NavigationDrawerWidget extends StatefulWidget {
  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  bool togglestate=false;
  @override
  Widget build(BuildContext context) {
    const name = 'ZENSCAPE';
    const email = 'zenscape.one';

    return Drawer(
      child: Material(
        color: Colors.lightBlueAccent,
        child: ListView(
          children: <Widget>[
            buildHeader(
              name: name,
              email: email,
              onClicked: ()
              => Get.to(const HomeScreen()),

            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  //buildSearchField(),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'DASHBOARD',
                    icon: Icons.people,
                     onClicked: () {
                      setState(() => togglestate = true);
                      print(togglestate
                      );
                      return selectedItem(context, 0);
                    },
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'VALIDATOR',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'BLOCKS',
                    icon: Icons.workspaces_outline,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'TRANSACTIONS',
                    icon: Icons.update,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 24),
                  const Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'PROPOSALS',
                    icon: Icons.account_tree_outlined,
                    onClicked: () {
                      ProductController.fetchProducts();

                      if (ProductController.productList.isEmpty==true){
                       isDataLoading==true;

                      }
                      else{ selectedItem(context, 4);
                      }
                    }
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'IBC RELAYERS',
                    icon: Icons.notifications_outlined,
                    onClicked: () => selectedItem(context, 5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              const CircleAvatar(radius: 30,
                  backgroundColor: Colors.white,),
                 // backgroundImage: AssetImage('lib/Symbol.png')),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              const Spacer(),
              const CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              )
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    const color = Colors.white;

    return TextField(
      style: const TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: const TextStyle(color: color),
        prefixIcon: const Icon(Icons.search, color: color),
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
    const color = Colors.white;
    const hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: togglestate? Colors.blue: color),
      title: Text(text, style: const TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
      tileColor: Colors.lightBlueAccent,


    );
  }

  void selectedItem(BuildContext context, int index) {
   Get.back();

    switch (index) {
      case 0:
        Get.to(()=>NetworkDashBoard());
        break;
      case 1:
        Get.to(()=>Validators());
        break;
      case 2:
        Get.to(()=>Blocks());
        break;
      case 3:
        Get.to(()=>Txs());
        break;
      case 4:
        Get.to(()=>Proposals());
        break;
      case 5:
        Get.to(()=>IBCRelayers());
        break;
      default:
        CircularProgressIndicator();
    }
  }
}