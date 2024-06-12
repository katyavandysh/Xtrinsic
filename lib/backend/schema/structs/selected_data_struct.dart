// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedDataStruct extends FFFirebaseStruct {
  SelectedDataStruct({
    DateTime? selecteddata,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _selecteddata = selecteddata,
        super(firestoreUtilData);

  // "selecteddata" field.
  DateTime? _selecteddata;
  DateTime? get selecteddata => _selecteddata;
  set selecteddata(DateTime? val) => _selecteddata = val;
  bool hasSelecteddata() => _selecteddata != null;

  static SelectedDataStruct fromMap(Map<String, dynamic> data) =>
      SelectedDataStruct(
        selecteddata: data['selecteddata'] as DateTime?,
      );

  static SelectedDataStruct? maybeFromMap(dynamic data) => data is Map
      ? SelectedDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'selecteddata': _selecteddata,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'selecteddata': serializeParam(
          _selecteddata,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static SelectedDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      SelectedDataStruct(
        selecteddata: deserializeParam(
          data['selecteddata'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'SelectedDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelectedDataStruct && selecteddata == other.selecteddata;
  }

  @override
  int get hashCode => const ListEquality().hash([selecteddata]);
}

SelectedDataStruct createSelectedDataStruct({
  DateTime? selecteddata,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SelectedDataStruct(
      selecteddata: selecteddata,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SelectedDataStruct? updateSelectedDataStruct(
  SelectedDataStruct? selectedData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    selectedData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSelectedDataStructData(
  Map<String, dynamic> firestoreData,
  SelectedDataStruct? selectedData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (selectedData == null) {
    return;
  }
  if (selectedData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && selectedData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final selectedDataData =
      getSelectedDataFirestoreData(selectedData, forFieldValue);
  final nestedData =
      selectedDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = selectedData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSelectedDataFirestoreData(
  SelectedDataStruct? selectedData, [
  bool forFieldValue = false,
]) {
  if (selectedData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(selectedData.toMap());

  // Add any Firestore field values
  selectedData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSelectedDataListFirestoreData(
  List<SelectedDataStruct>? selectedDatas,
) =>
    selectedDatas?.map((e) => getSelectedDataFirestoreData(e, true)).toList() ??
    [];
