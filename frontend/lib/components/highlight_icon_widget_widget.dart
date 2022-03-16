import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HighlightIconWidgetWidget extends StatefulWidget {
  const HighlightIconWidgetWidget({
    Key key,
    this.title,
    this.photoUrl,
  }) : super(key: key);

  final String title;
  final String photoUrl;

  @override
  _HighlightIconWidgetWidgetState createState() =>
      _HighlightIconWidgetWidgetState();
}

class _HighlightIconWidgetWidgetState extends State<HighlightIconWidgetWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(120),
              border: Border.all(
                color: Color(0xFF2EA9DD),
                width: 3,
              ),
            ),
            child: Container(
              width: 0,
              height: 0,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                widget.photoUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
              child: Text(
                widget.title,
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
