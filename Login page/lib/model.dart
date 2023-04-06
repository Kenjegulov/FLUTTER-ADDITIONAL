// import 'dart:math';
// import 'package:flutter/material.dart';

class User {
  int id;
  String userFirstName;
  String userLastName;
  int userAge;
  String userEmail;
  String userPhone;
  String userAdress;
  int userGroup;
  String userGender;
  String userMerriage;

  User(
      this.id,
      this.userFirstName,
      this.userLastName,
      this.userAge,
      this.userEmail,
      this.userPhone,
      this.userAdress,
      this.userGroup,
      this.userGender,
      this.userMerriage);
}

// List users = <User>[];
// void add() {
//   users.add(User(1, "Arsen", "Kenjegulov", 21, "arsen.kenjegulov.bj@gmail.com",
//       "0706 584 681", "Talas", 2, "male", "don't married"));
//   users.add(User(2, "Arnas", "Shirgeliev", 13, "arnas.shirgeliev.bj@gmail.com",
//       "0551 551 785", "Talas", 0, "male", "don't married"));
// }

// bool findNameAndEmail(String name, String email) {
//   for (User user in users) {
//     if (user.userFirstName == name && user.userEmail == email) return true;
//   }
//   return false;
// }

// void printinfo() {
//   for (User user in users) {
//     print("---------- Info about ${user.userFirstName} -----------");
//     print("User first name:   ${user.userFirstName}");
//     print("User last name:    ${user.userLastName}");
//     print("User age:          ${user.userAge}");
//     print("User email:        ${user.userEmail}");
//     print("User phone:        ${user.userPhone}");
//     print("User adress:       ${user.userAdress}");
//     print("User group:        ${user.userGroup}");
//     print("User gender:       ${user.userGender}");
//     print("User merriage:     ${user.userMerriage}");
//   }
// }


// void main(){
//   add();
//   print("Arsen");
//   printinfo();
// }
