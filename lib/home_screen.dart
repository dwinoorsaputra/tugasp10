import 'package:flutter/material.dart';
import 'package:tugasp10/form_screen.dart';
import 'form_login.dart';

class home_screen extends StatefulWidget {
  static const String routes = 'home_screen';
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Apps Toko Oyen'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              width: 800,
              height: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orangeAccent,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50),
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBGNKtQpgnpjoVF1hUwFG4YgYRC-i0E11idUhmvjkKFi49BwxXkM8PUa4XAT14RjwfCEI&usqp=CAU",
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Selamat Datang',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                  Text('',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                  Text('Silahkan Login Bagi Yang Sudah Punya Akun'),
                  Text('Jika belum mempunyai akun daftar bisa kali')
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 1, 65, 202),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const form_screen();
                      }));
                    },
                    child: const Text('Login'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 0, 105, 47),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Signup();
                      }));
                    },
                    child: const Text('Register'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
