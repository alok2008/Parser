import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenscape_app/Controller/product_controller.dart';
import '../../backend files/akashproposals.dart';
import '../../widgets/NavigationDrawerWidget.dart';

class Proposals extends StatelessWidget {
 //final Proposal product=Proposal();
  final ProductController productController= Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title:const Text('Zenscape'),
        backgroundColor: Colors.lightBlueAccent,),
      body: isDataLoading?
      const Center(child: CircularProgressIndicator(),):
      Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Proposals',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: 700,
              child:Obx(()=> ListView.builder(
                reverse: true,
                physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: ProductController.productList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return
                      ProposalCard(ProductController.productList[index]);
                  }),
            ),
          ),
          )],
      )
      ,
    );
  }
}

class ProposalCard extends StatelessWidget {

  final Proposal product;
  const ProposalCard(this.product);
  @override
  Widget build(BuildContext context) {
    return Card(
    elevation: 2,
    shadowColor: Colors.black,

    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(product.proposalId!),
              SizedBox(
                width: 150,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(product.content!.title!,
                  style: const TextStyle(
                    color: Colors.blue
                  ),),
                ),
              ),
              ],
          ),
          const Divider(color: Colors.grey,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              //Text('product.proposalId!'),
              Text(product.status.toString(),
                style: TextStyle(
                    color: Colors.green
                ),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Text('voting starts'),
              Text(product.votingStartTime.toString(),
                style: TextStyle(

                ),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('voting ends'),
              Text(product.votingEndTime.toString(),
                style: TextStyle(
                ),),
            ],
          ),
        ],
      ), //Column
    ), //SizedBox
                    );
  }
}
