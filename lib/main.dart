import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

class LeftStickyHeaderDemo2 extends StatelessWidget {
  // Data contoh untuk demo
  final List<Map<String, dynamic>> dateData = [
    {'day': 1, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 1'},
    {'day': 2, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 2'},
    {'day': 3, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 3'},
    {'day': 4, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 4'},
    {'day': 5, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 5'},
    {'day': 6, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 6'},
    {'day': 7, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 7'},
    {'day': 8, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 8'},
    {'day': 9, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 9'},
  ];

  LeftStickyHeaderDemo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Sticky Headers Demo'),
      ),
      body: CustomScrollView(
        slivers: dateData.map((data) {
          return SliverStickyHeader(
            // Menampilkan header di sisi kiri (side header)
            overlapsContent: true,
            header: _SideHeader(data: data),
            // Konten akan diberi padding di sebelah kiri agar tidak tertutup header
            sliver: SliverPadding(
              padding: const EdgeInsets.only(left: 60),
              sliver: SliverToBoxAdapter(
                child: _buildContentCard(
                  '${data['month']} ${data['day']}, ${data['year']}',
                  data['content'],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  // Widget untuk kartu konten utama dan tiga kartu tambahan secara vertikal
  Widget _buildContentCard(String title, String content) {
    return Container(
      margin: const EdgeInsets.only(right: 16, bottom: 16),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Kartu utama
          Card(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    content,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          // Kolom untuk tiga kartu tambahan secara vertikal
          Column(
            children: [
              Card(
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Additional Content 1',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Card(
                color: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Additional Content 2',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Card(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Additional Content 3',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Widget header yang ditampilkan di sebelah kiri konten
class _SideHeader extends StatelessWidget {
  final Map<String, dynamic> data;
  const _SideHeader({required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: 44.0,
          width: 44.0,
          child: CircleAvatar(
            backgroundColor: Colors.orangeAccent,
            foregroundColor: Colors.white,
            child: Text(
              '${data['day']}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

// Main app untuk menjalankan demo
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LeftStickyHeaderDemo2(),
  ));
}
