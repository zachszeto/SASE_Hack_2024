import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmailsRecord extends FirestoreRecord {
  EmailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sender" field.
  String? _sender;
  String get sender => _sender ?? '';
  bool hasSender() => _sender != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "files" field.
  List<String>? _files;
  List<String> get files => _files ?? const [];
  bool hasFiles() => _files != null;

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  bool hasScore() => _score != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _sender = snapshotData['sender'] as String?;
    _message = snapshotData['message'] as String?;
    _files = getDataList(snapshotData['files']);
    _score = castToType<int>(snapshotData['score']);
    _user = snapshotData['user'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('emails')
          : FirebaseFirestore.instance.collectionGroup('emails');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('emails').doc(id);

  static Stream<EmailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmailsRecord.fromSnapshot(s));

  static Future<EmailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmailsRecord.fromSnapshot(s));

  static EmailsRecord fromSnapshot(DocumentSnapshot snapshot) => EmailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmailsRecordData({
  String? sender,
  String? message,
  int? score,
  DocumentReference? user,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sender': sender,
      'message': message,
      'score': score,
      'user': user,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmailsRecordDocumentEquality implements Equality<EmailsRecord> {
  const EmailsRecordDocumentEquality();

  @override
  bool equals(EmailsRecord? e1, EmailsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.sender == e2?.sender &&
        e1?.message == e2?.message &&
        listEquality.equals(e1?.files, e2?.files) &&
        e1?.score == e2?.score &&
        e1?.user == e2?.user &&
        e1?.date == e2?.date;
  }

  @override
  int hash(EmailsRecord? e) => const ListEquality()
      .hash([e?.sender, e?.message, e?.files, e?.score, e?.user, e?.date]);

  @override
  bool isValidKey(Object? o) => o is EmailsRecord;
}
