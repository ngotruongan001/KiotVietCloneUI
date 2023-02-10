import 'package:flutter/material.dart';

class FilterReport extends StatefulWidget {
  const FilterReport({Key? key}) : super(key: key);

  @override
  State<FilterReport> createState() => _FilterReportState();
}

class _FilterReportState extends State<FilterReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.91),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Lộc báo cáo"),
        actions: [
          Center(
            child: Text("ÁP DỤNG",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                )),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _widgetColumn(title: "Nhân viên"),
            _widgetColumn(title: "Người tạo"),
          ],
        ),
      ),
    );
  }

  Widget _widgetColumn({required String title}) {
    return Column(
      children: [
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
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
        ),
        Container(
          height: 55,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Tất cả",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
      ],
    );
  }
}
