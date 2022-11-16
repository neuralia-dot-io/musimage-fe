// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'package:record/record.dart';
import 'package:flutter/foundation.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class SoundRecordAndPlay extends StatefulWidget {
  const SoundRecordAndPlay({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _SoundRecordAndPlayState createState() => _SoundRecordAndPlayState();
}

class _SoundRecordAndPlayState extends State<SoundRecordAndPlay> {
  bool _isRecording = false;
  bool _isPaused = false;
  bool _isPlaying = false;
  int _recordDuration = 0;
  String? path = '';
  Timer? _timer;
  Timer? _ampTimer;
  final _audioRecorder = Record();
  final player = AudioPlayer();

  Amplitude? _amplitude;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  void dispose() {
    _timer?.cancel();
    _ampTimer?.cancel();
    _audioRecorder.dispose();
    player.stop();
    super.dispose();
  }

  Future<void> _start() async {
    try {
      if (await _audioRecorder.hasPermission()) {
        await _audioRecorder.start();

        bool isRecording = await _audioRecorder.isRecording();
        setState(() {
          _isRecording = isRecording;
          _recordDuration = 0;
        });

        _startTimer();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> _stop() async {
    _timer?.cancel();
    _ampTimer?.cancel();

    // This is the path of the recorded file.
    path = await _audioRecorder.stop();

    String audioBase64 = "";

    if (kIsWeb) {
      Uri blobUri = Uri.parse(path!);
      http.Response response = await http.get(blobUri);
      String base64String = base64.encode(response.bodyBytes);
      audioBase64 = 'data:audio/ogg; codec=opus; base64,$base64String';
    } else {
      // Android
      var audioFile = File(path!);
      List<int> fileBytes = await audioFile.readAsBytes();
      String base64String = base64Encode(fileBytes);
      audioBase64 = 'data:audio/m4a;base64,$base64String';
    }

    setState(() => FFAppState().audiobase64 = audioBase64);

    setState(() => _isRecording = false);
    setState(() => _isPaused = false);
    setState(() => _isPlaying = false);

    setState(() {});
  }

  Future<void> _play() async {
    await player.setReleaseMode(ReleaseMode.loop);
    kIsWeb
        ? await player.play(UrlSource(path!))
        : await player.play(DeviceFileSource(path!));

    setState(() => _isPaused = false);
    setState(() => _isPlaying = true);
  }

  Future<void> _pause() async {
    await player.pause();

    setState(() => _isPaused = true);
    setState(() => _isPlaying = false);
  }

  Widget _buildTimer() {
    final String minutes = _formatNumber(_recordDuration ~/ 60);
    final String seconds = _formatNumber(_recordDuration % 60);

    return Text(
      '$minutes : $seconds',
      style: FlutterFlowTheme.of(context).bodyText1,
    );
  }

  Widget _buildText() {
    if (_isRecording) {
      return _buildTimer();
    } else if (_isPaused) {
      return Text(
        'Tap to listen',
        style: TextStyle(color: Colors.white),
      );
    } else if (_isPlaying) {
      return Text(
        'Tap to pause',
        style: TextStyle(color: Colors.white),
      );
    } else {
      return Text(
        FFAppState().audiobase64.isEmpty
            ? 'Tap to record'
            : 'Record again or send',
        style: TextStyle(color: Colors.white),
      );
    }
  }

  Widget _buildSubHeader() {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildText(),
        ],
      ),
    );
  }

  Widget _buildRecorder() {
    if (_isRecording) {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
        child: InkWell(
          onTap: () async {
            _stop();
          },
          child: Container(
            width: 80,
            height: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0x4DD9376E),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.stop_rounded,
              color: FlutterFlowTheme.of(context).tertiaryColor,
              size: 45,
            ),
          ),
        ),
      );
    } else if (_isPaused) {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
        child: InkWell(
          onTap: () async {
            _play();
          },
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).alternate,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 45,
            ),
          ),
        ),
      );
    } else if (_isPlaying) {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
        child: InkWell(
          onTap: () async {
            _pause();
          },
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.pause_rounded,
              color: FlutterFlowTheme.of(context).alternate,
              size: 45,
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
        child: InkWell(
          onTap: () async {
            _start();
          },
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Color(0x4DD9376E),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.mic_none,
              color: FlutterFlowTheme.of(context).tertiaryColor,
              size: 45,
            ),
          ),
        ),
      );
    }
  }

  String _formatNumber(int number) {
    String numberStr = number.toString();
    if (number < 10) {
      numberStr = '0' + numberStr;
    }

    return numberStr;
  }

  void _startTimer() {
    _timer?.cancel();
    _ampTimer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) async {
      setState(() => _recordDuration++);
      final String seconds = _formatNumber(_recordDuration % 60);
      if (seconds == '10') {
        await Future.delayed(Duration(milliseconds: 250));
        await _stop();
      }
    });

    _ampTimer =
        Timer.periodic(const Duration(milliseconds: 200), (Timer t) async {
      _amplitude = await _audioRecorder.getAmplitude();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground.withAlpha(0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildRecorder(),
              _buildSubHeader(),
            ],
          ),
        ],
      ),
    );
  }
}
