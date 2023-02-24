import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.91),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text("Lịch sử đơn hàng"),
        actions: [
          const Center(
            child: Icon(Icons.search),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _widgetTitle(title: "Sun, 08 M01, 2023"),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  _widgetCard(),
                  _widgetCard(),
                  _widgetCard(),
                  _widgetCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _widgetTitle({required String title}) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12.0,
              color: Colors.black,
            ),
          ),
          const Text(
            "Tất cả",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _widgetCard(){
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(15.0),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey,width: 1.0),),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Icon(Icons.money),
          ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("16,000", style: TextStyle(fontSize: 18.0, color: Colors.green, fontWeight: FontWeight.w500),),
              SizedBox(height: 10,),
              Text("HD000002, Khách lẻ", style: TextStyle(fontSize: 16.0, color: Colors.black, ),),
              Text("08/01/2023 19:30", style: TextStyle(fontSize: 12.0, color: Colors.black, ),),
            ],
          ),),
          const Text("19:30", style: TextStyle(fontSize: 18.0, color: Colors.grey),),
        ],
      ),
    );
  }
}
