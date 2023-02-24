import 'package:flutter/material.dart';
import 'package:kiotvietclone/modules/register/register2.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List listItem = [
    {"title": "Thời trang", "icon": Icons.account_box_outlined},
    {"title": "Tạp hóa &\nSiêu thị mini", "icon": Icons.account_tree},
    {"title": "Điện tử & Điện máy", "icon": Icons.account_balance},
    {"title": "Nông sản & Thực phẩm", "icon": Icons.ac_unit_outlined},
    {"title": "Vật liệu\nXây dựng", "icon": Icons.access_alarms_rounded},
    {"title": "Nội thất &\nGia dụng", "icon": Icons.account_circle_rounded},
    {"title": "Thời trang", "icon": Icons.access_time_filled},
    {"title": "Tạp hóa &\nSiêu thị mini", "icon": Icons.abc_rounded},
    {"title": "Điện tử & Điện máy", "icon": Icons.accessibility_outlined},
    {"title": "Nông sản & Thực phẩm", "icon": Icons.accessible_forward_sharp},
    {"title": "Vật liệu\nXây dựng", "icon": Icons.ad_units_outlined},
    {"title": "Nội thất &Gia dụng", "icon": Icons.add_alert_outlined},
  ];

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
      body: Column(
        children: [
          const SizedBox(
            height: 30.0,
          ),
          const Text(
            "Chọn lĩnh vực kinh doanh",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              crossAxisCount: 3,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const RegisterPage2(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.teal.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.add_reaction_outlined,
                              size: 40,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        const Text(
                          "Thời trang",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                for (int i = 0; i < listItem.length; i++)
                  _widgetCard(
                      title: listItem[i]['title'], icon: listItem[i]['icon']),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _widgetCard({required String title, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.teal.withOpacity(0.2),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Icon(
                icon,
                size: 40,
                color: Colors.green,
              ),
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
