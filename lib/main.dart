// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

import 'widget/content_test.dart';
import 'widget/sidebar_test.dart';

// Import file sidebar.dart dan dummy_content.dart


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sticky Sidebar Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StickySidebarHome(),
    );
  }
}

class StickySidebarHome extends StatelessWidget {
  const StickySidebarHome({super.key});

  // Contoh data untuk beberapa section
  final List<Map<String, String>> sections = const [
    {
      'label': '1',
      'title': 'Section 1',
      'description': 'Content for Section 1'
    },
    {
      'label': '2',
      'title': 'Section 2',
      'description': 'Content for Section 2'
    },
    {
      'label': '3',
      'title': 'Section 3',
      'description': 'Content for Section 3'
    },
    {
      'label': '4',
      'title': 'Section 4',
      'description': 'Content for Section 4'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sticky Sidebar Demo'),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        child: CustomScrollView(
          slivers: sections.map((section) {
            return SliverStickyHeader(
              // overlapsContent true agar sidebar dapat “menempel” di area kiri
              overlapsContent: true,
              // Sidebar dipanggil dari file sidebar.dart
              header: SideHeader(label: section['label']!),
              // Konten ditempatkan dengan padding kiri agar tidak tertutup sidebar
              sliver: SliverPadding(
                padding: const EdgeInsets.only(left: 60),
                sliver: SliverToBoxAdapter(
                  child: DummyContent(
                    title: section['title']!,
                    description: section['description']!,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
