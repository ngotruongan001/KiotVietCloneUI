import 'package:flutter/material.dart';
import 'package:kiotvietclone/modules/forgot_password/forgot_password.dart';
import 'package:kiotvietclone/modules/home_page/home_page.dart';
import 'package:kiotvietclone/modules/register/register.dart';
import 'package:kiotvietclone/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  var checkedValue = false;

  @override
  void initState() {
    super.initState();
    context.read<AuthProvider>().getUsers();
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              color: const Color(0xffffffff),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: Image(
                      image: NetworkImage(
                        "https://images.glints.com/unsafe/glints-dashboard.s3.amazonaws.com/company-logo/889f0c27cfcc08447a2c73289f1954af.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 120,
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          _widgetField(
                            title: "Địa chỉ gian hàng",
                            controller: emailController,
                            icon: const Icon(
                              Icons.production_quantity_limits,
                              color: Colors.green,
                            ),
                            isEmail: true,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          _widgetField(
                            title: "Tên đăng nhập",
                            controller: userNameController,
                            icon: const Icon(
                              Icons.account_circle_rounded,
                              color: Colors.green,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          _widgetField(
                            title: "Mật khẩu",
                            controller: passwordController,
                            icon: const Icon(
                              Icons.lock,
                              color: Colors.green,
                            ),
                            isPassword: true,
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) =>
                                          const ForgotPasswordPage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Quên mật khẩu?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () async{
                                  var url = emailController.text;
                                  var userName = userNameController.text;
                                  var password = passwordController.text;
                                  bool isLogin = await context.read<AuthProvider>().onPressedlogin(userName:userName,password: password,url: url,);
                                  print("login $isLogin");
                                  if(isLogin){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));
                                  }else{
                                    _dialogBuilder(context);
                                  }
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height: 60,
                                  color: Colors.white,
                                  child: const Center(
                                    child:  Text(
                                      "Đăng nhập",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>RegisterPage(),),);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text("Bạn chưa có tài khoản?",
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color:
                                            Colors.greenAccent.withOpacity(0.5))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            "KiotViet",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Hỗ trợ 1900 6522",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _widgetField({
    required String title,
    required Icon icon,
    required TextEditingController controller,
    bool? isEmail = false,
    bool? isPassword = false,
  }) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.greenAccent.withOpacity(0.6),
          ),
          child: icon,
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 12.0,
                ),
              ),
              TextFormField(
                autofocus: false,
                controller: controller,
                obscureText: isPassword ?? false,
                validator: (value) {
                  return null;
                },
                onSaved: (value) {
                  controller.text = value!;
                },
                textInputAction: TextInputAction.done,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: title,
                    hintStyle: TextStyle(
                      color: const Color(0xFFFFFFFF).withOpacity(0.8),
                    ),
                    fillColor: const Color(0xFFFFFFFF),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    suffixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        isEmail == true
                            ? const Text(
                                ".kiotviet.vn",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.greenAccent,
                                ),
                              )
                            : const SizedBox.shrink()
                      ],
                    ),),
              ),
            ],
          ),
        ),
      ],
    );
  }
  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Đăng nhập thất bại'),
          content: const Text(
              'Mật khẩu và tài khoản không đúng\n'),
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
