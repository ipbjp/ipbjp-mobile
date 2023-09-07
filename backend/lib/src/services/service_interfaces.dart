import 'package:ipbjp_backend/src/exceptions.dart';
import 'package:shared/shared.dart';

abstract class EventService {
  Future<List<EventResponseDTO>> findAll({
    required int page,
    required int limit,
  });

  Future<EventResponseDTO?> find(String id);

  Future<(EventResponseDTO?, ServiceException?)> createOrUpdate({
    String? id,
    required EventCreationOrUpdateRequestDTO dto,
  });

  Future<void> delete(String id);
}
