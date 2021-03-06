import 'dart:convert';
import 'package:cibus_multi_plateforme/models/restaurant.dart';
import 'package:cibus_multi_plateforme/services/api_services.dart';
import 'package:http/http.dart' as http;


class RestaurantApi{

  static Future<List<Restaurant>> getRestaurant() async{
    var uri = Uri.http('192.168.1.107:8000', '/Restaurants/');
    final response = await http.get(uri);
    List data = jsonDecode(response.body);
    List temp = [];
    for (var i in data) {
      print(i);
      temp.add(i);
    }
    return Restaurant.recipesFromSnapshot(temp);
  }


  static Future<Restaurant> getrestaurantById(int Id) async{
    //http://192.168.1.107:8000/login?email=string&password=string
    final response = await http
        .get(Uri.parse('${api_services.httpbaseUrl}/Restaurant$Id'));
    if (response.statusCode == 200){
      Restaurant data = jsonDecode(response.body);
      print("============================================="+response.body.toString());
      return data;
    }
    else{
      throw Exception('email or password is incorrect !');
    }
  }
}