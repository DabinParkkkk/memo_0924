class Memo {
  final int id;
  dynamic title;
  dynamic text;

  Memo({required this.id, required this.title, required this.text});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'text': text,
    };
  }

  @override
  String toString() {
    return 'Memo{id: $id, title: $title, text: $text}';
  }
}