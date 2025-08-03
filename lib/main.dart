import 'package:flutter/material.dart';

void main() {
  runApp(const ResumeApp());
}

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFFE3F2FD),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue, // สี AppBar
          foregroundColor: Colors.white, // สีตัวอักษร AppBar
        ),
      ),
      home: const ResumeHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ResumeHome extends StatelessWidget {
  const ResumeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My resume',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // รูปโปรไฟล์ + ชื่อ
          Column(
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
              const SizedBox(height: 12),
              const Text(
                'ศุภณัฐ มาดหมาย',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text('ภูมิลำเนา: กรุงเทพมหานคร'),
            ],
          ),

          const SizedBox(height: 15),

          // งานอดิเรก
          SizedBox(
            width: 300,
            height: 86,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.book_outlined, size: 30),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'งานอดิเรก',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '1.เล่นกีฬา '
                            '2.เล่นเกมส์ '
                            '3.ดูหนัง',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 12),

          // ประวัติการศึกษา
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'ประวัติการศึกษา',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'ประถมศึกษา:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('โรงเรียน: วันไผ่เงินโชตนาราม'),
                  Text('ปีที่จบ: 2559'),

                  SizedBox(height: 10),
                  Text(
                    'มัธยมต้น:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('โรงเรียน: วัดสุทธิวราราม'),
                  Text('ปีที่จบ: 2562'),

                  SizedBox(height: 10),
                  Text(
                    'มัธยมปลาย:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('โรงเรียน: วัดสุทธิวราราม'),
                  Text('ปีที่จบ: 2565'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}