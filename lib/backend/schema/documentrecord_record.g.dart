// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documentrecord_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DocumentrecordRecord> _$documentrecordRecordSerializer =
    new _$DocumentrecordRecordSerializer();

class _$DocumentrecordRecordSerializer
    implements StructuredSerializer<DocumentrecordRecord> {
  @override
  final Iterable<Type> types = const [
    DocumentrecordRecord,
    _$DocumentrecordRecord
  ];
  @override
  final String wireName = 'DocumentrecordRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DocumentrecordRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.documentType;
    if (value != null) {
      result
        ..add('documentType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageDoc;
    if (value != null) {
      result
        ..add('imageDoc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Timestamp)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    return result;
  }

  @override
  DocumentrecordRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DocumentrecordRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'documentType':
          result.documentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageDoc':
          result.imageDoc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(Timestamp)) as Timestamp;
          break;
        case 'userRef':
          result.userRef = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
      }
    }

    return result.build();
  }
}

class _$DocumentrecordRecord extends DocumentrecordRecord {
  @override
  final String documentType;
  @override
  final String imageDoc;
  @override
  final String description;
  @override
  final Timestamp createdAt;
  @override
  final DocumentReference userRef;
  @override
  final DocumentReference reference;

  factory _$DocumentrecordRecord(
          [void Function(DocumentrecordRecordBuilder) updates]) =>
      (new DocumentrecordRecordBuilder()..update(updates)).build();

  _$DocumentrecordRecord._(
      {this.documentType,
      this.imageDoc,
      this.description,
      this.createdAt,
      this.userRef,
      this.reference})
      : super._();

  @override
  DocumentrecordRecord rebuild(
          void Function(DocumentrecordRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentrecordRecordBuilder toBuilder() =>
      new DocumentrecordRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentrecordRecord &&
        documentType == other.documentType &&
        imageDoc == other.imageDoc &&
        description == other.description &&
        createdAt == other.createdAt &&
        userRef == other.userRef &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, documentType.hashCode), imageDoc.hashCode),
                    description.hashCode),
                createdAt.hashCode),
            userRef.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DocumentrecordRecord')
          ..add('documentType', documentType)
          ..add('imageDoc', imageDoc)
          ..add('description', description)
          ..add('createdAt', createdAt)
          ..add('userRef', userRef)
          ..add('reference', reference))
        .toString();
  }
}

class DocumentrecordRecordBuilder
    implements Builder<DocumentrecordRecord, DocumentrecordRecordBuilder> {
  _$DocumentrecordRecord _$v;

  String _documentType;
  String get documentType => _$this._documentType;
  set documentType(String documentType) => _$this._documentType = documentType;

  String _imageDoc;
  String get imageDoc => _$this._imageDoc;
  set imageDoc(String imageDoc) => _$this._imageDoc = imageDoc;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  Timestamp _createdAt;
  Timestamp get createdAt => _$this._createdAt;
  set createdAt(Timestamp createdAt) => _$this._createdAt = createdAt;

  DocumentReference _userRef;
  DocumentReference get userRef => _$this._userRef;
  set userRef(DocumentReference userRef) => _$this._userRef = userRef;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  DocumentrecordRecordBuilder() {
    DocumentrecordRecord._initializeBuilder(this);
  }

  DocumentrecordRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentType = $v.documentType;
      _imageDoc = $v.imageDoc;
      _description = $v.description;
      _createdAt = $v.createdAt;
      _userRef = $v.userRef;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentrecordRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentrecordRecord;
  }

  @override
  void update(void Function(DocumentrecordRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DocumentrecordRecord build() {
    final _$result = _$v ??
        new _$DocumentrecordRecord._(
            documentType: documentType,
            imageDoc: imageDoc,
            description: description,
            createdAt: createdAt,
            userRef: userRef,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
