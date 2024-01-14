final String tableNotes = 'notes';

class NoteFields {
  static final List<String> values = [
    /// Add all fields
    id, firstName, lastName, disease, temperature, blood
  ];

  static final String id = '_id';
  static final String firstName = 'firstName';
  static final String lastName = 'lastName';
  static final String disease = 'disease';
  static final String temperature = 'temperature';
  static final String blood = 'blood';
}

class Note {
  final int? id;
  final String firstName;
  final String lastName;
  final String disease;
  final int temperature;
  final String blood;

  const Note({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.disease,
    required this.temperature,
    required this.blood,
  });

  Note copy({
    int? id,
    String? firstName,
    String? lastName,
    String? disease,
    int? temperature,
    String? blood,
  }) =>
      Note(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        disease: disease ?? this.disease,
        temperature: temperature ?? this.temperature,
        blood: blood ?? this.blood,
      );

  static Note fromJson(Map<String, Object?> json) => Note(
        id: json[NoteFields.id] as int?,
        firstName: json[NoteFields.firstName] as String,
        lastName: json[NoteFields.lastName] as String,
        disease: json[NoteFields.disease] as String,
        temperature: json[NoteFields.temperature] as int,
        blood: json[NoteFields.blood] as String,
      );

  Map<String, Object?> toJson() => {
        NoteFields.id: id,
        NoteFields.firstName: firstName,
        NoteFields.lastName: lastName,
        NoteFields.disease: disease,
        NoteFields.temperature: temperature,
        NoteFields.blood: blood,
      };
}
