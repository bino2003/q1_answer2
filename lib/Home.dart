import 'package:flutter/material.dart';
import 'package:q1_answer/Product.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController controller=PageController(initialPage: 0);
  Icon icon=Icon(Icons.favorite);
  List<Product> productlist=[Product("حذاء رياضي","نايكي","18","ترند","20","images/img_4.png","جديد")
    ,Product("حذاء رياضي","كاب","18","ترند","Null","images/img_4.png","Null"),
    Product("بلوزة موضة","اورجينال","18","Null","20","images/img_4.png","Null")
    ,Product("شرط قطن","قوتونيل","18","Null","Null","images/img_4.png","جديد")];



  int selectedindex=0;
  int selectedindex2=0;
  bool isfavourit=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        leading: Image(image: AssetImage("images/img_3.png")),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Image(image: AssetImage("images/img_1.png"),width: 30,height: 30),
        ],
        title: Text("اهلا وسهلا", style: TextStyle(
          color: Colors.black,

          fontSize: 20,
        )), centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(

            height: 50,
            width: 350,
            child:    Card(

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Text("..ابحث عن تيشيرتات,قمصان",style: TextStyle(
                        color: Colors.grey
                    ),),
                    Icon(Icons.search),

                  ],
                )) ,
          ),



          SizedBox(
            width: 350,
            height: 170,
            child: PageView(

              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  selectedindex=value;
                });
              },
              children: [



                Stack(

                  children: [



                    Image(image: AssetImage("images/img.png")),

                    Positioned(left: 150,top: 20,child: Text("عروض دمار لأرخص الأسعار",style: TextStyle(

                        fontSize: 20,

                        color: Color(0xffFFFFFF)

                    ),

                    ), ),

                    Positioned(left: 210,top: 60,child:  Text(" حملة تخفيضات الصيف",style: TextStyle(

                        fontSize: 16,

                        color: Color(0xffFFFFFF)

                    )),)





                  ],

                ),
                Stack(

                  children: [



                    Image(image: AssetImage("images/img.png")),

                    Positioned(left: 150,top: 20,child: Text("عروض دمار لأرخص الأسعار",style: TextStyle(

                        fontSize: 20,

                        color: Color(0xffFFFFFF)

                    ),

                    ), ),

                    Positioned(left: 210,top: 60,child:  Text(" حملة تخفيضات الصيف",style: TextStyle(

                        fontSize: 16,

                        color: Color(0xffFFFFFF)

                    )),)





                  ],

                ),
                Stack(

                  children: [



                    Image(image: AssetImage("images/img.png")),

                    Positioned(left: 150,top: 20,child: Text("عروض دمار لأرخص الأسعار",style: TextStyle(

                        fontSize: 20,

                        color: Color(0xffFFFFFF)

                    ),

                    ), ),

                    Positioned(left: 210,top: 60,child:  Text(" حملة تخفيضات الصيف",style: TextStyle(

                        fontSize: 16,

                        color: Color(0xffFFFFFF)

                    )),)





                  ],

                ),

                Stack(
                  children: [

                    Image(image: AssetImage("images/img.png")),
                    Positioned(left: 150,top: 20,child: Text("عروض دمار لأرخص الأسعار",style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffFFFFFF)
                    ),
                    ), ),
                    Positioned(left: 210,top: 60,child:  Text(" حملة تخفيضات الصيف",style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffFFFFFF)
                    )),)


                  ],
                ),
                Stack(
                  children: [

                    Image(image: AssetImage("images/img.png")),
                    Positioned(left: 150,top: 20,child: Text("عروض دمار لأرخص الأسعار",style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffFFFFFF)
                    ),
                    ), ),
                    Positioned(left: 210,top: 60,child:  Text(" حملة تخفيضات الصيف",style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffFFFFFF)
                    )),)


                  ],
                ),



              ],),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 5,backgroundColor: selectedindex==0?Colors.black:Colors.grey,),
              CircleAvatar(radius: 5,backgroundColor: selectedindex==1?Colors.black:Colors.grey,),
              CircleAvatar(radius: 5,backgroundColor: selectedindex==2?Colors.black:Colors.grey,),
              CircleAvatar(radius: 5,backgroundColor: selectedindex==3?Colors.black:Colors.grey,),
              CircleAvatar(radius: 5,backgroundColor: selectedindex==4?Colors.black:Colors.grey,),

            ],
          ),
          SizedBox(

            height: 60,
            width: 350,
            child:    Card(

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("وصل حديثا",style: TextStyle(
                          color: Colors.grey,

                          fontSize: 20
                      ),),
                    ),
                    Text("الاكثر مبيعا",style: TextStyle(
                        color: Colors.grey,

                        fontSize: 20
                    ),),
                    SizedBox(
                      height: 60,
                      width: 100,
                      child:      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Card(

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          color: Colors.brown.shade400,

                          child:        Padding(padding: EdgeInsets.only(left: 10,top:5),child: Text("العروض",style: TextStyle(
                              color: Colors.white,

                              fontSize: 20
                          ),),),
                        ),
                      )
                      ,
                    ),

                  ],
                )) ,
          ),
          
          Expanded(
            child: GridView.builder(itemCount: productlist.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio:2.6/3
            ),padding: EdgeInsets.all(10), itemBuilder: (context, index) {
              return Padding(padding:  EdgeInsets.all(5),

                    child: Card(
                      child: Stack(
                        children: [


                            Stack(
children: [
  Image(image: AssetImage(productlist[index].image)),
                IconButton(onPressed: () {
                  setState(() {
                    if(isfavourit){
                      isfavourit=false;
                      icon =Icon(Icons.favorite,color: Colors.red,);
                    }else{
                      isfavourit=true;
                      icon =Icon(Icons.favorite);
                    }

                  });
                }, icon: icon),
      SizedBox(
        width: 50,
        height: 50,
        child:  Card(

            color: productlist[index].discount!="Null"?Colors.red:Colors.transparent,
            child:productlist[index].discount!="Null"?Text( productlist[index].discount):Text("") ,

        ) ,
      ),
  SizedBox(
    width: 100,
    height: 100,
    child:  Card(

      color: productlist[index].New!="Null"?Colors.green:Colors.transparent,
      child:productlist[index].New!="Null"?Text( productlist[index].New):Text("") ,

    ) ,
  ),
  SizedBox(
    width: 50,
    height: 50,
    child:  Card(

      color: productlist[index].trend!="Null"?Colors.yellow:Colors.transparent,
      child:productlist[index].trend!="Null"?Text( productlist[index].trend):Text("") ,

    ) ,
  ),
  Text(productlist[index].name),

                  Text(productlist[index].brand),
  Row(
    children: [
      Text("20",style: TextStyle(
        decoration: TextDecoration.lineThrough,
        color: Colors.grey
      )),
      Text("18",style: TextStyle(
        color: Colors.brown
      ),)
    ],
  ),
  IconButton(onPressed: () {

  }, icon: Icon(Icons.add_shopping_cart))



                ],
                            )


                          // Positioned(child: Image(image:AssetImage("images/ucas_logo.png"),)),
                          //
                          //
                          //
                          // Positioned(left: 0,right: 0
                          //   ,bottom:0,child:
                          //
                          //
                          //   Text(s[index], style: TextStyle(
                          //     color: Colors.black,
                          //     fontWeight: FontWeight.w300,
                          //
                          //
                          //
                          //   ),textAlign: TextAlign.center),
                          // )
                        ],
                      ),




                    ) ,
                  );



            },),
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
