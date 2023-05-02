import 'package:flutter/material.dart';

class OrderConfirmation extends StatefulWidget {

  @override
  State<OrderConfirmation> createState() => _OrderConfirmationState();
}

class _OrderConfirmationState extends State<OrderConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        
        centerTitle: true,
        actions: [
          Icon(Icons.arrow_back_ios,color: Colors.black),
        ],
        
        title: Text("تاكيد الطلب",style: TextStyle(
          color: Colors.black
        )),
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 300),
            child: Text("العنوان"),
          ),
          SizedBox(
            height: 50,
            width: 350,
            child:   Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
child: Row(
  children: [
    Icon(Icons.place_outlined),
    Padding(
      padding: const EdgeInsets.only(left: 150),
      child: Text("الخرطوم,المعمورة,شارع السجانة"),
    ),


  ],
),
            ) ,
          ),
         Padding(padding: EdgeInsets.only(left: 270),child: Text("طرق الدفع"),),
          SizedBox(
            height: 50,
            width: 350,
            child:   Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Row(
                children: [
                  Icon(Icons.attach_money),
              Padding(
                padding: const EdgeInsets.only(left: 220),
                child: Text("الدفع عند الاستلام")),



                ],
              ),
            ) ,
          ),
          Text("المنتجات"),
          Expanded(
            child: ListView.builder(itemCount: 2,itemBuilder: (context, index) {
              return
              SizedBox(
                height: 110,
                width: 300,
                child:
                Card(
                  color: Colors.white,
                  child: Stack(

                  children: [
                  Positioned(child:Image(image: AssetImage("images/img_6.png"),height: 100,width: 100),left: 270, ),
                    Positioned(child: Text("حذاء رياضي"),left: 200,top: 10),
                   Positioned(child:Text(":المقاس"),left: 220,top: 35 ),
                    Positioned(child: Text("42"),left: 200,top: 40 ),
                   Positioned(child: Text(":اللون"),top: 37,left: 170),
                   Positioned(child: CircleAvatar(radius: 6,backgroundColor: Colors.black,),left: 155,top: 42,),
                    Positioned(child: Text("18"),top: 70,left: 240,),
                    Icon(Icons.edit),
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
          Row(
            children: [
              Text("36"),
             Padding(padding: EdgeInsets.only(left: 300),child: Text("تكلفة الشراء"),) ,
            ],
          ),
          Row(
            children: [
              Text("5"),
              Padding(padding: EdgeInsets.only(left: 305),child: Text("تكلفة الشحن"),) ,


            ],
          ),
          Row(
            children: [
              Text("1.5"),
              Padding(padding: EdgeInsets.only(left: 320),child:    Text("ضرائب"),) ,


            ],
          ),
          Divider(),
          Row(
            children: [
              Text("42.5"),

              Padding(padding: EdgeInsets.only(left: 275),child:     Text("التكلفة النهائية"),) ,



            ],
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("بيانات المستلم"),
                Divider(),
                Text("احمد محمد عبد الرحمن العتيبي"),
                Text("+249755778487"),
                SizedBox(
                  width: 350,
                   height: 60,
                  child:  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Card(
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
                )

              ],
            ),
          )



        ],
      ),
    );
  }
}
