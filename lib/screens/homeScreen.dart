import 'package:app_with_provider/models/userModule.dart';
import 'package:app_with_provider/screens/screen-2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserModule user =Provider.of<UserModule>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.white,
        title:const Text("App with Provider",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child:  Text("Value: " +user.value.toString(),style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            borderRadius:const BorderRadius.all(Radius.circular(40)),
            onTap: (){
              user.plus();
            },
                child:const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  child: Text("+1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28),),
                ),
          ),
          const SizedBox(height: 15,),
          InkWell(
            borderRadius:const BorderRadius.all(Radius.circular(40)),
            onTap: (){
              user.multiply();
            },
            child:const CircleAvatar(
              child:Text("x2",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28),),
              radius: 40,
              backgroundColor: Colors.black,
            ),
          ),
          const SizedBox(height: 15,),
          InkWell(
            borderRadius:const BorderRadius.all(Radius.circular(40)),
            onTap: (){
              user.minus();
            },
            child:const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.black,
              child: Text("-1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28),),
            ),
          ),
          const SizedBox(height: 15,),
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            borderRadius:const BorderRadius.all(Radius.circular(60)),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>const HomeScreen2(),
                ),
                );
            },
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.transparent,
              child: Row(
                children:const [
                  Text("Next",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28),),
                  Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 50,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}