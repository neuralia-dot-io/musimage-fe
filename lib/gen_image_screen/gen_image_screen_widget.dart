import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import '../custom_code/widgets/index.dart' as custom_widgets;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class GenImageScreenWidget extends StatefulWidget {
  const GenImageScreenWidget({Key? key}) : super(key: key);

  @override
  _GenImageScreenWidgetState createState() => _GenImageScreenWidgetState();
}

class _GenImageScreenWidgetState extends State<GenImageScreenWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'switchOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 5,
          offset: Offset(5, 0),
          rotation: 0.087,
        ),
      ],
    ),
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };
  ApiCallResponse? apiResultfxAudio;
  String? refreshedToken;
  TextEditingController? audioUrlController;
  ApiCallResponse? apiResultfxk;
  String? refreshedTokenUrl;
  bool? switchValue;
  String? dropDownValue1;
  String? dropDownValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    audioUrlController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    audioUrlController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ConfigRecord>(
      stream: ConfigRecord.getDocument(FFAppState().tapToRecord!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitWave(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        final genImageScreenConfigRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.black,
          drawer: Drawer(
            elevation: 16,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).black600,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(25, 50, 25, 25),
                          child: Text(
                            currentUserEmail,
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFEE9339),
                                  fontSize: 16,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).lineColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed('CreditsScreen');
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.attach_money_outlined,
                          color: FlutterFlowTheme.of(context).secondaryColor,
                        ),
                        title: Text(
                          'Buy Shots',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).tertiary400,
                              ),
                        ),
                        dense: false,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        context.goNamed('ServiceScreen');

                        if (scaffoldKey.currentState!.isDrawerOpen ||
                            scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                        }
                      },
                      child: ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.server,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                        ),
                        title: Text(
                          'Services Menu',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                              ),
                        ),
                        tileColor: Color(0xFF1D7C70),
                        dense: false,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed('CouponScreen');

                        if (scaffoldKey.currentState!.isDrawerOpen ||
                            scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                        }
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.fiber_pin,
                          color: Color(0xFFCB39CB),
                        ),
                        title: Text(
                          'Enter Coupon Code',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFCB39CB),
                              ),
                        ),
                        tileColor: Color(0xFF1D7C70),
                        dense: false,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        GoRouter.of(context).prepareAuthEvent();
                        await signOut();
                        if (scaffoldKey.currentState!.isDrawerOpen ||
                            scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                        }

                        context.goNamedAuth('AuthScreen', mounted);
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.logout,
                          color: Color(0xFFBC0E0E),
                        ),
                        title: Text(
                          'Logout',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Poppins',
                                color: Color(0xD7D52929),
                              ),
                        ),
                        tileColor: Color(0xFFE22CF0),
                        dense: false,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      ),
                    ),
                  ),
                  Spacer(),
                  if (valueOrDefault<bool>(currentUserDocument?.isAdmin, false))
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: AuthUserStreamWidget(
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed('AdminScreen');

                            if (scaffoldKey.currentState!.isDrawerOpen ||
                                scaffoldKey.currentState!.isEndDrawerOpen) {
                              Navigator.pop(context);
                            }
                          },
                          child: ListTile(
                            title: Text(
                              'Admin',
                              textAlign: TextAlign.end,
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFEE9339),
                                      ),
                            ),
                            trailing: Icon(
                              Icons.admin_panel_settings,
                              color: Color(0xFFEE9339),
                              size: 40,
                            ),
                            tileColor: Color(0xFFD15F01),
                            dense: false,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          endDrawer: Drawer(
            elevation: 16,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xFF221C2F),
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 50, 15, 0),
                          child: SelectionArea(
                              child: Text(
                            'Your Artworks',
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).lineColor,
                                ),
                          )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Container(
                            width: 100,
                            height: 1,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0x00E0E3E7),
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                      child: StreamBuilder<List<NotificationsUsersRecord>>(
                        stream: queryNotificationsUsersRecord(
                          queryBuilder: (notificationsUsersRecord) =>
                              notificationsUsersRecord
                                  .where('uid', isEqualTo: currentUserUid)
                                  .where('type', isEqualTo: 1)
                                  .orderBy('timestamp', descending: true),
                          limit: 100,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitWave(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<NotificationsUsersRecord>
                              listViewNotificationsUsersRecordList =
                              snapshot.data!;
                          if (listViewNotificationsUsersRecordList.isEmpty) {
                            return Center(
                              child: Image.asset(
                                'assets/images/nonotif.png',
                                width: 100,
                                height: 100,
                              ),
                            );
                          }
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount:
                                listViewNotificationsUsersRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewNotificationsUsersRecord =
                                  listViewNotificationsUsersRecordList[
                                      listViewIndex];
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 8, 5, 0),
                                child: FutureBuilder<ArtworksRecord>(
                                  future: ArtworksRecord.getDocumentOnce(
                                      listViewNotificationsUsersRecord
                                          .artworkRef!),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: SpinKitWave(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            size: 50,
                                          ),
                                        ),
                                      );
                                    }
                                    final containerArtworksRecord =
                                        snapshot.data!;
                                    return InkWell(
                                      onTap: () async {
                                        final notificationsUsersUpdateData =
                                            createNotificationsUsersRecordData(
                                          wasRead: true,
                                        );
                                        await listViewNotificationsUsersRecord
                                            .reference
                                            .update(
                                                notificationsUsersUpdateData);
                                        if (listViewNotificationsUsersRecord
                                                .type !=
                                            1) {
                                          return;
                                        }

                                        context.pushNamed(
                                          'ArtworkDetailsScreen',
                                          queryParams: {
                                            'artworkUri': serializeParam(
                                              containerArtworksRecord
                                                  .artworkUrl,
                                              ParamType.String,
                                            ),
                                            'artworkPrompt': serializeParam(
                                              containerArtworksRecord
                                                  .generatedPrompt,
                                              ParamType.String,
                                            ),
                                            'artworkTimestamp': serializeParam(
                                              containerArtworksRecord.timestamp,
                                              ParamType.String,
                                            ),
                                            'artworkIsAudio': serializeParam(
                                              containerArtworksRecord.isAudio,
                                              ParamType.bool,
                                            ),
                                            'artworkUrlString': serializeParam(
                                              containerArtworksRecord
                                                  .artworkUrlString,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: Color(0x32E22CF0),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                            color: Color(0xC5D70CE7),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (!listViewNotificationsUsersRecord
                                                .wasRead!)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 0, 0, 0),
                                                child: Icon(
                                                  Icons
                                                      .mark_chat_unread_rounded,
                                                  color: Color(0xFFEE9339),
                                                  size: 24,
                                                ),
                                              ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(18, 8, 8, 8),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        15,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              listViewNotificationsUsersRecord
                                                                  .title!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        16,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            listViewNotificationsUsersRecord
                                                                .description!,
                                                            maxLines: 1,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .grayIcon,
                                                                  fontSize: 12,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            listViewNotificationsUsersRecord
                                                                .timestamp!
                                                                .toString(),
                                                            maxLines: 1,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .grayIcon,
                                                                  fontSize: 12,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            if (listViewNotificationsUsersRecord
                                                    .type ==
                                                1)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 15, 15, 15),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    FutureBuilder<
                                                        ArtworksRecord>(
                                                      future: ArtworksRecord
                                                          .getDocumentOnce(
                                                              listViewNotificationsUsersRecord
                                                                  .artworkRef!),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50,
                                                              height: 50,
                                                              child:
                                                                  SpinKitWave(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                size: 50,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final imageArtworksRecord =
                                                            snapshot.data!;
                                                        return Image.network(
                                                          imageArtworksRecord
                                                              .artworkUrl!,
                                                          width: 50,
                                                          height: 50,
                                                          fit: BoxFit.cover,
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.95,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/bg1.gif',
                        ).image,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xAC000000),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 5, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        scaffoldKey.currentState!.openDrawer();
                                      },
                                      child: Icon(
                                        Icons.person,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        size: 36,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 10, 0),
                                      child: StreamBuilder<UsersRecord>(
                                        stream: UsersRecord.getDocument(
                                            currentUserReference!),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SpinKitWave(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  size: 50,
                                                ),
                                              ),
                                            );
                                          }
                                          final textUsersRecord =
                                              snapshot.data!;
                                          return Text(
                                            '🕺🏾${textUsersRecord.inferencesNumber?.toString()}',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .title2
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  StreamBuilder<List<NotificationsUsersRecord>>(
                                    stream: queryNotificationsUsersRecord(
                                      queryBuilder:
                                          (notificationsUsersRecord) =>
                                              notificationsUsersRecord
                                                  .where('uid',
                                                      isEqualTo: currentUserUid)
                                                  .where('wasRead',
                                                      isEqualTo: false)
                                                  .where('type', isEqualTo: 1),
                                      limit: 50,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: SpinKitWave(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 50,
                                            ),
                                          ),
                                        );
                                      }
                                      List<NotificationsUsersRecord>
                                          badgeNotificationsUsersRecordList =
                                          snapshot.data!;
                                      return InkWell(
                                        onTap: () async {
                                          scaffoldKey.currentState!
                                              .openEndDrawer();
                                        },
                                        child: Badge(
                                          badgeContent: Text(
                                            badgeNotificationsUsersRecordList
                                                .length
                                                .toString(),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                ),
                                          ),
                                          showBadge:
                                              badgeNotificationsUsersRecordList
                                                      .length >
                                                  0,
                                          shape: BadgeShape.circle,
                                          badgeColor: Color(0xFFD15F01),
                                          elevation: 4,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 8, 8, 8),
                                          position: BadgePosition.topEnd(),
                                          animationType:
                                              BadgeAnimationType.scale,
                                          toAnimate: true,
                                          child: Icon(
                                            Icons.notifications,
                                            color: Color(0xFFEE9339),
                                            size: 32,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        GradientText(
                                          'MUSIMAGE',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color: Colors.white,
                                                fontSize: functions
                                                    .getTitleFontSize()
                                                    .toDouble(),
                                              ),
                                          colors: [
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            Colors.white
                                          ],
                                          gradientDirection:
                                              GradientDirection.rtl,
                                          gradientType: GradientType.linear,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 15, 0),
                                          child: SelectionArea(
                                              child: Text(
                                            'by Neuralia',
                                            textAlign: TextAlign.end,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .grayIcon,
                                                ),
                                          )),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 15),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.2,
                                                  height: 25,
                                                  child: custom_widgets
                                                      .VersionText(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.2,
                                                    height: 25,
                                                  ),
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
                              if (!FFAppState().shouldShowAudioUrl)
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          StreamBuilder<UsersRecord>(
                                            stream: UsersRecord.getDocument(
                                                currentUserReference!),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitWave(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              final soundRecordAndPlayUsersRecord =
                                                  snapshot.data!;
                                              return Container(
                                                width: 150,
                                                height: 150,
                                                child: custom_widgets
                                                    .SoundRecordAndPlay(
                                                  width: 150,
                                                  height: 150,
                                                ),
                                              );
                                            },
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 0),
                                            child: StreamBuilder<UsersRecord>(
                                              stream: UsersRecord.getDocument(
                                                  currentUserReference!),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50,
                                                      height: 50,
                                                      child: SpinKitWave(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        size: 50,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                final buttonUsersRecord =
                                                    snapshot.data!;
                                                return FFButtonWidget(
                                                  onPressed: () async {
                                                    var _shouldSetState = false;
                                                    if (!(FFAppState()
                                                                .audiobase64 !=
                                                            null &&
                                                        FFAppState()
                                                                .audiobase64 !=
                                                            '')) {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'First you have to record something',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              Color(0xFFD60000),
                                                        ),
                                                      );
                                                      if (_shouldSetState)
                                                        setState(() {});
                                                      return;
                                                    }
                                                    setState(() => FFAppState()
                                                        .imageUrl = '');
                                                    if (buttonUsersRecord
                                                            .inferencesNumber! >
                                                        0) {
                                                      refreshedToken =
                                                          await actions
                                                              .renewToken(
                                                        context,
                                                      );
                                                      _shouldSetState = true;
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'You have reached maximum inferences. Please contact musimage@neuralia.io',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              Color(0xE0EB0A0A),
                                                        ),
                                                      );
                                                      if (_shouldSetState)
                                                        setState(() {});
                                                      return;
                                                    }

                                                    apiResultfxAudio =
                                                        await AudioToImageCall
                                                            .call(
                                                      email: currentUserEmail,
                                                      isAudio: FFAppState()
                                                                  .audiobase64 !=
                                                              null &&
                                                          FFAppState()
                                                                  .audiobase64 !=
                                                              '',
                                                      audioData: FFAppState()
                                                          .audiobase64,
                                                      audioUrl:
                                                          'https://www.google.it/ciao.mp3',
                                                      authorization:
                                                          refreshedToken,
                                                      style: FFAppState()
                                                              .shouldShowAdvanced
                                                          ? dropDownValue1
                                                          : '- none -',
                                                      threshold: FFAppState()
                                                              .shouldShowAdvanced
                                                          ? dropDownValue2
                                                          : '- none -',
                                                      isMobile: isWeb == false,
                                                    );
                                                    _shouldSetState = true;
                                                    if ((apiResultfxAudio
                                                                ?.statusCode ??
                                                            200) ==
                                                        200) {
                                                      final usersUpdateData = {
                                                        'inferences_number':
                                                            FieldValue
                                                                .increment(
                                                                    -(1)),
                                                      };
                                                      await buttonUsersRecord
                                                          .reference
                                                          .update(
                                                              usersUpdateData);
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'SUCCESS! You will receive a mail with the image link when the gerneretion will be completed',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4800),
                                                          backgroundColor:
                                                              Color(0xFF55982F),
                                                        ),
                                                      );
                                                      setState(() =>
                                                          FFAppState()
                                                                  .audiobase64 =
                                                              '');
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'There was an error with the backend. It could be an expired token, please reload the page and retry',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  10000),
                                                          backgroundColor:
                                                              Color(0xFFD20000),
                                                        ),
                                                      );
                                                      if (_shouldSetState)
                                                        setState(() {});
                                                      return;
                                                    }

                                                    if (_shouldSetState)
                                                      setState(() {});
                                                  },
                                                  text: 'SEND AUDIO',
                                                  options: FFButtonOptions(
                                                    width: 300,
                                                    height: 40,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .title2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                        ),
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 5, 0, 0),
                                            child: SelectionArea(
                                                child: Text(
                                              'Press the recorder, after it finishes you can send audio',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (!FFAppState().shouldShowAudioUrl)
                                    Expanded(
                                      child: InkWell(
                                        onTap: () async {
                                          setState(() => FFAppState()
                                              .shouldShowAudioUrl = true);
                                        },
                                        child: Text(
                                          'Do you have an Audio URL instead?',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFEE9339),
                                              ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              if (FFAppState().shouldShowAudioUrl)
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 40, 0, 0),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: TextFormField(
                                            controller: audioUrlController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'audioUrlController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF1D2429),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                              hintText: 'Audio URL',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 21,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFDBE2E7),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFDBE2E7),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white,
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(24, 12, 24, 12),
                                              suffixIcon: audioUrlController!
                                                      .text.isNotEmpty
                                                  ? InkWell(
                                                      onTap: () async {
                                                        audioUrlController
                                                            ?.clear();
                                                        setState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.clear,
                                                        color:
                                                            Color(0xFF757575),
                                                        size: 22,
                                                      ),
                                                    )
                                                  : null,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF0D0A0A),
                                                  fontSize: 21,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (FFAppState().shouldShowAudioUrl)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 0),
                                      child: StreamBuilder<UsersRecord>(
                                        stream: UsersRecord.getDocument(
                                            currentUserReference!),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SpinKitWave(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  size: 50,
                                                ),
                                              ),
                                            );
                                          }
                                          final buttonUsersRecord =
                                              snapshot.data!;
                                          return FFButtonWidget(
                                            onPressed: () async {
                                              var _shouldSetState = false;
                                              if (!(audioUrlController!.text !=
                                                      null &&
                                                  audioUrlController!.text !=
                                                      '')) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'You have to enter an audio URL  first',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        Color(0xFFDF2225),
                                                  ),
                                                );
                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              }
                                              setState(() =>
                                                  FFAppState().imageUrl = '');
                                              if (buttonUsersRecord
                                                      .inferencesNumber! >
                                                  0) {
                                                refreshedTokenUrl =
                                                    await actions.renewToken(
                                                  context,
                                                );
                                                _shouldSetState = true;
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'You have reached maximum inferences. Please contact musimage@neuralia.io',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        Color(0xE0EB0A0A),
                                                  ),
                                                );
                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              }

                                              apiResultfxk =
                                                  await AudioToImageCall.call(
                                                audioUrl:
                                                    audioUrlController!.text,
                                                email: currentUserEmail,
                                                isAudio: false,
                                                audioData: ' ',
                                                authorization:
                                                    refreshedTokenUrl,
                                                style: FFAppState()
                                                        .shouldShowAdvanced
                                                    ? dropDownValue1
                                                    : '- none -',
                                                threshold: FFAppState()
                                                        .shouldShowAdvanced
                                                    ? dropDownValue2
                                                    : '- none -',
                                                isMobile: false,
                                              );
                                              _shouldSetState = true;
                                              if ((apiResultfxk?.statusCode ??
                                                      200) ==
                                                  200) {
                                                final usersUpdateData = {
                                                  'inferences_number':
                                                      FieldValue.increment(
                                                          -(1)),
                                                };
                                                await buttonUsersRecord
                                                    .reference
                                                    .update(usersUpdateData);
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'SUCCESS! You will receive a mail with the image link when the gerneretion will be completed',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4800),
                                                    backgroundColor:
                                                        Color(0xFF55982F),
                                                  ),
                                                );
                                                setState(() {
                                                  audioUrlController?.clear();
                                                });
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'There was an error with the backend. It could be an expired token, please reload the page and retry',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        Color(0xFFD20000),
                                                  ),
                                                );
                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              }

                                              if (_shouldSetState)
                                                setState(() {});
                                            },
                                            text: 'GENERATE FROM URL',
                                            options: FFButtonOptions(
                                              height: 40,
                                              color: Color(0xFF8173F4),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                      ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (FFAppState().shouldShowAudioUrl)
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 0, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            setState(() => FFAppState()
                                                .shouldShowAudioUrl = false);
                                          },
                                          child: Text(
                                            'Do you want to record audio instead?',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFEE9339),
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Switch(
                                      value: switchValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() => switchValue = newValue!);
                                        if (newValue!) {
                                          setState(() => FFAppState()
                                              .shouldShowAdvanced = true);
                                        } else {
                                          setState(() => FFAppState()
                                              .shouldShowAdvanced = false);
                                        }
                                      },
                                      activeColor: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      activeTrackColor: Color(0xFF5E2D14),
                                      inactiveTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .textColor,
                                      inactiveThumbColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ).animateOnPageLoad(animationsMap[
                                        'switchOnPageLoadAnimation']!),
                                    Text(
                                      'Advanced Options',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FFAppState()
                                                    .shouldShowAdvanced
                                                ? FlutterFlowTheme.of(context)
                                                    .tertiaryColor
                                                : FlutterFlowTheme.of(context)
                                                    .lineColor,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              if (FFAppState().shouldShowAdvanced == true)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: Text(
                                                      'Style',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiaryColor,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: FlutterFlowDropDown(
                                                    initialOption:
                                                        dropDownValue1 ??=
                                                            '- none -',
                                                    options: [
                                                      'Futurism',
                                                      'Dadaism',
                                                      'Surrealism',
                                                      '- none -'
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            dropDownValue1 =
                                                                val),
                                                    width: 180,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                    hintText:
                                                        'Please select...',
                                                    fillColor: Colors.white,
                                                    elevation: 2,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 40,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ).animateOnPageLoad(animationsMap[
                                      'rowOnPageLoadAnimation1']!),
                                ),
                              if (FFAppState().shouldShowAdvanced == true)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: Text(
                                                      'Confidence Threshold',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiaryColor,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: FlutterFlowDropDown(
                                                    initialOption:
                                                        dropDownValue2 ??=
                                                            '- none -',
                                                    options: [
                                                      '> 0.05',
                                                      '> 0.1',
                                                      '> 0.5',
                                                      '> 0.8',
                                                      '- none -'
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            dropDownValue2 =
                                                                val),
                                                    width: 180,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                    hintText:
                                                        'Please select...',
                                                    fillColor: Colors.white,
                                                    elevation: 2,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 40,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ).animateOnPageLoad(animationsMap[
                                      'rowOnPageLoadAnimation2']!),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 1),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async {
                            context.pushNamed('PolicyTermsScreen');
                          },
                          child: Text(
                            'Privacy & Policy',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF47525D),
                                    ),
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
      },
    );
  }
}
