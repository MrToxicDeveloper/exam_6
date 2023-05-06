import 'package:exam_6/screens/railway/provider/train_provider.dart';
import 'package:exam_6/screens/railway/view/train_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TrainProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => TrainView(),
        },
      ),
    ),
  );
}
