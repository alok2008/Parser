import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  TextEditingController nameController=TextEditingController();
  String fullName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width/1.1,
                height: 40,
                margin: const EdgeInsets.all(20),
                child: TextField(

                  controller: nameController,
                  decoration: const InputDecoration(

                    border: OutlineInputBorder(
                    ),
                    hintText: 'Select a chain',
                    fillColor: Colors.grey,
                    prefixIcon: Icon(Icons.search),

                  ),
                  onChanged: (text) {
                    setState(() {
                      fullName = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //fullName = nameController.text;
                    });
                  },
                )),
            SizedBox(
                height: 199,
                child:  Container(
                          margin: const EdgeInsets.only(right: 10,top: 10),
                          height: 199,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            //color: Color(0xFFD4F1FF),
                            gradient: LinearGradient(
                              colors: [ Colors.white, const Color(0xFFD4F1FF)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Stack(
                            children: const <Widget>[
                              Positioned(
                                  left:75,
                                  top: 40,
                                  child: Text('India\'s Most Valued \n Crypto Company' ,
                                      style:TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                      ),)
                              ),
                              // Positioned(
                              //     left:39,
                              //     top: 75,
                              //     child: Text('advertisement details',
                              //         style:TextStyle(
                              //             fontWeight: FontWeight.w500,
                              //             fontSize: 14,
                              //             color: Colors.white
                              //         ))
                              // ),
                              Positioned(
                                  left:39,
                                  bottom: 60,
                                  child: Text('1',
                                      style:TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                          color: Colors.black
                                      ))
                              ),
                              Positioned(
                                  left:39,
                                  bottom: 10,
                                  child: ElevatedButton(
                                    onPressed: null,
                                    child: Text('user',
                                        style:TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                            color: Colors.white
                                        )),
                                  )
                              ),


                          ]),
                      ),),
            StaggeredGridView.countBuilder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                itemCount: 10,
                itemBuilder: (context,index){
                  return const NetworkCard();
                },
                staggeredTileBuilder: (index) => const StaggeredTile.fit(1)),
          ],
        ),
      ),
    );
  }
}

class NetworkCard extends StatelessWidget {
  const NetworkCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.fromLTRB(10,10,10,10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [const Color(0xFFD4F1FF).withOpacity(.2), const Color(0xFFD4F1FF)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(5.0,5,5,5),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                ),
                Text('CMDX \ncomdex'),
              ],
            ),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text: 'APR ',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(text: '160%', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Rewards ',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(text: '160%', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const CupertinoButton(onPressed: null, child: Text('Stake'))
          ],
        ),
      ),
    );
  }
}
