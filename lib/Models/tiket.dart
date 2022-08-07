import 'package:flutter/material.dart';

class Tiket {
  final int id, tiketCount;
  final String tiketType;
  final IconData tiketIcon;
  final Color tiketColor;

  Tiket({
    required this.id,
    required this.tiketCount,
    required this.tiketType,
    required this.tiketIcon,
    required this.tiketColor
  });
}

List<Tiket> tikets = [
  Tiket(
    id: 1,
    tiketCount: 5,
    tiketType: "New Ticket",
    tiketIcon: Icons.new_releases,
    tiketColor: Color(0xff36AE7C),
  ),
  Tiket(
    id: 2,
    tiketCount: 23,
    tiketType: "On Progress",
    tiketIcon: Icons.refresh,
    tiketColor: Color(0xffFBCB0A),
  ),
  Tiket(
    id: 3,
    tiketCount: 31,
    tiketType: "Finished",
    tiketIcon: Icons.update_disabled,
    tiketColor: Color(0xff187498),
  ),
  Tiket(
    id: 4,
    tiketCount: 0,
    tiketType: "SLA",
    tiketIcon: Icons.crisis_alert,
    tiketColor: Color(0xffEB5353),
  ),
];
