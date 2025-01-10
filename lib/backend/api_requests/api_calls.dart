import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? username = 'emilys',
    String? password = 'emilypass',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "$username",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://dummyjson.com/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  static String? refreshToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.refreshToken''',
      ));
}

class FetchJobRolesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Job Roles',
      apiUrl: 'https://hook.eu2.make.com/f2hkxryvhxbbb79l7kg1395ln7gzt4q3',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'action': "fetchjobroles",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertJobRolesCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? status = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "status": "$status",
  "action": "createjobroles"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert Job Roles',
      apiUrl: 'https://hook.eu2.make.com/f2hkxryvhxbbb79l7kg1395ln7gzt4q3',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateJobRoleCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? status = '',
    int? id,
  }) async {
    final ffApiRequestBody = '''
{
  "action": "updatejobroles",
  "name": "$name",
  "status": "$status",
  "id": $id
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Job Role',
      apiUrl: 'https://hook.eu2.make.com/f2hkxryvhxbbb79l7kg1395ln7gzt4q3',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteJobRoleCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Job Role',
      apiUrl:
          'https://hook.eu2.make.com/f2hkxryvhxbbb79l7kg1395ln7gzt4q3?action=deletejobroles&id=$id',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchTalentPoolCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Talent Pool',
      apiUrl:
          'https://hook.eu2.make.com/nsnk9dwdyqc1yffwiiv64in1wnwpif3y?action=fetchtalentpool',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertTalentPoolCall {
  static Future<ApiCallResponse> call({
    String? firstname = '',
    String? lastname = '',
    String? jobtype = '',
    String? workplace = '',
    String? datestart = '',
    String? dateend = '',
    String? projectname = '-',
    int? rateperhour,
    int? clientid = 0,
    String? status = '',
    String? phone = '',
    String? email = '',
    String? cvlink = '',
    String? videolink = '',
    String? profilephoto = '',
    int? jobroleid = 0,
  }) async {
    final ffApiRequestBody = '''
{
  "action": "createtalentpool",
  "firstname": "$firstname",
  "lastname": "$lastname",
  "jobtype": "$jobtype",
  "workplace": "$workplace",
  "datestart": "$datestart",
  "dateend": "$dateend",
  "projectname": "$projectname",
  "rateperhour": $rateperhour,
  "clientid": $clientid,
  "status": "$status",
  "phone": "$phone",
  "email": "$email",
  "cvlink": "$cvlink",
  "videolink": "$videolink",
  "profilephoto": "$profilephoto",
  "jobroleID": $jobroleid
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert Talent Pool',
      apiUrl: 'https://hook.eu2.make.com/nsnk9dwdyqc1yffwiiv64in1wnwpif3y',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateTalentPoolCall {
  static Future<ApiCallResponse> call({
    String? firstname = '',
    String? lastname = '',
    String? jobtype = '',
    String? workplace = '',
    String? datestart = '-',
    String? dateend = '-',
    String? projectname = '-',
    int? rateperhour,
    int? clientid = 0,
    String? status = '',
    String? phone = '',
    String? email = '',
    String? cvlink = '',
    String? videolink = '',
    String? profilephoto = '',
    int? id,
    int? jobroleid,
  }) async {
    final ffApiRequestBody = '''
{
  "action": "updatetalentpool",
  "firstname": "$firstname",
  "lastname": "$lastname",
  "jobtype": "$jobtype",
  "workplace": "$workplace",
  "datestart": "$datestart",
  "dateend": "$dateend",
  "projectname": "$projectname",
  "rateperhour": $rateperhour,
  "clientid": $clientid,
  "status": "$status",
  "phone": "$phone",
  "email": "$email",
  "cvlink": "$cvlink",
  "videolink": "$videolink",
  "profilephoto": "$profilephoto",
  "id": $id,
  "jobroleID": $jobroleid
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Talent Pool',
      apiUrl: 'https://hook.eu2.make.com/nsnk9dwdyqc1yffwiiv64in1wnwpif3y',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TestUploadImageCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? image,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Test Upload Image',
      apiUrl: 'https://hook.eu2.make.com/11sthn9x75f025v4lmz2cf7pc618x48w',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteTalentPoolCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Talent Pool',
      apiUrl:
          'https://hook.eu2.make.com/nsnk9dwdyqc1yffwiiv64in1wnwpif3y?action=deletetalentpool&id=$id',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchClientsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Clients',
      apiUrl:
          'https://hook.eu2.make.com/tw3lhpp2q1lzk1irwtb9gkmtw1eflv0c?action=fetchclients',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertCandidatesCall {
  static Future<ApiCallResponse> call({
    int? clientid,
    int? talentid,
    String? status = '',
  }) async {
    final ffApiRequestBody = '''
{
  "action": "createcandidates",
  "status": "$status",
  "clientid": $clientid,
  "talentid": $talentid
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert Candidates',
      apiUrl: 'https://hook.eu2.make.com/ps5uaidzqrlqd7u3oba23akqgksqdwnn',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertClientCall {
  static Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? phone = '',
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
    "action": "createclients",
    "firstname": "$firstName",
    "lastname": "$lastName",
    "phone": "$phone",
    "email": "$email",
    "status": "active",
    "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert Client',
      apiUrl: 'https://hook.eu2.make.com/tw3lhpp2q1lzk1irwtb9gkmtw1eflv0c',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchJobRoleByIDCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Job Role by ID',
      apiUrl:
          'https://hook.eu2.make.com/f2hkxryvhxbbb79l7kg1395ln7gzt4q3?action=fetchjobrolesbyid&id=$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
}

class FetchTalentPoolByIDCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Talent Pool by ID',
      apiUrl:
          'https://hook.eu2.make.com/nsnk9dwdyqc1yffwiiv64in1wnwpif3y?action=fetchtalentpoolbyid&id=$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? profilePhoto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].profile_photo''',
      ));
  static String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].first_name''',
      ));
  static String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].last_name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].phone''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].status''',
      ));
  static String? videoLink(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].video_link''',
      ));
  static String? cvLink(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cv_link''',
      ));
}

class FetchCandidatesByClientIDCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Candidates by Client ID',
      apiUrl:
          'https://hook.eu2.make.com/ps5uaidzqrlqd7u3oba23akqgksqdwnn?action=fetchcandidatesbyid&clientId=$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteClientCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Client',
      apiUrl:
          'https://hook.eu2.make.com/tw3lhpp2q1lzk1irwtb9gkmtw1eflv0c?action=deleteclients&id=$id',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchClientsByCandidateIDCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Clients by Candidate ID',
      apiUrl:
          'https://hook.eu2.make.com/ps5uaidzqrlqd7u3oba23akqgksqdwnn?action=fetchcandidatesbyid&talentId=$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchClientByIDCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Client By ID',
      apiUrl:
          'https://hook.eu2.make.com/tw3lhpp2q1lzk1irwtb9gkmtw1eflv0c?action=fetchclientsbyid&id=$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].phone''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].status''',
      ));
  static String? lastname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].last_name''',
      ));
  static String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].first_name''',
      ));
}

class DeleteCandidateCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Candidate',
      apiUrl:
          'https://hook.eu2.make.com/ps5uaidzqrlqd7u3oba23akqgksqdwnn?action=deletecandidates&id=$id',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateTalentStatusCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? status = '',
  }) async {
    final ffApiRequestBody = '''
{
  "action": "updatetalentpool",
  "id": $id,
  "status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Talent Status',
      apiUrl: 'https://hook.eu2.make.com/nsnk9dwdyqc1yffwiiv64in1wnwpif3y',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
