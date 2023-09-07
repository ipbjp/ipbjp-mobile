import 'package:ipbjp_backend/src/exceptions/service_exceptions.dart';
import 'package:ipbjp_backend/src/models.dart';
import 'package:ipbjp_backend/src/repositories.dart';
import 'package:ipbjp_backend/src/services.dart';
import 'package:logger/logger.dart';
import 'package:shared/shared.dart';

class EventServiceImpl implements EventService {
  final EventRepository _eventRepository;
  final Logger _logger;

  EventServiceImpl(
      {required EventRepository eventRepository, required Logger logger})
      : _eventRepository = eventRepository,
        _logger = logger;

  @override
  Future<(EventResponseDTO?, ServiceException?)> createOrUpdate({
    String? id,
    required EventCreationOrUpdateRequestDTO dto,
  }) async {
    if (dto.address != null && dto.name != null && dto.startDate != null) {
      final event = Event()
        ..address = dto.address
        ..name = dto.name
        ..startDate = dto.startDate
        ..endDate = dto.endDate
        ..icon = dto.icon ?? EventIcon.defaultIcon
        ..imageUrl = dto.imageUrl
        ..link = dto.link
        ..description = dto.description
        ..id = id;

      final (_, exception) = await _eventRepository.createOrUpdate(event);

      if (exception != null) {
        _logger.e("Exceção desconhecida durante a persistencia dos dados");

        return (
          null,
          GenericServiceException(
            message: exception.message,
            time: exception.time,
          ),
        );
      }

      return (_map(event), null);
    } else {
      _logger.e("Campos inválidos foram detectados em: $dto");

      return (
        null,
        DataValidationException(
          message: "Campos invalidos foram encontrados...",
          time: DateTime.now(),
        ),
      );
    }
  }

  @override
  Future<void> delete(String id) async {
    final event = await _eventRepository.find(id);

    if (event != null) {
      await _eventRepository.delete(event);

      _logger.i("Evento ${event.name} deletado da base de dados");
    }
  }

  @override
  Future<EventResponseDTO?> find(String id) async {
    final event = await _eventRepository.find(id);

    return event != null ? _map(event) : null;
  }

  @override
  Future<List<EventResponseDTO>> findAll({
    required int page,
    required int limit,
  }) async {
    return (await _eventRepository.findAll(
      RepositoryPage(
        page: page,
        size: limit,
      ),
    ))
        .map(_map)
        .toList();
  }

  EventResponseDTO _map(Event event) {
    return EventResponseDTO(
      id: event.id!,
      address: event.address!,
      name: event.name!,
      startDate: event.startDate!,
      endDate: event.endDate,
      icon: event.icon,
      imageUrl: event.imageUrl,
      link: event.link,
      description: event.description,
    );
  }
}
