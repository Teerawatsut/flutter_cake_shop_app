import 'package:flutter/material.dart';
import 'package:flutter_cake_shop_app/views/cake_shop_list_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    //หน่วงเวลา 3 วินาทีแล้วเปิดไปหน้า CakeShopListUi แบบย้อนกลับไม่ได้
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => CakeShopListUi(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //ชั้นที่ 1
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_welcome.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //ชั้นที่ 2
          Center(
            child: Column(
              children: [
                SizedBox(height: 100),
                Text(
                  'สายด่วนกินเค้ก',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Text(
                  'CAKE CALL FAST',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 20),
                CircularProgressIndicator(
                  color: Colors.red,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
