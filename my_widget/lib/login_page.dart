import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Map<String, String> userMap = {
    'thalita@gmail.com': '123456asd',
    'thalita@email.com': '123asdf'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/background.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        label: Text('e-mail'),
                        hintText: 'nome@email.com',
                      ),
                      validator: (email) {
                        if (email == null || email.isEmpty) {
                          return 'Type your e-mail';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        label: Text('password'),
                        hintText: 'Type your password',
                      ),
                      validator: (password) {
                        if (password == null || password.isEmpty) {
                          return 'Type your password';
                        } else if (password.length < 6) {
                          return 'Type a password with more than 5 digits';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          logar();
                        }
                      },
                      child: const Text(
                        'ENTER',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  logar() async {
    //Map<String, String> userMap = MyApp.getUserMap;
    if (!userMap.containsKey(emailController.text)) {
      setState(() {
        userMap[emailController.text] = passwordController.text;
      });
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    } else if (passwordController.text != userMap[emailController.text]) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text('Invalid password'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }
    // ignore: avoid_print
    print(userMap);
  }
}
