import 'package:flutter/material.dart';
import 'package:q1_answer/Product.dart';
import 'dart:math' as math;


class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController controller=PageController(initialPage: 0);
  Icon icon=Icon(Icons.favorite);
  List<Product> productlist = [
    Product(
        "حذاء رياضي", "نايكي", "18", "ترند", "20", "images/img_4.png", "جديد","Null"),

    Product("بلوزة موضة", "اورجينال", "10", "ترند", "Null", "images/img_5.png",
        "Null", "Null"),
    Product(
        "شرط قطن", "قوتونيل", "18", "Null", "20", "images/img_5.png", "Null" , "قريبا"),
    Product(
        "حذاء رياضي", "كاب", "12", "Null", "Null", "images/img_4.png", "جديد" , "Null"),
  ];



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
            child:GridView.builder(
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                    childAspectRatio:2.6/3.5
                ),
                itemBuilder: (context, index) {
                  Product product =  productlist[index];
                  return itemDesign(product.name, product.brand, product.price, product.trend, product.discount, product.image, product.New , product.soon);
                },
                itemCount: productlist.length),
          ),


//           Expanded(
//             child: GridView.builder(itemCount: productlist.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 childAspectRatio:2.6/3
//             ),padding: EdgeInsets.all(10), itemBuilder: (context, index) {
//               return Padding(padding:  EdgeInsets.all(5),
//
//                     child: Card(
//                       child: Stack(
//                         children: [
//
//
//                             Stack(
// children: [
//   Image(image: AssetImage(productlist[index].image)),
//                 IconButton(onPressed: () {
//                   setState(() {
//                     if(isfavourit){
//                       isfavourit=false;
//                       icon =Icon(Icons.favorite,color: Colors.red,);
//                     }else{
//                       isfavourit=true;
//                       icon =Icon(Icons.favorite);
//                     }
//
//                   });
//                 }, icon: icon),
//       SizedBox(
//         width: 50,
//         height: 50,
//         child:  Card(
//
//             color: productlist[index].discount!="Null"?Colors.red:Colors.transparent,
//             child:productlist[index].discount!="Null"?Text( productlist[index].discount):Text("") ,
//
//         ) ,
//       ),
//   SizedBox(
//     width: 100,
//     height: 100,
//     child:  Card(
//
//       color: productlist[index].New!="Null"?Colors.green:Colors.transparent,
//       child:productlist[index].New!="Null"?Text( productlist[index].New):Text("") ,
//
//     ) ,
//   ),
//   SizedBox(
//     width: 50,
//     height: 50,
//     child:  Card(
//
//       color: productlist[index].trend!="Null"?Colors.yellow:Colors.transparent,
//       child:productlist[index].trend!="Null"?Text( productlist[index].trend):Text("") ,
//
//     ) ,
//   ),
//   Text(productlist[index].name),
//
//                   Text(productlist[index].brand),
//   Row(
//     children: [
//       Text("20",style: TextStyle(
//         decoration: TextDecoration.lineThrough,
//         color: Colors.grey
//       )),
//       Text("18",style: TextStyle(
//         color: Colors.brown
//       ),)
//     ],
//   ),
//   IconButton(onPressed: () {
//
//   }, icon: Icon(Icons.add_shopping_cart))
//
//
//
//                 ],
//                             )
//
//
//                           // Positioned(child: Image(image:AssetImage("images/ucas_logo.png"),)),
//                           //
//                           //
//                           //
//                           // Positioned(left: 0,right: 0
//                           //   ,bottom:0,child:
//                           //
//                           //
//                           //   Text(s[index], style: TextStyle(
//                           //     color: Colors.black,
//                           //     fontWeight: FontWeight.w300,
//                           //
//                           //
//                           //
//                           //   ),textAlign: TextAlign.center),
//                           // )
//                         ],
//                       ),
//
//
//
//
//                     ) ,
//                   );
//
//
//
//             },),
//           )




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

  // Method return widget(Item Design)
  Widget itemDesign(String name, String brand, String price, String trend, String discount,
      String image, String New , String soon){
    if(soon=="Null" && discount!="Null" && New != "Null" && trend!="Null"){
      return Column(
        children: [
          Container(
            height: 230,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [



                      // SOON
                      Container(
                        width: double.infinity,
                        height: 124,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(253, 210, 122, 0.5),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10) , topLeft: Radius.circular(10)),
                        ),
                        child: Image.asset(image),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 5 , left: 8,top: 5,bottom: 5),
                        child: Column(
                          children: [

                            // Add To Favorite
                            Row(
                              children: [
                                Expanded(child: SizedBox(width: 1,)),
                                CircleAvatar(
                                  backgroundColor: Colors.white70,
                                  radius: 13,
                                  child: Icon(Icons.favorite_border,color: Colors.black45),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),

                            //Discount
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.all(Radius.circular(8),
                                    ),),
                                  child: Center(child: Text("%${discount}")),
                                ),
                                Expanded(child: SizedBox(width: 1,)),

                              ],
                            ),
                            SizedBox(height: 15 ,),
                            // Trend && New Items
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 46,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.all(Radius.circular(8),
                                    ),),
                                  child:  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Row(
                                        children: [
                                          Text(New),
                                          SizedBox(width: 2,),
                                          Icon(Icons.star,color: Colors.yellowAccent,size: 15,)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox(width: 12,)),
                                Container(
                                  height: 20,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    color: Colors.yellowAccent,
                                    borderRadius: BorderRadius.all(Radius.circular(8),
                                    ),),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 3),
                                    child: Row(
                                      children: [
                                        Center(child: Text(trend)),
                                        SizedBox(width: 2,),
                                        Icon(Icons.local_fire_department_outlined,color: Colors.red,size: 18,)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 3 , left: 3,bottom: 3),
                      child: Container(
                        height:90 ,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.only(topLeft: Radius.circular(10) , topRight: Radius.circular(10)),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8 , top: 8,left: 3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(child: SizedBox(width: 1,)),
                              Text(name),
                            ],
                          ),

                          Row(
                            children: [
                              Expanded(child: SizedBox(width: 1,)),
                              Text(brand,style: TextStyle(fontWeight: FontWeight.w700),),
                            ],
                          ),
                          SizedBox(height: 9.1,),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                                  color: Colors.black12,
                                ),
                                child: Icon(Icons.add_shopping_cart_sharp , color: Colors.orangeAccent,size: 15),
                              ),
                              Expanded(child: SizedBox(width: 1,)),
                              Text("\$  ${price}" , style: TextStyle(color: Colors.orangeAccent),),
                              SizedBox(
                                width: 3,
                              ),
                              Text(discount,style: TextStyle(decoration: TextDecoration.lineThrough),),
                            ],
                          ),


                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),


        ],
      ) ;
    }
    else
    if(soon=="Null" && New=="Null" && discount=="Null"){
      return Column(
        children: [
          Container(
            height: 230,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [


                      // SOON
                      Container(
                        width: double.infinity,
                        height: 124,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(253, 210, 122, 0.5),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10) , topLeft: Radius.circular(10)),
                        ),
                        child: Image.asset(image),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 5 , left: 8,top: 5,bottom: 5),
                        child: Column(
                          children: [

                            // Add To Favorite
                            Row(
                              children: [
                                Expanded(child: SizedBox(width: 1,)),
                                CircleAvatar(
                                  backgroundColor: Colors.white70,
                                  radius: 13,
                                  child: Icon(Icons.favorite_border,color: Colors.black45),
                                ),
                              ],
                            ),


                            SizedBox(height: 45 ,),
                            // Trend && New Items
                            Row(
                              children: [
                                Expanded(child: SizedBox(width: 12,)),
                                Container(
                                  height: 20,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    color: Colors.yellowAccent,
                                    borderRadius: BorderRadius.all(Radius.circular(8),
                                    ),),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 3),
                                    child: Row(
                                      children: [
                                        Center(child: Text(trend)),
                                        SizedBox(width: 2,),
                                        Icon(Icons.local_fire_department_outlined,color: Colors.red,size: 18,)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 3 , left: 3,bottom: 3),
                      child: Container(
                        height:90 ,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.only(topLeft: Radius.circular(10) , topRight: Radius.circular(10)),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8 , top: 8,left: 3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(child: SizedBox(width: 1,)),
                              Text(name),
                            ],
                          ),

                          Row(
                            children: [
                              Expanded(child: SizedBox(width: 1,)),
                              Text(brand,style: TextStyle(fontWeight: FontWeight.w700),),
                            ],
                          ),
                          SizedBox(height: 9.1,),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                                  color: Colors.black12,
                                ),
                                child: Icon(Icons.add_shopping_cart_sharp , color: Colors.orangeAccent,size: 15),
                              ),
                              Expanded(child: SizedBox(width: 1,)),
                              Text("\$  ${price}" , style: TextStyle(color: Colors.orangeAccent),),
                              SizedBox(
                                width: 3,
                              ),
                              Text("20",style: TextStyle(decoration: TextDecoration.lineThrough),),
                            ],
                          ),


                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),


        ],
      ) ;
    }
    else
    if(soon!="Null" && discount!="Null" && trend=="Null" && New=="Null"){
      return  Column(
        children: [
          Container(
            height: 230,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [


                      Container(
                        width: double.infinity,
                        height: 124,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 3, top: 5),
                              child: Transform.rotate(
                                angle: -math.pi / 4.2,
                                child: Text(
                                  soon,
                                  style: TextStyle(fontSize: 14, color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),


                      // SOON
                      Material(
                        clipBehavior: Clip.antiAlias,
                        shape: BeveledRectangleBorder(
                          // side: BorderSide(color: Colors.blue), if you need
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(45.0))),
                        child:
                        // Card Item
                        Container(
                          width: double.infinity,
                          height: 124,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(253, 210, 122, 0.5),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10) , topLeft: Radius.circular(10)),
                          ),
                          child: Image.asset(image),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 5 , left: 8,top: 5,bottom: 5),
                        child: Column(
                          children: [

                            // Add To Favorite
                            Row(
                              children: [
                                Expanded(child: SizedBox(width: 1,)),
                                CircleAvatar(
                                  backgroundColor: Colors.white70,
                                  radius: 13,
                                  child: Icon(Icons.favorite_border,color: Colors.black45),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),

                            //Discount
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.all(Radius.circular(8),
                                    ),),
                                  child: Center(child: Text("%${discount}")),
                                ),
                                Expanded(child: SizedBox(width: 1,)),

                              ],
                            ),
                            SizedBox(height: 15 ,),


                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 3 , left: 3,bottom: 3),
                      child: Container(
                        height:90 ,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.only(topLeft: Radius.circular(10) , topRight: Radius.circular(10)),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8 , top: 8,left: 3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(child: SizedBox(width: 1,)),
                              Text(name),
                            ],
                          ),

                          Row(
                            children: [
                              Expanded(child: SizedBox(width: 1,)),
                              Text(brand,style: TextStyle(fontWeight: FontWeight.w700),),
                            ],
                          ),
                          SizedBox(height: 9.1,),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                                  color: Colors.black12,
                                ),
                                child: Icon(Icons.add_shopping_cart_sharp , color: Colors.orangeAccent,size: 15),
                              ),
                              Expanded(child: SizedBox(width: 1,)),
                              Text("\$  ${price}" , style: TextStyle(color: Colors.orangeAccent),),
                              SizedBox(
                                width: 3,
                              ),
                              Text("20",style: TextStyle(decoration: TextDecoration.lineThrough),),
                            ],
                          ),


                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),


        ],
      ) ;
    }
    else
    if(soon=="Null" && trend=="Null" && discount=="Null"){
      return Column(
        children: [
          Container(
            height: 230,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [




                      // SOON
                      Container(
                        width: double.infinity,
                        height: 124,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(253, 210, 122, 0.5),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10) , topLeft: Radius.circular(10)),
                        ),
                        child: Image.asset(image),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 5 , left: 8,top: 5,bottom: 5),
                        child: Column(
                          children: [

                            // Add To Favorite
                            Row(
                              children: [
                                Expanded(child: SizedBox(width: 1,)),
                                CircleAvatar(
                                  backgroundColor: Colors.white70,
                                  radius: 13,
                                  child: Icon(Icons.favorite_border,color: Colors.black45),
                                ),
                              ],
                            ),


                            SizedBox(height: 45 ,),
                            // Trend && New Items
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 46,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.all(Radius.circular(8),
                                    ),),
                                  child:  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Row(
                                        children: [
                                          Text(New),
                                          SizedBox(width: 2,),
                                          Icon(Icons.star,color: Colors.yellowAccent,size: 15,)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox(width: 12,)),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 3 , left: 3,bottom: 3),
                      child: Container(
                        height:90 ,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.only(topLeft: Radius.circular(10) , topRight: Radius.circular(10)),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8 , top: 8,left: 3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(child: SizedBox(width: 1,)),
                              Text(name),
                            ],
                          ),

                          Row(
                            children: [
                              Expanded(child: SizedBox(width: 1,)),
                              Text(brand,style: TextStyle(fontWeight: FontWeight.w700),),
                            ],
                          ),
                          SizedBox(height: 9.1,),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                                  color: Colors.black12,
                                ),
                                child: Icon(Icons.add_shopping_cart_sharp , color: Colors.orangeAccent,size: 15),
                              ),
                              Expanded(child: SizedBox(width: 1,)),
                              Text("\$  ${price}" , style: TextStyle(color: Colors.orangeAccent),),
                              SizedBox(
                                width: 3,
                              ),
                              Text("20",style: TextStyle(decoration: TextDecoration.lineThrough),),
                            ],
                          ),


                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),


        ],
      ) ;

    }
    else
    {
      return  Column(
        children: [
          Container(
            height: 230,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [


                      Container(
                        width: double.infinity,
                        height: 124,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 3, top: 5),
                              child: Transform.rotate(
                                angle: -math.pi / 4.2,
                                child: Text(
                                  soon,
                                  style: TextStyle(fontSize: 14, color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),


                      // SOON
                      Material(
                        clipBehavior: Clip.antiAlias,
                        shape: BeveledRectangleBorder(
                          // side: BorderSide(color: Colors.blue), if you need
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(45.0))),
                        child:
                        // Card Item
                        Container(
                          width: double.infinity,
                          height: 124,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(253, 210, 122, 0.5),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10) , topLeft: Radius.circular(10)),
                          ),
                          child: Image.asset(image),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 5 , left: 8,top: 5,bottom: 5),
                        child: Column(
                          children: [

                            // Add To Favorite
                            Row(
                              children: [
                                Expanded(child: SizedBox(width: 1,)),
                                CircleAvatar(
                                  backgroundColor: Colors.white70,
                                  radius: 13,
                                  child: Icon(Icons.favorite_border,color: Colors.black45),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),

                            //Discount
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.all(Radius.circular(8),
                                    ),),
                                  child: Center(child: Text("%${discount}")),
                                ),
                                Expanded(child: SizedBox(width: 1,)),

                              ],
                            ),
                            SizedBox(height: 15 ,),
                            // Trend && New Items
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 46,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.all(Radius.circular(8),
                                    ),),
                                  child:  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Row(
                                        children: [
                                          Text(New),
                                          SizedBox(width: 2,),
                                          Icon(Icons.star,color: Colors.yellowAccent,size: 15,)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12,),
                                Container(
                                  height: 20,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    color: Colors.yellowAccent,
                                    borderRadius: BorderRadius.all(Radius.circular(8),
                                    ),),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 3),
                                    child: Row(
                                      children: [
                                        Center(child: Text(trend)),
                                        SizedBox(width: 2,),
                                        Icon(Icons.local_fire_department_outlined,color: Colors.red,size: 18,)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 3 , left: 3,bottom: 3),
                      child: Container(
                        height:90 ,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.only(topLeft: Radius.circular(10) , topRight: Radius.circular(10)),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8 , top: 8,left: 3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(child: SizedBox(width: 1,)),
                              Text(name),
                            ],
                          ),

                          Row(
                            children: [
                              Expanded(child: SizedBox(width: 1,)),
                              Text(brand,style: TextStyle(fontWeight: FontWeight.w700),),
                            ],
                          ),
                          SizedBox(height: 9.1,),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                                  color: Colors.black12,
                                ),
                                child: Icon(Icons.add_shopping_cart_sharp , color: Colors.orangeAccent,size: 15),
                              ),
                              Expanded(child: SizedBox(width: 1,)),
                              Text("\$  ${price}" , style: TextStyle(color: Colors.orangeAccent),),
                              SizedBox(
                                width: 3,
                              ),
                              Text(discount,style: TextStyle(decoration: TextDecoration.lineThrough),),
                            ],
                          ),


                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),


        ],
      ) ;
    }
  }

}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final path = Path()
      ..moveTo(rect.topLeft.dx, rect.topLeft.dy)
      ..lineTo(rect.topRight.dx - 20, rect.topRight.dy)
      ..lineTo(rect.bottomRight.dx - 20, rect.bottomRight.dy)
      ..lineTo(rect.bottomLeft.dx, rect.bottomLeft.dy)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
