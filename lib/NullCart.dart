import 'package:flutter/material.dart';

class NullCart extends StatefulWidget {


  @override
  State<NullCart> createState() => _NullCartState();
}

class _NullCartState extends State<NullCart> {
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Padding(
           padding: const EdgeInsets.only(left: 330),
           child: Row(
             children: [
               Text("منتج",style: TextStyle(
                 color: Colors.grey
               )),
        Text("00",style: TextStyle(
                   color: Colors.grey
               )),


             ],
           ),
         ),
          SizedBox(
            width: 100,
            height: 100,
          ),
          Image(image: AssetImage("images/img_7.png"),width: 300,),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("لم تقم بأضافة اي منتج الى السلة ماخرأ "),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 60,
              child:       Card(
color: Color(0xff957255),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [



                        Text("اذهب الى التسوق الان",style: TextStyle(
                            color: Colors.white
                        ),),



                    ],
                  ))  ,
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
