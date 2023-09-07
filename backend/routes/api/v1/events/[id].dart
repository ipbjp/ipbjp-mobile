import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:ipbjp_backend/src/services.dart';
import 'package:shared/shared.dart';

FutureOr<Response> onRequest(RequestContext context, String id) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return onGet(context, id);
    case HttpMethod.put:
      return onPut(context, id);
    case HttpMethod.delete:
      return onDelete(context, id);
    default:
      return Response(
        statusCode: HttpStatus.methodNotAllowed,
        body: 'Método não permitido',
      );
  }
}

FutureOr<Response> onGet(RequestContext context, String id) async {
  final event = await context.read<EventService>().find(id);

  return Response(
    body: jsonEncode(event),
    headers: {'Content-Type': 'application/json'},
  );
}

FutureOr<Response> onPut(RequestContext context, String id) async {
  final requestDTO = EventCreationOrUpdateRequestDTO.fromJson(
    jsonDecode(
      await context.request.body(),
    ) as Map<String, dynamic>,
  );

  final (eventDTO, exception) =
      await context.read<EventService>().createOrUpdate(
            dto: requestDTO,
            id: id,
          );

  if (exception != null) {
    return Response(statusCode: 400, body: exception.message);
  }

  return Response(
    body: jsonEncode(eventDTO),
    headers: {'Content-Type': 'application/json'},
  );
}

FutureOr<Response> onDelete(RequestContext context, String id) async {
  await context.read<EventService>().delete(id);

  return Response();
}
