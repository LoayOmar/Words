import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:words/layout/words_layout.dart';
import 'package:words/shared/bloc_observer.dart';
import 'package:words/shared/cubit/cubit.dart';
import 'package:words/shared/cubit/state.dart';
import 'package:words/shared/network/local/cache_helper.dart';
import 'package:words/shared/network/remote/dio_helper.dart';
import 'package:words/shared/styles/colors.dart';

import 'http_overrides.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper.init();

  DioHelper.init();

  HttpOverrides.global = MyHttpOverrides();

  BlocOverrides.runZoned(
        () => runApp(const MyApp()),
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WordsCubit(),
      child: BlocConsumer<WordsCubit, WordsStates>(
        listener: (context, state) {},
        builder: (context, state) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: defaultColor,
            scaffoldBackgroundColor: Colors.white,
          ),
          home: WordsLayOut(),
        ),
      ),
    );
  }
}


