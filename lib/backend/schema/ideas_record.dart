import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ideas_record.g.dart';

abstract class IdeasRecord implements Built<IdeasRecord, IdeasRecordBuilder> {
  static Serializer<IdeasRecord> get serializer => _$ideasRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'ideas_para')
  String get ideasPara;

  @nullable
  @BuiltValueField(wireName: 'idea_creation')
  DateTime get ideaCreation;

  @nullable
  @BuiltValueField(wireName: 'ideas_title')
  String get ideasTitle;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(IdeasRecordBuilder builder) => builder
    ..ideasPara = ''
    ..ideasTitle = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ideas');

  static Stream<IdeasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<IdeasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  IdeasRecord._();
  factory IdeasRecord([void Function(IdeasRecordBuilder) updates]) =
      _$IdeasRecord;

  static IdeasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createIdeasRecordData({
  String ideasPara,
  DateTime ideaCreation,
  String ideasTitle,
}) =>
    serializers.toFirestore(
        IdeasRecord.serializer,
        IdeasRecord((i) => i
          ..ideasPara = ideasPara
          ..ideaCreation = ideaCreation
          ..ideasTitle = ideasTitle));
