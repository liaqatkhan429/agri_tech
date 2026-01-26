import 'package:agri_tech/model/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserServices{
  String userCollection  = "UserCollection";

  /// create user
Future createUser (UserModel model) async{
 return await FirebaseFirestore.instance
      .collection(userCollection)
      .doc(model.docId)
      .set(model.toJson(model.docId.toString()));
}

///  update user
 Future updateUser(UserModel model) async{
  return await FirebaseFirestore.instance
      .collection(userCollection)
      .doc(model.docId)
      .update({
    "name": model.name,
    "email": model.email,
  });
 }

 Future getUserProfile(String userId) async{
  return await FirebaseFirestore.instance
      .collection(userCollection)
      .doc(userId)
      .get()
      .then((val){
return UserModel.fromJson(val.data()!);
  });
 }


}