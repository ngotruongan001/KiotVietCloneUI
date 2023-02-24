import 'package:flutter/material.dart';

class ReportEndDay extends StatefulWidget {
  const ReportEndDay({Key? key}) : super(key: key);

  @override
  State<ReportEndDay> createState() => _ReportEndDayState();
}

class _ReportEndDayState extends State<ReportEndDay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: Icon(Icons.list_alt),
        title: Text("Báo cáo cuối ngày"),
        actions: [
          Center(
            child: Icon(Icons.filter_list),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 10, 6),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
              ),
              child: Row(
                children: [Text("Hôm nay, 13/01/2023",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)), SizedBox(width: 5.0,),Icon(Icons.vertical_align_bottom)],
              ),
            ),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Chưa có giao dịch", style: TextStyle( fontSize: 30.0, color: Colors.grey),),
              ],
            ),)
          ],
        ),
      
    );
  }
}
