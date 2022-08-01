import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_api/cubit/cubit.dart';
import 'package:gold_api/cubit/states.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => MainCubit()..getSilverPrice()..getGoldPrice(),
      child: BlocConsumer<MainCubit,States>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black45,
              elevation: 0,
              title:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Today",
                    style: TextStyle(
                      fontWeight:FontWeight.w500,
                      color: Colors.white,
                      fontSize: 25,
                    ),),
                  SizedBox(width:8,),
                  Text("Price",
                    style: TextStyle(
                      fontWeight:FontWeight.w500,
                      color: Colors.orange,
                      fontSize: 25,
                    ),),
                ],
              ),
            ),
            body: Container(
              color: Colors.black,
              padding: const EdgeInsetsDirectional.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/Gold.png",
                        height: MediaQuery.of(context).size.height/6,
                        width: MediaQuery.of(context).size.width/2.5,
                      ),
                      const SizedBox(height: 20,),
                      Text("GOLD",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: MediaQuery.of(context).size.width/10),),
                      const SizedBox(height: 10,),
                      Row(children:  [
                        Text(" ${MainCubit.get(context).goldI}",
                          style: TextStyle(
                              color: Colors.orangeAccent,
                              fontSize: MediaQuery.of(context).size.width/15),
                        ),
                        Icon(Icons.monetization_on_outlined,size: 35,color: Colors.green,)
                      ]),

                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/png_silver.png",
                        height: MediaQuery.of(context).size.height/6,
                        width: MediaQuery.of(context).size.width/2.5,
                      ),
                      const SizedBox(height: 20,),
                      Text("SILVER",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: MediaQuery.of(context).size.width/10),),
                      const SizedBox(height: 10,),
                      Row(children:  [
                        Text("${MainCubit.get(context).silverI}",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: MediaQuery.of(context).size.width/15),
                        ),
                        const Icon(Icons.monetization_on_outlined,size: 35,color: Colors.green,)
                      ]),

                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );

  }

}
