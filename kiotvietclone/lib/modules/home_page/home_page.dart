import 'package:flutter/material.dart';
import 'package:kiotvietclone/modules/history/history_page.dart';
import 'package:kiotvietclone/modules/login/login.dart';
import 'package:kiotvietclone/modules/report_end_day/report_end_day.dart';
import 'package:kiotvietclone/modules/setting/setting.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool checkBoxValue = true;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lựa chọn bán hàng'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 140,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Ngọc Tình',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Chi nhánh trung tâm',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.shopping_cart,
                    size: 25,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Bán Hàng',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.book,
                    size: 25,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Hóa đơn tạm',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.access_time,
                    size: 25,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Lịch sử bán hàng',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (_)=>HistoryPage()));

              },
            ),
            const SizedBox(height: 8,),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black12,
                border: Border(
                  top: BorderSide(width: 0.5, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 8,),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.download_rounded,
                    size: 25,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Xử lí đặt hàng',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.arrow_back_rounded,
                    size: 25,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Trả hàng',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 8,),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black12,
                border: Border(
                  top: BorderSide(width: 0.5, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 8,),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.document_scanner,
                    size: 25,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Lập phiếu thu',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.insert_chart,
                    size: 25,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Xem báo cáo ngày',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>ReportEndDay()));
              },
            ),
            const SizedBox(height: 8,),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black12,
                border: Border(
                  top: BorderSide(width: 0.5, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 8,),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.manage_accounts,
                    size: 25,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Quản lí',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                  children: const [
                    Icon(
                      Icons.settings,
                      size: 25,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Cài đặt',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )
                  ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (_)=>SettingPage()));

              },
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.message,
                    size: 25,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Chat với KiotViet',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.rule_outlined,
                    size: 25,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Điều khoản',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.phone_callback,
                    size: 25,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Gọi 1900 6522',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.logout_rounded,
                    size: 25,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Đăng xuất',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Nhập tên, mã, Serial/IME',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          )),
                    ),
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.qr_code_scanner,
                    color: Colors.grey,
                    size: 35.0,
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.black12,
                border: Border(
                  top: BorderSide(width: 0.5, color: Colors.grey),
                  bottom: BorderSide(width: 0.5, color: Colors.grey),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.person,
                              size: 25,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Khách lẻ',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 16),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.label_important_rounded,
                              size: 25,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Bản giá chung',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.list,
                            size: 25,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Tất cả',
                            style: TextStyle(color: Colors.green, fontSize: 16),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              value: checkBoxValue,
                              activeColor: Colors.green,
                              onChanged: (newValue) {
                                setState(() {
                                  checkBoxValue = !checkBoxValue;
                                });
                              }),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Bản giá chung',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
