import 'package:flutter/material.dart';
import 'package:kiotvietclone/modules/home_page/home_page.dart';
import 'package:kiotvietclone/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class RegisterPage2 extends StatefulWidget {
  const RegisterPage2({Key? key}) : super(key: key);

  @override
  State<RegisterPage2> createState() => _Register2PageState();
}

class _Register2PageState extends State<RegisterPage2> {
  // editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  var checkedValue = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    userNameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
          ),
        ),
        title: const Text(
          "Đăng ký",
          style: TextStyle(color: Colors.black, fontSize: 14.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Đăng ký",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                "Nhập tên gian hàng, tên đăng nhập và mật khẩu.",
                style: TextStyle(fontSize: 14.0, color: Colors.grey),
              ),
              const SizedBox(
                height: 80.0,
              ),
              _widgetTextField(
                controller: emailController,
                hintText: "Tên gian hàng",
                isEmail: true,
              ),
              const SizedBox(
                height: 20.0,
              ),
              _widgetTextField(
                controller: userNameController,
                hintText: "Tên đăng nhập",
              ),
              const SizedBox(
                height: 20.0,
              ),
              _widgetTextField(
                controller: passwordController,
                hintText: "Mật khẩu",
                isPassword: true,
              ),
              const SizedBox(
                height: 100.0,
              ),
              InkWell(
                onTap: () async {
                  var url = emailController.text;
                  var userName = userNameController.text;
                  var password = passwordController.text;
                  bool isRegister =
                      await context.read<AuthProvider>().onPressedRegister(
                            url: url,
                            userName: userName,
                            password: password,
                          );
                  print(isRegister);

                  if (isRegister) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => HomePage(),
                      ),
                    );
                  } else {
                    _dialogBuilder(context);
                  }
                },
                child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Center(
                    child: Text(
                      "Tiếp tục",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Tổng đài hỗ trợ ",
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                  Text(
                    "1900 6522",
                    style: TextStyle(fontSize: 12.0, color: Colors.green),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _widgetTextField({
    required TextEditingController controller,
    required String hintText,
    bool? isEmail = false,
    bool? isPassword = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextFormField(
          style: const TextStyle(color: Colors.black),
          autofocus: false,
          obscureText: isPassword ?? false,
          controller: controller,
          validator: (value) {
            return null;
          },
          onSaved: (value) {
            controller.text = value!;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            hintText: hintText,
            label: Text(
              hintText,
              style: const TextStyle(color: Colors.grey),
            ),
            hintStyle: const TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            fillColor: Colors.white,
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isEmail == true
                      ? Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.withOpacity(0.3),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                            child: Text(
                              ".kiotviet.vn",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
          )),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Đăng ký thất bại'),
          content: const Text(
              'Mật khẩu và tài khoản không đúng hoặc đã tồn tại\n'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Cancel', style: TextStyle(color: Colors.red, fontSize: 20.0),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
