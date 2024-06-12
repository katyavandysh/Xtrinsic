import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RateRecord extends FirestoreRecord {
  RateRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "selecteddata" field.
  SelectedDataStruct? _selecteddata;
  SelectedDataStruct get selecteddata => _selecteddata ?? SelectedDataStruct();
  bool hasSelecteddata() => _selecteddata != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "height" field.
  int? _height;
  int get height => _height ?? 0;
  bool hasHeight() => _height != null;

  // "sex" field.
  String? _sex;
  String get sex => _sex ?? '';
  bool hasSex() => _sex != null;

  void _initializeFields() {
    _selecteddata =
        SelectedDataStruct.maybeFromMap(snapshotData['selecteddata']);
    _age = castToType<int>(snapshotData['age']);
    _height = castToType<int>(snapshotData['height']);
    _sex = snapshotData['sex'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rate');

  static Stream<RateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RateRecord.fromSnapshot(s));

  static Future<RateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RateRecord.fromSnapshot(s));

  static RateRecord fromSnapshot(DocumentSnapshot snapshot) => RateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRateRecordData({
  SelectedDataStruct? selecteddata,
  int? age,
  int? height,
  String? sex,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'selecteddata': SelectedDataStruct().toMap(),
      'age': age,
      'height': height,
      'sex': sex,
    }.withoutNulls,
  );

  // Handle nested data for "selecteddata" field.
  addSelectedDataStructData(firestoreData, selecteddata, 'selecteddata');

  return firestoreData;
}

class RateRecordDocumentEquality implements Equality<RateRecord> {
  const RateRecordDocumentEquality();

  @override
  bool equals(RateRecord? e1, RateRecord? e2) {
    return e1?.selecteddata == e2?.selecteddata &&
        e1?.age == e2?.age &&
        e1?.height == e2?.height &&
        e1?.sex == e2?.sex;
  }

  @override
  int hash(RateRecord? e) =>
      const ListEquality().hash([e?.selecteddata, e?.age, e?.height, e?.sex]);

  @override
  bool isValidKey(Object? o) => o is RateRecord;
}
