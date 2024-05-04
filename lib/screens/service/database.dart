import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  //creat
  Future addEmployeeDetails(Map<String, dynamic> employeeInfoMap, String id) async {
   return await FirebaseFirestore.instance
        .collection("employee")
        .doc(id)
        .set(employeeInfoMap);
  }
//read
  Future<Stream<QuerySnapshot>> getEmployeeDetails() async {
    return await FirebaseFirestore.instance.collection("Employee").snapshots();
  }
  //update
  Future updateUsersDetail(String id,Map<String,dynamic>updateInfo)async{
    return await FirebaseFirestore.instance.collection("Users").doc(id).update(updateInfo);
  }
  //delete
    Future deleteUsersDetail(String id)async{
    return await FirebaseFirestore.instance.collection("Users").doc(id);
  }
}
