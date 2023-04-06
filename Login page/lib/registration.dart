import 'package:flutter/material.dart';
import 'model.dart';
import 'printInfo.dart';
import 'padding.dart';

User? user;

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Registration".toUpperCase()),
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
            const NewPadding(
              word: "first name",
              icon: Icon(Icons.person),
            ),
            const NewPadding(
              word: "last name",
              icon: Icon(Icons.person_2),
            ),
            const NewPadding(
              word: "age",
              icon: Icon(Icons.abc),
            ),
            const NewPadding(
              word: "email",
              icon: Icon(Icons.email),
            ),
            const NewPadding(
              word: "phone",
              icon: Icon(Icons.phone),
            ),
            const NewPadding(
              word: "address",
              icon: Icon(Icons.place),
            ),
            const NewPadding(
              word: "group",
              icon: Icon(Icons.people_alt),
            ),
            const NewPadding(
              word: "gender",
              icon: Icon(Icons.person_2_outlined),
            ),
            const NewPadding(
              word: "merriage",
              icon: Icon(Icons.abc_outlined),
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
                        builder: (context) => PrintInfo(user: user!),
                      ),
                    );
                  },
                  child: const Text(
                    "Registration",
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
