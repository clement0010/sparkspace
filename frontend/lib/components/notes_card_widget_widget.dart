import '../components/note_card_grid_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NotesCardWidgetWidget extends StatefulWidget {
  const NotesCardWidgetWidget({Key key}) : super(key: key);

  @override
  _NotesCardWidgetWidgetState createState() => _NotesCardWidgetWidgetState();
}

class _NotesCardWidgetWidgetState extends State<NotesCardWidgetWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(),
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: GridView(
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            scrollDirection: Axis.vertical,
            children: [
              NoteCardGridWidget(),
              NoteCardGridWidget(),
              NoteCardGridWidget(),
              NoteCardGridWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
