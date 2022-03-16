import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateWidget extends StatefulWidget {
  const CreateWidget({Key key}) : super(key: key);

  @override
  _CreateWidgetState createState() => _CreateWidgetState();
}

class _CreateWidgetState extends State<CreateWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFF1398C),
        automaticallyImplyLeading: false,
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              ' ',
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
