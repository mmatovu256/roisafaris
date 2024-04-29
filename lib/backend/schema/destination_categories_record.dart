import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class DestinationCategoriesRecord extends FirestoreRecord {
  DestinationCategoriesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('destination_categories');

  static Stream<DestinationCategoriesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => DestinationCategoriesRecord.fromSnapshot(s));

  static Future<DestinationCategoriesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DestinationCategoriesRecord.fromSnapshot(s));

  static DestinationCategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DestinationCategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DestinationCategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DestinationCategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DestinationCategoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DestinationCategoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDestinationCategoriesRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class DestinationCategoriesRecordDocumentEquality
    implements Equality<DestinationCategoriesRecord> {
  const DestinationCategoriesRecordDocumentEquality();

  @override
  bool equals(
      DestinationCategoriesRecord? e1, DestinationCategoriesRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(DestinationCategoriesRecord? e) =>
      const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is DestinationCategoriesRecord;
}
