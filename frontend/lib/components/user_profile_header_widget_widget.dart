import '../components/profile_avatar_widget_widget.dart';
import '../components/profile_stat_widget_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfileHeaderWidgetWidget extends StatefulWidget {
  const UserProfileHeaderWidgetWidget({Key key}) : super(key: key);

  @override
  _UserProfileHeaderWidgetWidgetState createState() =>
      _UserProfileHeaderWidgetWidgetState();
}

class _UserProfileHeaderWidgetWidgetState
    extends State<UserProfileHeaderWidgetWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileAvatarWidgetWidget(),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ProfileStatWidgetWidget(),
            ),
          ],
        ),
      ],
    );
  }
}
