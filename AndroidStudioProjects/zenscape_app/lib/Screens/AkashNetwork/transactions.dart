import 'package:flutter/material.dart';
class Txs extends StatefulWidget {
  const Txs({Key? key}) : super(key: key);

  @override
  State<Txs> createState() => _TxsState();
}

class _TxsState extends State<Txs> {
  TextEditingController nameController=TextEditingController();
  String txHash='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('TRANSACTIONS',
                style:TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                )),
          ],
        ),
      ),
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
                      txHash = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //fullName = nameController.text;
                    });
                  },
                )),
            ListView.builder(
                reverse: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return
                    Card(
                      margin: EdgeInsets.all(14),
                      child: Column(
                          children:[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                    Text('123456',
                                        style:TextStyle(
                                            fontWeight: FontWeight.bold
                                        )),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey[100],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text('10s ago',
                                            style:TextStyle(
                                              fontSize: 10,
                                                color: Colors.black.withOpacity(.5),
                                                fontWeight: FontWeight.bold
                                            )),
                                      ),
                                    )
                                  ]
                              ),

                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8,4.0,4,4),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                    Text('Amount',
                                        style:TextStyle(
                                        )),
                                    Text('cban123..ybg',
                                        style:TextStyle(
                                        ))
                                  ]
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8,4.0,4,4),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                    Text('Fee',
                                        style:TextStyle(
                                        )),
                                    Text('AUDIT.one',
                                        style:TextStyle(
                                        ))
                                  ]
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8,4.0,4,4),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                    Text('Height',
                                        style:TextStyle(
                                        )),
                                    Text('0',
                                        style:TextStyle(
                                        ))
                                  ]
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8,4.0,4,4),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                    Text('Type',
                                        style:TextStyle(
                                        )),
                                    Text('2022-4-12 19:55:26',
                                        style:TextStyle(
                                        ))
                                  ]
                              ),

                            ),

                          ]
                      ),
                    );
                }),
          ],
        ),
      ),
    );
  }
}
