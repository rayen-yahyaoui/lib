import 'package:dio/dio.dart';

class UsersApi{
  final _dio = Dio(BaseOptions(baseUrl: 'http://localhost:8282'));

  Future <List> getUsers()async {
    final response = await _dio.get('') ;
    return response.data['users'];
  }
}