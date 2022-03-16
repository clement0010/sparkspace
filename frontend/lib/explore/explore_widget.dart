import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreWidget extends StatefulWidget {
  const ExploreWidget({Key key}) : super(key: key);

  @override
  _ExploreWidgetState createState() => _ExploreWidgetState();
}

class _ExploreWidgetState extends State<ExploreWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Explore',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: CachedNetworkImageProvider(
                      'https://media.istockphoto.com/photos/big-idea-concept-picture-id610231690?k=20&m=610231690&s=612x612&w=0&h=TflIl7dWYqXBSCcyHM_bm3cK4uPAnQNUBtE-vdclU4k=',
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Colors.transparent,
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 56, 16, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 12),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.96,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0x9AFFFFFF),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 0, 0),
                                  child: TextFormField(
                                    controller: textController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Search for topics',
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xFF1A1F24),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFF1E2429),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  buttonSize: 46,
                                  icon: Icon(
                                    Icons.search_outlined,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Videos',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                        child: Container(
                          width: 250,
                          height: 170,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: CachedNetworkImageProvider(
                                'data:image/jpeg;base64,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',
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x64000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0x9839D2C0),
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            6, 2, 6, 2),
                                        child: Text(
                                          '134 views',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: FaIcon(
                                        FontAwesomeIcons.crown,
                                        color: Color(0xFFFED866),
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2EA9DD),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF2EA9DD),
                                    )
                                  ],
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Pluto Facts',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          Text(
                                            'American Scientific',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                        child: Container(
                          width: 250,
                          height: 170,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: Image.asset(
                                'assets/images/imageSanAn@3x.jpg',
                              ).image,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x64000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0x9839D2C0),
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            6, 2, 6, 2),
                                        child: Text(
                                          '1,324 views',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: FaIcon(
                                        FontAwesomeIcons.crown,
                                        color: Color(0xFFFED866),
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Crowd Management',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          Text(
                                            'Safety Institute',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Articles',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                        child: Container(
                          width: 250,
                          height: 170,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: CachedNetworkImageProvider(
                                'https://www.thoughtco.com/thmb/EpsKarnLz-v0VXY0KKnS_fTX5-U=/2121x1414/filters:fill(auto,1)/GettyImages-545286316-433dd345105e4c6ebe4cdd8d2317fdaa.jpg',
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x64000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0x9839D2C0),
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            6, 2, 6, 2),
                                        child: Text(
                                          '1,365 reads',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2EA9DD),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF2EA9DD),
                                    )
                                  ],
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Acids and Bases',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          Text(
                                            'Chem Academy',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                        child: Container(
                          width: 250,
                          height: 170,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: Image.asset(
                                'assets/images/austin-neill-hgO1wFPXl3I-unsplash.jpg',
                              ).image,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x64000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0x9839D2C0),
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            6, 2, 6, 2),
                                        child: Text(
                                          '1,533 reads',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'The Power of Charisma',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          Text(
                                            'Thought Leadership Institute',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Courses',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                        child: Container(
                          width: 130,
                          height: 170,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'https://images.unsplash.com/photo-1587831990711-23ca6441447b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVza3RvcCUyMGNvbXB1dGVyfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
                              ).image,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x64000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: FaIcon(
                                        FontAwesomeIcons.crown,
                                        color: Color(0xFFFED866),
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2EA9DD),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'CS1011S',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          Text(
                                            'SNUx',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFFFED866),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                        child: Container(
                          width: 130,
                          height: 170,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'https://hips.hearstapps.com/hmg-prod/images/old-books-arranged-on-shelf-royalty-free-image-1572384534.jpg',
                              ).image,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x64000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [],
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2EA9DD),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Shakespear ...',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          Text(
                                            'UCFAx',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFFFED866),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                        child: Container(
                          width: 130,
                          height: 170,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/actionvance-eXVd7gDPO9A-unsplash.jpg',
                              ).image,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x64000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [],
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2EA9DD),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Evolution',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          Text(
                                            'Bronx Academy',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFFFED866),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
