import '../components/video_content_widget_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ScrollableVideoFeedWidgetWidget extends StatefulWidget {
  const ScrollableVideoFeedWidgetWidget({Key key}) : super(key: key);

  @override
  _ScrollableVideoFeedWidgetWidgetState createState() =>
      _ScrollableVideoFeedWidgetWidgetState();
}

class _ScrollableVideoFeedWidgetWidgetState
    extends State<ScrollableVideoFeedWidgetWidget> {
  PageController pageViewController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: PageView(
        controller: pageViewController ??= PageController(initialPage: 0),
        scrollDirection: Axis.vertical,
        children: [
          VideoContentWidgetWidget(
            videoSourceUrl:
                'https://sparkspace-dev-videoo.obs.cn-south-1.myhuaweicloud.com/assets/Untitled.mp4',
          ),
          VideoContentWidgetWidget(
            videoSourceUrl:
                'https://sparkspace-dev-videoo.obs.cn-south-1.myhuaweicloud.com/assets/Untitled.mp4',
          ),
        ],
      ),
    );
  }
}
