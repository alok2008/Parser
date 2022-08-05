import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../home_screen.dart';
class NetworkDashBoard extends StatelessWidget {
  const NetworkDashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('AKASH'),
          ],
        ),
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height/2.2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(child: Image.asset('assets/images/akt.png'),
                              backgroundColor: Colors.transparent,),
                              Text(' AKT',
                                style: TextStyle(color: Colors.black.withOpacity(1),
                                    fontSize: 25
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.access_time,
                                  color:Colors.blue),
                              const SizedBox(width: 2,),
                              Text('BLOCK TIME',
                                  style: TextStyle(color: Colors.black.withOpacity(1),
                                    fontSize: 11,
                                  )
                              ),
                              Text('  6,079ms',
                                  style: TextStyle(color: Colors.black.withOpacity(1),
                                    fontSize: 12,
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[CircleAvatar(
                          backgroundColor: Colors.lightBlueAccent.withOpacity(.2),
                          radius: 76,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius:75,
                            child: CircleAvatar(
                              radius: 66,
                              backgroundColor: Colors.lightBlueAccent.withOpacity(.5),
                              child: CircleAvatar(
                                radius: 65,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 56,
                                  backgroundColor: Colors.lightBlueAccent.withOpacity(.7),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 55,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('\$0.23',
                                          style: TextStyle(color: Colors.black,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),),
                                        SizedBox(height: 4,),
                                        Text('+4.29%',
                                            style: TextStyle(color: Colors.lightGreen,
                                                fontSize: 13,

                                                fontWeight: FontWeight.bold)
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )],
                      ),
                      const SizedBox(height: 20),

                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Market Cap'),
                                Text('\$44,460,560.56')
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('24h Vol'),
                                Text('\$1,478,971.56')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: StaggeredGridView.countBuilder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                itemCount: 6,
                itemBuilder: (context,index){
                  return InfoCard(title1: 'Height',icon1: Icons.manage_accounts_rounded,titleValue1: '8734872');
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
          ),
         Padding(
           padding: const EdgeInsets.fromLTRB(18.0,0,18,18),
           child: Card(child:Padding(
             padding: const EdgeInsets.all(14.0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Icon(Icons.how_to_vote_outlined),
                 SizedBox(height: 6),
                 Text('Voting Power'),
                 SizedBox(height: 3),
                 Text('3/4',
                 style: TextStyle(
                   fontSize: 25,
                   fontWeight: FontWeight.bold
                 ),)
               ],
             ),
           )),
         ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18.0,0,18,18),
            child: Card(
              child: Column(
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Blocks'),
                      ),
                    TextButton(onPressed: null, child: Text('See more'),
                    ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                      Card(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('3446709'),
                                Text('10s Ago')
                              ],
                            ),
                            SizedBox(height: 4,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Txs'),
                                Text('0')
                              ],
                            ),
                            SizedBox(height: 4,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Time'),
                                Text('Yesterday, 12:49 PM')
                              ],
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                      Card(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('3446709'),
                                Text('10s Ago')
                              ],
                            ),
                            SizedBox(height: 4,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Txs'),
                                Text('0')
                              ],
                            ),
                            SizedBox(height: 4,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Time'),
                                Text('Yesterday, 12:49 PM')
                              ],
                            ),
                          ],
                        ),
                      )),
                    ),
                  )
                ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18.0,0,18,18),
            child: Card(
              child: Column(
                  children:[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Transaction'),
                        ),
                        TextButton(onPressed: null, child: Text('See more'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Card(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('3446709'),
                                  Text('10s Ago')
                                ],
                              ),
                              SizedBox(height: 4,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Txs'),
                                  Text('0')
                                ],
                              ),
                              SizedBox(height: 4,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Time'),
                                  Text('Yesterday, 12:49 PM')
                                ],
                              ),
                            ],
                          ),
                        )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Card(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('3446709'),
                                  Text('10s Ago')
                                ],
                              ),
                              SizedBox(height: 4,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Txs'),
                                  Text('0')
                                ],
                              ),
                              SizedBox(height: 4,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Time'),
                                  Text('Yesterday, 12:49 PM')
                                ],
                              ),
                            ],
                          ),
                        )),
                      ),
                    )
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
