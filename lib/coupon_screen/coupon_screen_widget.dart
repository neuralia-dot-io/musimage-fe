import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CouponScreenWidget extends StatefulWidget {
  const CouponScreenWidget({Key? key}) : super(key: key);

  @override
  _CouponScreenWidgetState createState() => _CouponScreenWidgetState();
}

class _CouponScreenWidgetState extends State<CouponScreenWidget> {
  TextEditingController? pinCodeController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    pinCodeController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).gray600,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).textColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Get Superpowers!',
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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Insert Your Coupon Pin Code',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).lineColor,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(44, 8, 44, 0),
                    child: Text(
                      'Coupon Pin Codes give you superpowers (extra shots, hidden features, etc.)',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).grayIcon,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 5,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      enableActiveFill: false,
                      autoFocus: true,
                      showCursor: true,
                      cursorColor: FlutterFlowTheme.of(context).lineColor,
                      obscureText: false,
                      hintCharacter: '-',
                      pinTheme: PinTheme(
                        fieldHeight: 60,
                        fieldWidth: 60,
                        borderWidth: 2,
                        borderRadius: BorderRadius.circular(12),
                        shape: PinCodeFieldShape.box,
                        activeColor: FlutterFlowTheme.of(context).tertiaryColor,
                        inactiveColor:
                            FlutterFlowTheme.of(context).tertiaryColor,
                        selectedColor: FlutterFlowTheme.of(context).alternate,
                        activeFillColor:
                            FlutterFlowTheme.of(context).tertiaryColor,
                        inactiveFillColor:
                            FlutterFlowTheme.of(context).tertiaryColor,
                        selectedFillColor:
                            FlutterFlowTheme.of(context).alternate,
                      ),
                      controller: pinCodeController,
                      onChanged: (_) => {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 44),
              child: StreamBuilder<ConfigRecord>(
                stream: ConfigRecord.getDocument(FFAppState().configName!),
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
                  final buttonConfigRecord = snapshot.data!;
                  return FFButtonWidget(
                    onPressed: () async {
                      if (buttonConfigRecord.couponCodes!
                          .toList()
                          .contains(pinCodeController!.text)) {
                        final usersUpdateData = {
                          'inferences_number': FieldValue.increment(20),
                        };
                        await currentUserReference!.update(usersUpdateData);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'You earned 20 extra shots!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).lineColor,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor: Color(0xFF1DC228),
                          ),
                        );

                        final configUpdateData = {
                          'couponCodes':
                              FieldValue.arrayRemove([pinCodeController!.text]),
                        };
                        await FFAppState().configName!.update(configUpdateData);
                        context.pop();
                        return;
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'This Coupon Code is not valid!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).lineColor,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor: Color(0xFFC20F0F),
                          ),
                        );
                        return;
                      }
                    },
                    text: 'Confirm & Continue',
                    options: FFButtonOptions(
                      width: 270,
                      height: 50,
                      color: FlutterFlowTheme.of(context).primaryText,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily: 'Poppins',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                      elevation: 2,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
