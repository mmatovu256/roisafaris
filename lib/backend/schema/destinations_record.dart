import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DestinationsRecord extends FirestoreRecord {
  DestinationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  bool hasSize() => _size != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "altitude" field.
  String? _altitude;
  String get altitude => _altitude ?? '';
  bool hasAltitude() => _altitude != null;

  // "contact_phone" field.
  String? _contactPhone;
  String get contactPhone => _contactPhone ?? '';
  bool hasContactPhone() => _contactPhone != null;

  // "contact_mail" field.
  String? _contactMail;
  String get contactMail => _contactMail ?? '';
  bool hasContactMail() => _contactMail != null;

  // "category" field.
  DocumentReference? _category;
  DocumentReference? get category => _category;
  bool hasCategory() => _category != null;

  // "booking_fee" field.
  double? _bookingFee;
  double get bookingFee => _bookingFee ?? 0.0;
  bool hasBookingFee() => _bookingFee != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _location = snapshotData['location'] as String?;
    _size = snapshotData['size'] as String?;
    _image = snapshotData['image'] as String?;
    _altitude = snapshotData['altitude'] as String?;
    _contactPhone = snapshotData['contact_phone'] as String?;
    _contactMail = snapshotData['contact_mail'] as String?;
    _category = snapshotData['category'] as DocumentReference?;
    _bookingFee = castToType<double>(snapshotData['booking_fee']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('destinations');

  static Stream<DestinationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DestinationsRecord.fromSnapshot(s));

  static Future<DestinationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DestinationsRecord.fromSnapshot(s));

  static DestinationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DestinationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DestinationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DestinationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DestinationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DestinationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDestinationsRecordData({
  String? name,
  String? description,
  String? location,
  String? size,
  String? image,
  String? altitude,
  String? contactPhone,
  String? contactMail,
  DocumentReference? category,
  double? bookingFee,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'location': location,
      'size': size,
      'image': image,
      'altitude': altitude,
      'contact_phone': contactPhone,
      'contact_mail': contactMail,
      'category': category,
      'booking_fee': bookingFee,
    }.withoutNulls,
  );

  return firestoreData;
}

class DestinationsRecordDocumentEquality
    implements Equality<DestinationsRecord> {
  const DestinationsRecordDocumentEquality();

  @override
  bool equals(DestinationsRecord? e1, DestinationsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.location == e2?.location &&
        e1?.size == e2?.size &&
        e1?.image == e2?.image &&
        e1?.altitude == e2?.altitude &&
        e1?.contactPhone == e2?.contactPhone &&
        e1?.contactMail == e2?.contactMail &&
        e1?.category == e2?.category &&
        e1?.bookingFee == e2?.bookingFee;
  }

  @override
  int hash(DestinationsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.location,
        e?.size,
        e?.image,
        e?.altitude,
        e?.contactPhone,
        e?.contactMail,
        e?.category,
        e?.bookingFee
      ]);

  @override
  bool isValidKey(Object? o) => o is DestinationsRecord;
}
