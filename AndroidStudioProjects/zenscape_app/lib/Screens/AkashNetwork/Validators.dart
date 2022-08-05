import 'package:flutter/material.dart';
class Validators extends StatefulWidget {
  const Validators({Key? key}) : super(key: key);

  @override
  State<Validators> createState() => _ValidatorsState();
}
class _ValidatorsState extends State<Validators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text('VALIDATORS'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          ListView.builder(
          reverse: true,
    physics: NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: 6,
    itemBuilder: (BuildContext context, int index) {
    return Container(
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
        height: MediaQuery.of(context).size.height/2.6,
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
                          Text('AUDIT.ONE',
                            style: TextStyle(color: Colors.black.withOpacity(1),
                                fontSize: 20
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 2,),
                          Text('Partcipation',
                              style: TextStyle(color: Colors.black.withOpacity(1),
                                fontSize: 11,
                              )
                          ),
                          Text(' 5/7',
                              style: TextStyle(color: Colors.black.withOpacity(1),
                                fontSize: 12,
                              )
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 5,),
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
                                    Text('440473',
                                      style: TextStyle(color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),),
                                    SizedBox(height: 4,),
                                    Text('4.71',
                                        style: TextStyle(color: Colors.black,
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
                  const SizedBox(height: 5),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(12,4,12,4),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Uptime'),
                            Text('100%')
                          ],
                        ),
                        SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Commission'),
                            Text('7%')
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
    );


    }),
    ]),
      ));
  }
}
