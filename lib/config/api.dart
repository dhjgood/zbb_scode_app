import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';

ToLogin() async{
  Response response  = await Dio().get("http://192.168.3.7:8888/");
  print(response.data);
}