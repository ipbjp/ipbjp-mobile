import 'package:isar/isar.dart';
import 'package:shared/shared.dart';

part 'event.g.dart';

@Collection()
class Event {
  Id dbId = Isar.autoIncrement;
  @Index(type: IndexType.value)
  String? id;
  String? name;
  String? address;
  DateTime? startDate;
  DateTime? endDate;
  @enumerated
  EventIcon icon = EventIcon.defaultIcon;
  String? description;
  String? imageUrl;
  String? link;
}
