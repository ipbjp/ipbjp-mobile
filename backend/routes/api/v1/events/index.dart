import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:ipbjp_backend/src/services.dart';
import 'package:shared/shared.dart';

FutureOr<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.put:
      return onPut(context);
    case HttpMethod.get:
      return onGet(context);
    default:
      return Response(
        statusCode: HttpStatus.methodNotAllowed,
        body: 'Método não permitido',
      );
  }
}

FutureOr<Response> onPut(RequestContext context) async {
  final requestDTO = EventCreationOrUpdateRequestDTO.fromJson(
    jsonDecode(
      await context.request.body(),
    ) as Map<String, dynamic>,
  );

  final (eventDTO, exception) =
      await context.read<EventService>().createOrUpdate(dto: requestDTO);

  if (exception != null) {
    return Response(statusCode: 400, body: exception.message);
  }

  return Response(
    statusCode: HttpStatus.created,
    body: jsonEncode(eventDTO),
    headers: {'Content-Type': 'application/json'},
  );
}

FutureOr<Response> onGet(RequestContext context) async {
  final queryParameters = context.request.uri.queryParameters;
  var page = int.tryParse(queryParameters['page'] ?? '') ?? 1;
  var limit = int.tryParse(queryParameters['limit'] ?? '') ?? 10;

  if (page <= 0) {
    page = 1;
  }

  if (limit < 0) {
    limit = 0;
  }

  final events = await context.read<EventService>().findAll(
        page: page,
        limit: limit,
      );

  return Response(
    body: jsonEncode(events),
    headers: {'Content-Type': 'application/json'},
  );
}
