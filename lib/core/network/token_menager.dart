import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenMenager {

static FlutterSecureStorage sotage = FlutterSecureStorage();

static final _accessTokenKey = 'access_token';
static final _refreshToken = 'refresh_token';
static final _userRole = 'user_role';


static Future<void> saveAccessToken(String token) async {
  await sotage.write(key: _accessTokenKey, value: token);}

  static Future<void>saveRefreshToken(String token) async {
    await sotage.write(key: _refreshToken, value: token);}

  static Future<String?> getToken() async {
    return await sotage.read(key: _accessTokenKey);}

  static Future<void> deleteToken() async {
    await sotage.delete(key: _accessTokenKey);}


static Future<void>isLogin()async{
  String? token = await getToken();
  if(token != null){
    print("User is logged in");
  } else {
    print("User is not logged in");
  }               
}

}