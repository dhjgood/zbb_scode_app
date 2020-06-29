//import 'package:dio/dio.dart';
//import 'dart:async';
//import 'dart:io';
//import 'package:zbbscodeapp/pages/common/tool.dart';
//import 'api.dart';
//
//Future http(url,{data}) async{
//  try{
//    Response response;
//    Dio dio = new Dio();
//    if(data == null){
//      response  = await dio.post(Path[url]);
//    }else{
//      response  = await dio.post(Path[url],data:data);
//    }
//    if(response.statusCode == 200){
//      return response;
//    }else{
//      showToast("服务器请求接口异常...");
//    }
//  }catch(e){
//    showToast("服务器异常...$e");
//  }
//}