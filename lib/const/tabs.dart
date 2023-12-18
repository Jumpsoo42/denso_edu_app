import 'package:flutter/material.dart';

class TabInfo {
  final IconData icon;
  final String label;

  const TabInfo({
    required this.icon,
    required this.label,
  });
}

const TABS = [
  TabInfo(
    icon: Icons.book_outlined,
    label: '교육 내용',
  ),
  TabInfo(
    icon: Icons.play_circle,
    label: '교육 동영상',
  ),
  TabInfo(
    icon: Icons.insert_page_break_outlined,
    label: '교육 문제',
  ),
  TabInfo(
    icon: Icons.approval,
    label: '동의서',
  ),
];


const TABS_EXAM = [
  TabInfo(
    icon: Icons.check_box_outline_blank,
    label: '1',
  ),
  TabInfo(
    icon: Icons.check_box_outline_blank,
    label: '2',
  ),
  TabInfo(
    icon: Icons.check_box_outline_blank,
    label: '3',
  ),
  TabInfo(
    icon: Icons.check_box_outline_blank,
    label: '4',
  ),
  TabInfo(
    icon: Icons.check_box_outline_blank,
    label: '5',
  ),
  TabInfo(
    icon: Icons.check_box_outline_blank,
    label: '6',
  ),
  TabInfo(
    icon: Icons.check_box_outline_blank,
    label: '7',
  ),
];