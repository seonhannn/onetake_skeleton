import 'package:flutter/material.dart';
import 'package:onetake_skeleton/resources/resources.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    double wt = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: wt,
        color: const Color(0xffF4F4F4),
        alignment: Alignment.center,
        child: Container(
          width: 300,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Images.ot, width: 72, height: 72),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text("로그인",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                ),
                // 이메일 입력 필드
                Container(
                  width: 298,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(color: Colors.grey.withOpacity(0.3)),
                        left: BorderSide(color: Colors.grey.withOpacity(0.3)),
                        right: BorderSide(color: Colors.grey.withOpacity(0.3)),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                      )),
                  child: TextField(
                    cursorColor: Color(0xff0d6efd),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      hintText: '이메일',
                      hintStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none, // 기본 테두리 제거
                    ),
                  ),
                ),
                // 구분선
                SizedBox(
                    width: 298,
                    child: Divider(height: 1, color: Colors.grey[300])),
                // 비밀번호 입력 필드
                Container(
                  width: 298,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.withOpacity(0.3)),
                        left: BorderSide(color: Colors.grey.withOpacity(0.3)),
                        right: BorderSide(color: Colors.grey.withOpacity(0.3)),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      )),
                  child: TextField(
                    obscureText: true, // 비밀번호 입력
                    cursorColor: Color(0xff0d6efd),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      hintText: '비밀번호',
                      hintStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                // 체크박스 + 텍스트
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          isChecked = value!;
                          setState(() {});
                        },
                        activeColor: const Color(0xff0d6efd),
                        checkColor: Colors.white,
                      ),
                      const Text(
                        "기억하기 자동로그인",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 298,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xff0d6efd),
                  ),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: const Text(
                    "로그인",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
