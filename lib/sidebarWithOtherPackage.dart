// import 'package:flutter/material.dart';
// import 'package:sticky_infinite_list_plus/sticky_infinite_list.dart';

// class LeftStickyHeaderDemo extends StatelessWidget {
//   // Sample data for demonstration
//   final List<Map<String, dynamic>> dateData = [
//     {'day': 1, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 1'},
//     {'day': 2, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 2'},
//     {'day': 3, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 3'},
//     {'day': 4, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 4'},
//     {'day': 5, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 5'},
//     {'day': 6, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 6'},
//     {'day': 7, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 7'},
//     {'day': 8, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 8'},
//     {'day': 9, 'month': 'Jul', 'year': 2020, 'content': 'Content for July 9'},
//   ];

//   LeftStickyHeaderDemo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Demo Home Page'),
//       ),
//       body: InfiniteList(
//         // Karena tidak ada InfiniteListDirection.vertical,
//         // kita gunakan InfiniteListDirection.single (atau multi sesuai kebutuhan)
//         direction: InfiniteListDirection.single,
//         // Menentukan jumlah item yang ada (hanya sisi positif)
//         posChildCount: dateData.length,
//         // Build list items
//         builder: (context, index) {
//           final data = dateData[index];

//           return InfiniteListItem.overlay(
//             // Ubah cross-axis alignment ke start (sisi kiri)
//             crossAxisAlignment: HeaderCrossAxisAlignment.start,
//             // Header yang bereaksi terhadap perubahan posisi scroll
//             headerStateBuilder: (context, state) {
//               return _buildDateCircle(data['day'], data['month']);
//             },
//             // Konten utama
//             contentBuilder: (context) {
//               return _buildContentCard(
//                 '${data['month']} ${data['day']}, ${data['year']}',
//                 data['content'],
//               );
//             },
//             // Padding untuk jarak
//             padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
//           );
//         },
//       ),
//     );
//   }

//   // Widget untuk lingkaran tanggal yang menempel di sisi kiri
//   Widget _buildDateCircle(int day, String month) {
//     return Container(
//       width: 60,
//       height: 60,
//       decoration: const BoxDecoration(
//         color: Colors.orange,
//         shape: BoxShape.rectangle,
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             day.toString(),
//             style: const TextStyle(
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             ),
//           ),
//           Text(
//             month,
//             style: const TextStyle(
//               fontSize: 16,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Widget untuk kartu konten yang muncul di sebelah lingkaran tanggal,
//   // beserta tiga kartu tambahan secara horizontal
//   // Widget untuk kartu konten yang muncul di sebelah lingkaran tanggal,
// // beserta tiga kartu tambahan secara vertikal
// Widget _buildContentCard(String title, String content) {
//   return Container(
//     margin: const EdgeInsets.only(left: 70), // Margin agar tidak tertutup lingkaran tanggal
//     width: double.infinity,
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Kartu utama
//         Card(
//           color: Colors.blue,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                   ),
//                 ),
//                 const SizedBox(height: 12),
//                 Text(
//                   content,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         const SizedBox(height: 12),
//         // Column untuk tiga kartu tambahan secara vertikal
//         Column(
//           children: [
//             Card(
//               color: Colors.green,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: const Padding(
//                 padding: EdgeInsets.all(100),
//                 child: Text(
//                   'Additional Content 1',
//                   style: TextStyle(color: Colors.white, fontSize: 16),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 8),
//             Card(
//               color: Colors.orange,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: const Padding(
//                 padding: EdgeInsets.all(100),
//                 child: Text(
//                   'Additional Content 2',
//                   style: TextStyle(color: Colors.white, fontSize: 16),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 8),
//             Card(
//               color: Colors.red,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: const Padding(
//                 padding: EdgeInsets.all(100),
//                 child: Text(
//                   'Additional Content 3',
//                   style: TextStyle(color: Colors.white, fontSize: 16),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 12),
//       ],
//     ),
//   );
// }

// }

// // Main app untuk menjalankan demo
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: LeftStickyHeaderDemo(),
//   ));
// }
