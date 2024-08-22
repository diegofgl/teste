import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'onboarding',
      routes: {
        'onboarding': (context) => const OnboardingPage(),
        'login': (context) => const LoginPage(),
        'sign_up': (context) => const SignUpPage(),
      },
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 411,
                child: Image.asset(
                  'assets/sammy.png',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    right: 32.0, left: 32.0, top: 28.0, bottom: 32.0),
                child: Text(
                  'Learn with pleasure with us, wherever you are!',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  style: TextButton.styleFrom(
                    fixedSize: const Size(347, 52),
                    backgroundColor: const Color.fromRGBO(249, 86, 77, 1),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  fixedSize: const Size(347, 52),
                  backgroundColor: const Color.fromARGB(255, 236, 235, 235),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                ),
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    color: Color.fromRGBO(249, 86, 77, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'sign_up');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/chevron-left.png'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome back!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 183),
              child: Text(
                'Let’s sign you in',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(158, 158, 158, 1)),
              ),
            ),
            const Form(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromRGBO(249, 86, 77, 1),
                        )),
                        labelText: 'E-mail',
                        floatingLabelStyle: TextStyle(
                          color: Color.fromRGBO(249, 86, 77, 1),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(249, 86, 77, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      hintText: 'Type your password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(249, 86, 77, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  child: Text(
                    'Forget your password?',
                    style: TextStyle(
                      color: Color.fromRGBO(249, 86, 77, 1),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, bottom: 16),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  fixedSize: const Size(347, 52),
                  backgroundColor: const Color.fromRGBO(249, 86, 77, 1),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 160,
                      height: 56,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 214, 210, 210),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset('assets/flat-color-icons_google.png'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 160,
                      height: 56,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 214, 210, 210),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset('assets/ci_apple.png'),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don’t have account? '),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'sign_up');
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      color: Color.fromRGBO(249, 86, 77, 1),
                    ),
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

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/chevron-left.png'),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 56, right: 32, left: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 217),
                child: const Text(
                  'Sign up and start learning!',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Form(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(249, 86, 77, 1),
                          )),
                          labelText: 'Nome',
                          hintText: 'Type your name',
                          floatingLabelStyle: TextStyle(
                            color: Color.fromRGBO(249, 86, 77, 1),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(249, 86, 77, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                          hintText: 'Type your e-mail',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(249, 86, 77, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 48),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          hintText: 'Type your password',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(249, 86, 77, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          fixedSize: const Size(347, 52),
                          backgroundColor: const Color.fromRGBO(249, 86, 77, 1),
                        ),
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Have an account? '),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'login');
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Color.fromRGBO(249, 86, 77, 1),
                            ),
                          ),
                        ),
                      ],
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
