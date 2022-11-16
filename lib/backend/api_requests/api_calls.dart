import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class AudioToImageCall {
  static Future<ApiCallResponse> call({
    String? audioData = '',
    String? email = '',
    bool? isAudio,
    String? audioUrl = '',
    String? authorization = '',
    String? style = '',
    String? threshold = '',
    bool? isMobile,
  }) {
    final body = '''
{
  "isAudio": ${isAudio},
  "isMobile": ${isMobile},
  "email": "${email}",
  "audio_url": "${audioUrl}",
  "audio_data": "${audioData}",
  "authorization": "${authorization}",
  "style": "${style}",
  "threshold": "${threshold}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AudioToImage',
      apiUrl: 'https://dev.neuralia.io:4000/api/musimage/v1.0/snd2img/generate',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class ImageToAudioCall {
  static Future<ApiCallResponse> call({
    String? imageData = '',
    String? email = '',
    String? authorization = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "image_data": "${imageData}",
  "authorization": "${authorization}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ImageToAudio',
      apiUrl: 'https://dev.neuralia.io:4000/api/musimage/v1.0/img2snd/generate',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class AudioToImageCopyCall {
  static Future<ApiCallResponse> call({
    String? audioData = '',
    String? email = '',
    bool? isAudio,
    String? audioUrl = '',
    String? authorization = '',
    String? style = '',
    String? threshold = '',
    bool? isMobile,
  }) {
    final body = '''
{
  "isAudio": ${isAudio},
  "isMobile": ${isMobile},
  "email": "${email}",
  "audio_url": "${audioUrl}",
  "audio_data": "${audioData}",
  "authorization": "${authorization}",
  "style": "${style}",
  "threshold": "${threshold}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AudioToImage Copy',
      apiUrl: 'https://dev.neuralia.io:4000/api/musimage/v1.0/snd2img/generate',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class AudioToImageCopyCopyCopyiCall {
  static Future<ApiCallResponse> call({
    String? audioData = '',
    String? email = '',
    bool? isAudio,
    String? audioUrl = '',
    String? authorization = '',
    String? style = '',
    String? threshold = '',
    bool? isMobile,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AudioToImage Copy Copy Copyi',
      apiUrl: 'https://dev.neuralia.io:4000/api/musimage/v1.0/snd2img/generate',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class AudioToImageCopyCopyCopyCopyCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? audioData = '',
    String? email = '',
    bool? isAudio,
    String? audioUrl = '',
    String? authorization = '',
    String? style = '',
    String? threshold = '',
    bool? isMobile,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AudioToImage Copy Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: 'https://dev.neuralia.io:4000/api/musimage/v1.0/snd2img/generate',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class AudioToImageCopyCopyCopyCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? audioData = '',
    String? email = '',
    bool? isAudio,
    String? audioUrl = '',
    String? authorization = '',
    String? style = '',
    String? threshold = '',
    bool? isMobile,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AudioToImage Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: 'https://dev.neuralia.io:4000/api/musimage/v1.0/snd2img/generate',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class AudioToImageCopyCopyCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? audioData = '',
    String? email = '',
    bool? isAudio,
    String? audioUrl = '',
    String? authorization = '',
    String? style = '',
    String? threshold = '',
    bool? isMobile,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AudioToImage Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: 'https://dev.neuralia.io:4000/api/musimage/v1.0/snd2img/generate',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class AudioToImageCopyCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? audioData = '',
    String? email = '',
    bool? isAudio,
    String? audioUrl = '',
    String? authorization = '',
    String? style = '',
    String? threshold = '',
    bool? isMobile,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AudioToImage Copy Copy Copy Copy Copy Copy',
      apiUrl: 'https://dev.neuralia.io:4000/api/musimage/v1.0/snd2img/generate',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class AudioToImageCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? audioData = '',
    String? email = '',
    bool? isAudio,
    String? audioUrl = '',
    String? authorization = '',
    String? style = '',
    String? threshold = '',
    bool? isMobile,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AudioToImage Copy Copy Copy Copy Copy',
      apiUrl: 'https://dev.neuralia.io:4000/api/musimage/v1.0/snd2img/generate',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class AudioToImageCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? audioData = '',
    String? email = '',
    bool? isAudio,
    String? audioUrl = '',
    String? authorization = '',
    String? style = '',
    String? threshold = '',
    bool? isMobile,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AudioToImage Copy Copy Copy Copy',
      apiUrl: 'https://dev.neuralia.io:4000/api/musimage/v1.0/snd2img/generate',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}
