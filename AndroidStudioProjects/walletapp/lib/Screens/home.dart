import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // final Uri _launchUrl = Uri.parse('https//:www.google.com');
  //
  // Future <void> _Url() async {
  //   if (!await launchUrl(_launchUrl)) {
  //     throw 'Could not launch $_launchUrl';
  //   }}
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: const Color(0xFF1A1C29),
        // bottomNavigationBar: _bottomNavigationBar,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF373F51),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.tag,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 70,
                          decoration: const BoxDecoration(
                              color: Color(0xFF373F51),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 5,
                    // ),
                    const Center(
                      child: Text('Current Wallet Balance',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text('\$3569.46',
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: const Color(0xFF373F51),
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                                child: Image.asset('lib/Images/icon.png'),
                                radius: 10),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Smart Chain BEP-20',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          DropdownButton(
                            items: null,
                            onChanged: null,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Card(
                      color: const Color(0xFF1A1C29),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                            child: Text(
                              'EverETH ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Text(
                              'Swap ',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          SizedBox(width: 160),
                          Icon(Icons.more_horiz_sharp, color: Colors.white),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 10),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: 350,
                      decoration: BoxDecoration(
                          color: const Color(0xFF373F51),
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
                              child: Text('From',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 15,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFF1A1C29),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: TextField(
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Balance',
                                    hintStyle: TextStyle(
                                        fontSize: 12.0, color: Colors.white54),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
                              child: Text('To (Estimated)',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 15,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFF1A1C29),
                                  borderRadius: BorderRadius.circular(40)),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Balance',
                                    hintStyle: TextStyle(
                                        fontSize: 12.0, color: Colors.white54),

                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            color: Colors.white24,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, top: 10, right: 30, bottom: 10),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      const Color(0xFF6D5DFE)),
                                ),
                                onPressed: null,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.compare_arrows),
                                    Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Text('Convert',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                          )),
                                    ),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Total',
                                  style: TextStyle(color: Colors.white70),
                                ),
                                Text(
                                  '581.00 BUSD',
                                  style: TextStyle(color: Colors.white70),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(0, -30, 0),
                child: FloatingActionButton(onPressed: () async{
                  final Uri url= Uri.parse('https://www.keplr.app/');
                  if (await launchUrl(url))
                      {await launchUrl(url);}

                }, child: const Icon(Icons.bar_chart,),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  backgroundColor: const Color(0xFF6D5DFE),
                ),
              ),
            ],
          ),
        ),

        // floatingActionButton:
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
    }
  }

