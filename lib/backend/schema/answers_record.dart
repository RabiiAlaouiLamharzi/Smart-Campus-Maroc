import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'answers_record.g.dart';

abstract class AnswersRecord
    implements Built<AnswersRecord, AnswersRecordBuilder> {
  static Serializer<AnswersRecord> get serializer => _$answersRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'answer_text')
  String get answerText;

  @nullable
  @BuiltValueField(wireName: 'answer_time')
  DateTime get answerTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AnswersRecordBuilder builder) =>
      builder..answerText = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('answers');

  static Stream<AnswersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AnswersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AnswersRecord._();
  factory AnswersRecord([void Function(AnswersRecordBuilder) updates]) =
      _$AnswersRecord;

  static AnswersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAnswersRecordData({
  String answerText,
  DateTime answerTime,
}) =>
    serializers.toFirestore(
        AnswersRecord.serializer,
        AnswersRecord((a) => a
          ..answerText = answerText
          ..answerTime = answerTime));
