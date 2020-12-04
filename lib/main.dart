import 'package:FoodMarket/cubit/cubit.dart';
import 'package:FoodMarket/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context) => UserCubit()),
          BlocProvider(create: (BuildContext context) => FoodCubit()),
          BlocProvider(create: (BuildContext context) => TransactionCubit()),
        ],
        child: GetMaterialApp(
            debugShowCheckedModeBanner: false, home: SignInPage()));
  }
}
