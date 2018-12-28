import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

class http_request{
String url;
  http_request(String url){
    this.url=url;
  }

  void request(State state,String name,Callback callback)async{
    HttpClientResponse response;
    HttpClient httpClient=new HttpClient();
    HttpClientRequest httpClientRequest=await httpClient.getUrl(Uri.parse(url+name));
    response=await httpClientRequest.close();
    if(response.statusCode == 200){
      var responsebody=await response.transform(utf8.decoder).join()  ;
      if(callback!=null){
        callback.finish(responsebody,state);

      }
  }


}
}
 abstract class Callback{
  void finish(String respone,State state);
}