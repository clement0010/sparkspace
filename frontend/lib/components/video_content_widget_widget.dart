import '../components/add_note_modal_widget_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoContentWidgetWidget extends StatefulWidget {
  const VideoContentWidgetWidget({
    Key key,
    this.videoSourceUrl,
  }) : super(key: key);

  final String videoSourceUrl;

  @override
  _VideoContentWidgetWidgetState createState() =>
      _VideoContentWidgetWidgetState();
}

class _VideoContentWidgetWidgetState extends State<VideoContentWidgetWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional(1, 0),
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(),
            child: FlutterFlowVideoPlayer(
              path: valueOrDefault<String>(
                widget.videoSourceUrl,
                'https://sparkspace-dev-videoo.obs.cn-south-1.myhuaweicloud.com/assets/Untitled.mp4',
              ),
              videoType: VideoType.network,
              width: double.infinity,
              height: double.infinity,
              autoPlay: true,
              looping: true,
              showControls: false,
              allowFullScreen: false,
              allowPlaybackSpeedMenu: false,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(),
                child: Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/seed/991/600',
                  ),
                ),
              ),
              ToggleIcon(
                onPressed: () async {
                  setState(
                      () => FFAppState().videoLike = !FFAppState().videoLike);
                },
                value: FFAppState().videoLike,
                onIcon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 30,
                ),
                offIcon: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text(
                'Like',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.chat_bubble_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
              Text(
                'Comment',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.send_sharp,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
              Text(
                'Share',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.note_add,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () async {
                  setState(() => FFAppState().activateAddNoteModal = true);
                },
              ),
              Text(
                'Add Note',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.topic,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
              Text(
                ' My Notes',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
              ),
            ],
          ),
          if (FFAppState().activateAddNoteModal ?? true)
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: AddNoteModalWidgetWidget(),
            ),
        ],
      ),
    );
  }
}
