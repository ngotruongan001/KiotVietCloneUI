import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

List listItem = [
  {
    'title': 'Máy in',
    'data': [
      {
        'title': 'Sử dụng máy in',
        'status': true,
        'desciption': '',
      },
      {
        'title': 'Chọn máy',
        'status': false,
        'desciption': '',

      },
      {
        'title': 'Chọn mẫu trước khi in',
        'status': true,
        'desciption': '',

      },
      {
        'title': 'Mở ngăn kéo đựng tiền khi in',
        'status': true,
        'desciption': '',

      },
      {
        'title': 'In hóa đơn',
        'status': false,
        'desciption': '',

      },
      {
        'title': 'In đặt hàng',
        'status': false,
        'desciption': '',

      },
      {
        'title': 'In giao hàng',
        'status': false,
        'desciption': '',

      },
      {
        'title': 'In trả hàng',
        'status': false,
        'desciption': '',

      },
    ],
  },
  {
    'title': 'Chung',
    'data': [
      {
        'title': 'Âm báo quét mã vạch',
        'status': false,
        'desciption': 'Rung và âm báo',

      },
      {
        'title': 'Sắp xếp hàng bán',
        'status': false,
        'desciption': 'Mới tạo',

      },
      {
        'title': 'Sắp xếp hàng trong đơn',
        'status': false,
        'desciption': 'Rung và âm báo',

      },
      {
        'title': 'Thêm dòng',
        'status': true,
        'desciption': 'Thêm nhiều dòng cho 1 hàng hóa',

      },
      {
        'title': 'Thay đổi đơn giá',
        'status': true,
        'desciption': '',

      },
      {
        'title': 'Mặc định khách thanh toán',
        'status': true,
        'desciption': 'Mặc định khách thanh toán',

      },
      {
        'title': 'Đồng bộ khách hàng, hàng hóa',
        'status': false,
        'desciption': '',

      },
    ],
  },
  {
    'title': 'Giới thiệu',
    'data': [
      {
        'title': 'Giấy phép nguồn mở',
        'status': false,
        'desciption': 'Chi tiết giấy phép của phần mềm nguồn mở',

      },
      {
        'title': 'Phiên bản đóng gói',
        'status': false,
        'desciption': 'Phiên bả: 6.1.1.3',

      },

    ],
  }
];

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: GestureDetector(onTap: ()=>Navigator.pop(context),child: Icon(Icons.arrow_back_ios)),
        title: Text("Cài đặt"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < listItem.length; i++) _widgetColumn(title: listItem[i]['title'],listItemAtColumn: listItem[i]['data']),
          ],
        ),
      ),
    );
  }

  Widget _widgetColumn(
      {required String title, required List listItemAtColumn,}) {
    return Column(
      children: [
        _widgetTitle(title: title),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          color: Colors.white,
          child: Column(
            children: [
              for (int i = 0; i < listItemAtColumn.length; i++)
                _widgetRowItem(
                    title: listItemAtColumn[i]['title'],
                    isSwitch: listItemAtColumn[i]['status'],
                desciption: listItemAtColumn[i]['desciption']
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _widgetTitle({required String title}) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      color: Colors.grey.withOpacity(0.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _widgetRowItem({required String title, bool? isSwitch = false, required String desciption}) {
    return SizedBox(
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              Text(desciption, style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.0,
                color: Colors.grey,
              ),)
            ],
          ),
          isSwitch == true ? Switch(value: false, onChanged: (value) {}) : SizedBox.shrink(),
        ],
      ),
    );
  }
}
