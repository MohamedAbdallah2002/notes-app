import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
   int color;
  @HiveField(1)
   String title;
  @HiveField(2)
   String subtitle;
  @HiveField(3)
  final String date;

  NoteModel({
    required this.color,
    required this.title,
    required this.subtitle,
    required this.date,
  });
}
