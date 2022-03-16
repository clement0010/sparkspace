import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileStatWidgetWidget extends StatefulWidget {
  const ProfileStatWidgetWidget({Key key}) : super(key: key);

  @override
  _ProfileStatWidgetWidgetState createState() =>
      _ProfileStatWidgetWidgetState();
}

class _ProfileStatWidgetWidgetState extends State<ProfileStatWidgetWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '@huizhuansam',
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'followers',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'following',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'posts',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
