import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zenscape_app/Screens/explorer.dart';
import 'package:zenscape_app/Screens/gettingStarted.dart';
import 'package:zenscape_app/Screens/landing_page.dart';
import 'package:zenscape_app/widgets/NavigationDrawerWidget.dart';
import 'package:zenscape_app/widgets/Popup_model/hero_dialogue_route.dart';
import 'Controller/product_controller.dart';
import 'Screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/network_list.dart';

dynamic initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = (prefs.getInt("initScreen"));
  runApp(const MyApp());
  await prefs.setInt("initScreen", 0);
  print('initScreen $initScreen');

}

// void main(){
//   runApp(MyApp());
// }
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      title: 'App Title',
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.system,
      /* ThemeMode.system to follow system theme,
         ThemeMode.light for light theme,
         ThemeMode.dark for dark theme
      */
      debugShowCheckedModeBanner: false,
      home:  initScreen ==null ?  GettingStarted():const MainApp()
    );
  }
}
enum TabItem {home, explore}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();

}

class _MainAppState extends State<MainApp> {
  final List<TabItem> _bottomTabs = [
    TabItem.home,
    TabItem.explore,
   // TabItem.notification,
   // TabItem.setting
  ];
  TabItem _currentItem = TabItem.home;
  @override

  Widget build(BuildContext context) {

    ProductController.fetchProducts;
    return Scaffold(
      endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
                'Hey there!',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Networks',
                    style: TextStyle(color: Colors.white),),
                    SizedBox(width: 6,),
                    Icon(Icons.now_widgets_outlined,
                    color: Colors.white,),
                  ],
                ),
                  onPressed: () {
                Navigator.of(context).push(
                HeroDialogRoute( settings: const RouteSettings(),
                builder: (context) => const Center(
                child: NetworkList()),),);},
                 ),
                const IconButton(onPressed: null, icon: Icon(Icons.notifications))
              ],
            ),


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.widgets),
        onPressed: ()async{
          final Uri url= Uri.parse('https://zenscape.one');
          if (await launchUrl (url))
          {await launchUrl (url);
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked ,

     // backgroundColor: const Color(0xFF1A1C29),
      bottomNavigationBar: _bottomNavigationBar(),
      body: _buildScreen(),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF343744).withOpacity(1),
      type: BottomNavigationBarType.fixed,
      items: _bottomTabs.map((tabItem) => _bottomNavigationBarItem(_icon(tabItem), tabItem)).toList(),
      onTap: _onSelectTab,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem(IconData icon,
      TabItem tabItem) {
    final Color color =
    _currentItem == tabItem ? Colors.white : Colors.white54;

    return BottomNavigationBarItem(icon: Icon(icon, color: color), label: '');
  }

  void _onSelectTab(int index) {
    TabItem selectedTabItem = _bottomTabs[index];

    setState(() {
      _currentItem = selectedTabItem;
    });
  }

  IconData _icon(TabItem item) {
    switch (item) {
      case TabItem.home:
        return Icons.account_balance_wallet;
      case TabItem.explore:
        return Icons.explore;
      // case TabItem.notification:
      //   return Icons.notifications;
      // case TabItem.setting:
      //   return Icons.settings;
      default:
        throw 'Unknown $item';
    }
  }

  Widget _buildScreen() {
    switch (_currentItem) {
      case TabItem.home:
        return const LandingPage();
      case TabItem.explore:
       return const Explorer();
     // case TabItem.notification:
      // return HomeScreen()
     // case TabItem.setting:
       //return ;
      default:
        return const HomeScreen();
    }
  }
}
