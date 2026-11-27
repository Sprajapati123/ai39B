import 'package:ai39b/view/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class UserRepo {
  Future<String> login(String email, String password);
  //authentication
  Future<String> register(String email, String password);
  //firestore
  Future<void> addUser(String id, UserModel model);
  Future<void> forgetPassword(String email);
  Future<void> logOut();
  Future<void> editProfile(String id, UserModel model);
  Future<void> deleteProfile(String id);
  Future<UserModel> getUserById(String id);
  Future<List<UserModel>> getAllUser();
}
