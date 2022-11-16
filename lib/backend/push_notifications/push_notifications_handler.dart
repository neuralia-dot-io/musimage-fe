import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Color(0xFF1A1E23),
          child: Image.asset(
            'assets/images/favicon.png',
            fit: BoxFit.contain,
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'AuthScreen': (data) async => AuthScreenWidget(),
  'OnboardingScreen': (data) async => OnboardingScreenWidget(),
  'AdminScreen': (data) async => AdminScreenWidget(),
  'ConfigScreen': (data) async => ConfigScreenWidget(),
  'UserConfigScreen': (data) async => UserConfigScreenWidget(
        configUser: getParameter(data, 'configUser'),
      ),
  'HistoryScreen': (data) async => HistoryScreenWidget(),
  'ArtworkDetailsScreen': (data) async => ArtworkDetailsScreenWidget(
        artworkUri: getParameter(data, 'artworkUri'),
        artworkPrompt: getParameter(data, 'artworkPrompt'),
        artworkTimestamp: getParameter(data, 'artworkTimestamp'),
        artworkIsAudio: getParameter(data, 'artworkIsAudio'),
        artworkUrlString: getParameter(data, 'artworkUrlString'),
      ),
  'MusicDetailsScreen': (data) async => MusicDetailsScreenWidget(
        artworkUri: getParameter(data, 'artworkUri'),
        artworkTimestamp: getParameter(data, 'artworkTimestamp'),
        musicUrlString: getParameter(data, 'musicUrlString'),
      ),
  'GenImageScreen': (data) async => GenImageScreenWidget(),
  'GenMusicScreen': (data) async => GenMusicScreenWidget(),
  'CreditsScreen': (data) async => CreditsScreenWidget(),
  'PaymentConfirmationScreen': (data) async => PaymentConfirmationScreenWidget(
        shotsNumber: getParameter(data, 'shotsNumber'),
      ),
  'PolicyTermsScreen': (data) async => PolicyTermsScreenWidget(),
  'CouponScreen': (data) async => CouponScreenWidget(),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
