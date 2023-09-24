import 'package:flutter/material.dart';

void main() {
  runApp(RegisterApp());
}

class RegisterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chợ Tốt',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        backgroundColor: Colors.orange,
        actions: const [],
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press here
            print('Nhấn nút back');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/logo.jpg'),
              SizedBox(height: 16.0),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Đăng ký',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tên đăng nhập',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mật khẩu',
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  String username = _usernameController.text;
                  String email = _emailController.text;
                  String password = _passwordController.text;
                  // Perform registration and validation here
                  print('Đăng ký với tên đăng nhập: $username, email: $email, và mật khẩu: $password');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: Size(150, 40),
                ),
                child: const Text('Đăng ký'),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Đã có tài khoản? Đăng nhập',
                style: TextStyle(fontSize: 12.0,color: Colors.blue),
              ),
             Text( 'Quy chế hoạt động sàn-Chính sách bảo mật-Liên hệ hỗ trợ',
              style: TextStyle(fontSize: 12.0),
             ),
            ],
          ),
        ),
      ),
    );
  }
}