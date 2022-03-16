import '../components/scrollable_video_feed_widget_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: DefaultTabController(
          length: 5,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(
                isScrollable: true,
                labelColor: Color(0xFFF1398C),
                labelStyle: FlutterFlowTheme.of(context).bodyText1,
                tabs: [
                  Tab(
                    text: 'For You',
                  ),
                  Tab(
                    text: 'Maths',
                  ),
                  Tab(
                    text: 'Literature',
                  ),
                  Tab(
                    text: 'Science',
                  ),
                  Tab(
                    text: 'Computer Science',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ScrollableVideoFeedWidgetWidget(),
                    Container(),
                    Text(
                      'Tab View 3',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 32,
                          ),
                    ),
                    Text(
                      'Tab View 4',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 32,
                          ),
                    ),
                    Text(
                      'Tab View 5',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 32,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
