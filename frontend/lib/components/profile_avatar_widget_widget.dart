import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileAvatarWidgetWidget extends StatefulWidget {
  const ProfileAvatarWidgetWidget({Key key}) : super(key: key);

  @override
  _ProfileAvatarWidgetWidgetState createState() =>
      _ProfileAvatarWidgetWidgetState();
}

class _ProfileAvatarWidgetWidgetState extends State<ProfileAvatarWidgetWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Container(
        width: 120,
        height: 120,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Image.network(
          'https://picsum.photos/seed/31/600',
        ),
      ),
    );
  }
}
