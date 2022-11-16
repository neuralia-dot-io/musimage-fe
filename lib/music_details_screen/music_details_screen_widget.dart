import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicDetailsScreenWidget extends StatefulWidget {
  const MusicDetailsScreenWidget({
    Key? key,
    this.artworkUri,
    this.artworkTimestamp,
    this.musicUrlString,
  }) : super(key: key);

  final String? artworkUri;
  final String? artworkTimestamp;
  final String? musicUrlString;

  @override
  _MusicDetailsScreenWidgetState createState() =>
      _MusicDetailsScreenWidgetState();
}

class _MusicDetailsScreenWidgetState extends State<MusicDetailsScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF0C0548),
      appBar: AppBar(
        backgroundColor: Color(0xFF30137B),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).lineColor,
            size: 24,
          ),
        ),
        title: Text(
          'Song Details',
          style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).lineColor,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.network(
                      widget.artworkUri!,
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      fit: BoxFit.contain,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () async {
                                await launchURL(widget.musicUrlString!);
                              },
                              child: Text(
                                'Music Track Url: ${widget.musicUrlString}',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Generated on ${widget.artworkTimestamp}',
                            style: FlutterFlowTheme.of(context)
                                .bodyText2
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).grayIcon,
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
    );
  }
}
