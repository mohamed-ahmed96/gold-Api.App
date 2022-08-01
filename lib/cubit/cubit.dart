import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_api/cubit/states.dart';
import 'package:gold_api/shared/network/dio_helper.dart';

class MainCubit extends Cubit<States>{
  MainCubit():super(InitState());


  static MainCubit get(context) => BlocProvider.of(context);


  double? goldD;
  int? goldI;

  double? silverD;
  int? silverI;

  getGoldPrice(){
    DioHelper.getData('XAU/EGP/').then((value) {

        goldD=value.data['price'];
        goldI=goldD!.round();
        print(goldI);
        emit(GetGoldPriceState());

    }).catchError((error){
      print(error.toString());
    });
  }

  getSilverPrice(){
    DioHelper.getData('XAG/EGP/').then((value) {

        silverD=value.data['price'];
        silverI=silverD!.round();
        print(silverI);
        emit(GetSilverPriceState());

    }).catchError((error){
      print(error.toString());
    });
  }




}