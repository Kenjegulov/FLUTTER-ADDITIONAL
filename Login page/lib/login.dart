import 'package:flutter/material.dart';
import 'package:flutter_lesson6/registration.dart';
import 'model.dart';
import 'printInfo.dart';

List users = <User>[];
void add() {
  users.add(User(1, "Arsen", "Kenjegulov", 21, "arsen.kenjegulov.bj@gmail.com",
      "0706 584 681", "Talas", 2, "male", "don't married"));
  users.add(User(2, "Arnas", "Shirgeliev", 13, "arnas.shirgeliev.bj@gmail.com",
      "0551 551 785", "Talas", 0, "male", "don't married"));
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? name;
  String? email;

  User? findNameAndEmail(String name, String email) {
    add();
    for (User user in users) {
      if (user.userFirstName == name && user.userEmail == email) return user;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const Text(
              "LOGIN",
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w500,
                  color: Colors.blueAccent),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  labelText: "Name",
                ),
                onChanged: (String? value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 5, bottom: 10),
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  labelText: "Gmail",
                ),
                onChanged: (String? value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
            ),
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 30),
                      backgroundColor: Colors.blue),
                  onPressed: () {
                    User? user1 = findNameAndEmail(name!, email!);
                    if (user1 != null) {
                      // Навигация кийинки бетке
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          // Экинчи баракты чакыруу
                          builder: (context) => PrintInfo(user: user1),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "ERROR! Your name or email is not correct!",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    "Sigin in",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account yet?",
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 30),
                          backgroundColor: Colors.blue),
                      onPressed: () {
                        // Навигация кийинки бетке
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            // Экинчи баракты чакыруу
                            builder: (context) => const RegistrationPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Sigin up",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
