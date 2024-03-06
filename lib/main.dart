import 'package:flutter/material.dart';

void main() {
  runApp(const LoginScreen());
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController txtUsername = TextEditingController();
TextEditingController txtPassword = TextEditingController();
TextEditingController txtEmail = TextEditingController();

String? username = "drashti";
String? password = "123654";
String? email = "gssh@gmail.com";

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffEEF5FF),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 51),
                child: Image.asset('asset/img/welcome.png', height: 225),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 45,
                      letterSpacing: 0.5,
                      color: Color(0xff1A374D),
                      fontWeight: FontWeight.w600),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Please Sign in to continue.',
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff1A374D),
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: txtUsername,
                  keyboardType: TextInputType.name,
                  cursorColor: Colors.black54,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    hintText: "Drashti Patel",
                    prefixIcon: const Icon(
                      Icons.person_2_outlined,
                      size: 28,
                      color: Colors.black26,
                    ),
                    label: const Text(
                      'Username',
                      style: TextStyle(color: Colors.black26, fontSize: 16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: txtPassword,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.black54,
                  obscureText: _isPasswordVisible,
                  maxLength: 8,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintText: '********',
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      size: 25,
                      color: Colors.black26,
                    ),
                    label: const Text(
                      'Password',
                      style: TextStyle(color: Colors.black26, fontSize: 16),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                      child: Icon(
                        _isPasswordVisible
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: Colors.black26,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: txtEmail,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.black54,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintText: "abc@email.com",
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      size: 25,
                      color: Colors.black26,
                    ),
                    label: const Text(
                      'Email',
                      style: TextStyle(color: Colors.black26, fontSize: 16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    username = txtUsername.text;
                    password = txtPassword.text;
                    email = txtEmail.text;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: 60,
                    width: 370,
                    decoration: BoxDecoration(
                      color: const Color(0xff1A374D),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 75),
                child: Row(
                  children: [
                    Text(
                      "Don't have account? ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Color(0xff1A374D),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, $username!',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              'Your email is: $email',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
