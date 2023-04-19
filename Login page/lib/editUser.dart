import 'package:flutter/material.dart';
import 'package:flutter_lesson6/printInfo.dart';
import 'model.dart';

// ignore: must_be_immutable
class EditUser extends StatelessWidget {
  const EditUser({
    super.key,
    required this.user,
  });
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Edit user data".toUpperCase()),
      ),
      body: Container(
        // constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/fon.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, bottom: 6),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                onChanged: (String value) {
                  user.setFirstName(value);
                },
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  labelText: "first name",
                  labelStyle: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, bottom: 6),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                onChanged: (String value) {
                  user.setLastName(value);
                },
                decoration: const InputDecoration(
                  icon: Icon(Icons.person_2),
                  border: OutlineInputBorder(),
                  labelText: "last name",
                  labelStyle: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, bottom: 6),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                onChanged: (String value) {
                  user.setAge(int.parse(value));
                },
                decoration: const InputDecoration(
                  icon: Icon(Icons.abc),
                  border: OutlineInputBorder(),
                  labelText: "age",
                  labelStyle: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, bottom: 6),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                onChanged: (String value) {
                  user.setEmail(value);
                },
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  labelText: "email",
                  labelStyle: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, bottom: 6),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                onChanged: (String value) {
                  user.setGender(value);
                },
                decoration: const InputDecoration(
                  icon: Icon(Icons.person_pin_circle),
                  border: OutlineInputBorder(),
                  labelText: "gender",
                  labelStyle: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, bottom: 6),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                onChanged: (String value) {
                  user.setPassword(value);
                },
                decoration: const InputDecoration(
                  icon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                  labelText: "password",
                  labelStyle: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 60),
                      backgroundColor: Colors.blue),
                  onPressed: () {
                    // Навигация кийинки бетке
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        // Экинчи баракты чакыруу
                        builder: (context) => PrintInfo(user: user),
                      ),
                    );
                  },
                  child: const Text(
                    "done",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
