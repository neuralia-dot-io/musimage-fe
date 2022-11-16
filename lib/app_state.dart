import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _onboardingCompleted =
        prefs.getBool('ff_onboardingCompleted') ?? _onboardingCompleted;
  }

  late SharedPreferences prefs;

  DocumentReference? tapToRecord =
      FirebaseFirestore.instance.doc('/config/general');

  String imageUrl = '';

  String audiobase64 = '';

  bool shouldShowAdvanced = false;

  DocumentReference? configName =
      FirebaseFirestore.instance.doc('/config/general');

  bool shouldShowAudioUrl = false;

  String imageDataUrl = '';

  bool _onboardingCompleted = false;
  bool get onboardingCompleted => _onboardingCompleted;
  set onboardingCompleted(bool _value) {
    _onboardingCompleted = _value;
    prefs.setBool('ff_onboardingCompleted', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
