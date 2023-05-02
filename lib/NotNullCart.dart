import 'package:flutter/material.dart';

class NotNullCart extends StatefulWidget {


  @override
  State<NotNullCart> createState() => _NotNullCartState();
}

class _NotNullCartState extends State<NotNullCart> {
  bool flag=true;
  bool flag2=true;
  bool flag3=true;
  bool flag4=true;
  int selectedindex2=2;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.delete,color: Colors.red),
        title: Text("سلة المشتريات",style: TextStyle(
            color: Colors.black
        )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 280),
            child: Row(
              children: [


                Text("منتجات"),
                Text("3"),
                Checkbox(value: flag, onChanged: (value) {
                  setState(() {
                    flag=value!;
                  });

                },),
              ],
            ),

          ),
          Expanded(
            child: ListView.builder(itemCount: 3,itemBuilder: (context, index) {
              return
                SizedBox(
                    height: 110,
                    width: 300,
                    child:
                    Card(
                      color: Colors.white,
                      child: Stack(

                        children: [
                         Positioned(left: 340,top: 25,child: Checkbox(value:index==0? flag2:index==1?flag3:flag4, onChanged: (value) {
                           setState(() {
                             index==0? flag2=value!:index==1?flag3=value!:flag4=value!;
                           });

                         },),),
                          Positioned(child:Image(image: AssetImage("images/img_6.png"),height: 100,width: 100),left: 250, ),
                          Positioned(child: Text("حذاء رياضي"),left: 180,top: 10),
                          Positioned(child:Text(":المقاس"),left: 200,top: 35 ),
                          Positioned(child: Text("42"),left: 180,top: 40 ),
                          Positioned(child: Text(":اللون"),top: 37,left: 150),
                          Positioned(child: CircleAvatar(radius: 6,backgroundColor: Colors.black,),left: 135,top: 42,),
                          Positioned(child: Text("18"),top: 70,left: 220,),

                          Positioned(child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Card(
                              color: Colors.brown.shade200,
                              child: Text("+"),
                            ) ,
                          ),bottom: 3,left: 40,),
                          Positioned(child: SizedBox(
                            height: 30,
                            width: 30,
                            child:    Card(
                              color: Colors.brown.shade500,
                              child: Text("-"),
                            ),
                          ),bottom: 3,),


                          Positioned(child: Text("1"),bottom: 2,left: 30,)
                        ],
                      ),
                    )
                );




            },),
          ),

           Divider(),



             Row(
              children: [
                Text("36"),
                Padding(padding: EdgeInsets.only(left: 300),child: Text("التكلفة "),) ,
              ],
            ),

          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: SizedBox(
              width: 350,
              height: 60,
              child:  Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  color: Colors.brown,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,left:140),
                    child: Text("شراء",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20

                    )),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:Colors.brown.shade400,

        onTap: (value) {
          selectedindex2=value;
        },
        currentIndex: selectedindex2,
        items: [

          BottomNavigationBarItem(icon: Icon(Icons.person,color:selectedindex2==0?Colors.brown:Colors.grey ),label: "", ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,color:selectedindex2==1?Colors.brown:Colors.grey),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart,color:selectedindex2==2?Colors.brown:Colors.grey),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,color:selectedindex2==3?Colors.brown:Colors.grey),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,color:selectedindex2==4?Colors.brown:Colors.grey),label: ""),

        ],
      ),
    );
  }
}
