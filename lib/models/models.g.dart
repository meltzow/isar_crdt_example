// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCarModelCollection on Isar {
  IsarCollection<CarModel> get carModels => this.collection();
}

const CarModelSchema = CollectionSchema(
  name: r'CarModel',
  id: -7339873665292748562,
  properties: {
    r'make': PropertySchema(
      id: 0,
      name: r'make',
      type: IsarType.string,
    ),
    r'sid': PropertySchema(
      id: 1,
      name: r'sid',
      type: IsarType.string,
    ),
    r'workspace': PropertySchema(
      id: 2,
      name: r'workspace',
      type: IsarType.string,
    ),
    r'year': PropertySchema(
      id: 3,
      name: r'year',
      type: IsarType.string,
    )
  },
  estimateSize: _carModelEstimateSize,
  serialize: _carModelSerialize,
  deserialize: _carModelDeserialize,
  deserializeProp: _carModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'sid': IndexSchema(
      id: 3962831672660911250,
      name: r'sid',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'sid',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _carModelGetId,
  getLinks: _carModelGetLinks,
  attach: _carModelAttach,
  version: '3.1.0+1',
);

int _carModelEstimateSize(
  CarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.make.length * 3;
  bytesCount += 3 + object.sid.length * 3;
  bytesCount += 3 + object.workspace.length * 3;
  bytesCount += 3 + object.year.length * 3;
  return bytesCount;
}

void _carModelSerialize(
  CarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.make);
  writer.writeString(offsets[1], object.sid);
  writer.writeString(offsets[2], object.workspace);
  writer.writeString(offsets[3], object.year);
}

CarModel _carModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CarModel();
  object.id = id;
  object.make = reader.readString(offsets[0]);
  object.sid = reader.readString(offsets[1]);
  object.workspace = reader.readString(offsets[2]);
  object.year = reader.readString(offsets[3]);
  return object;
}

P _carModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _carModelGetId(CarModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _carModelGetLinks(CarModel object) {
  return [];
}

void _carModelAttach(IsarCollection<dynamic> col, Id id, CarModel object) {
  object.id = id;
}

extension CarModelByIndex on IsarCollection<CarModel> {
  Future<CarModel?> getBySid(String sid) {
    return getByIndex(r'sid', [sid]);
  }

  CarModel? getBySidSync(String sid) {
    return getByIndexSync(r'sid', [sid]);
  }

  Future<bool> deleteBySid(String sid) {
    return deleteByIndex(r'sid', [sid]);
  }

  bool deleteBySidSync(String sid) {
    return deleteByIndexSync(r'sid', [sid]);
  }

  Future<List<CarModel?>> getAllBySid(List<String> sidValues) {
    final values = sidValues.map((e) => [e]).toList();
    return getAllByIndex(r'sid', values);
  }

  List<CarModel?> getAllBySidSync(List<String> sidValues) {
    final values = sidValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'sid', values);
  }

  Future<int> deleteAllBySid(List<String> sidValues) {
    final values = sidValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'sid', values);
  }

  int deleteAllBySidSync(List<String> sidValues) {
    final values = sidValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'sid', values);
  }

  Future<Id> putBySid(CarModel object) {
    return putByIndex(r'sid', object);
  }

  Id putBySidSync(CarModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'sid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllBySid(List<CarModel> objects) {
    return putAllByIndex(r'sid', objects);
  }

  List<Id> putAllBySidSync(List<CarModel> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'sid', objects, saveLinks: saveLinks);
  }
}

extension CarModelQueryWhereSort on QueryBuilder<CarModel, CarModel, QWhere> {
  QueryBuilder<CarModel, CarModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CarModelQueryWhere on QueryBuilder<CarModel, CarModel, QWhereClause> {
  QueryBuilder<CarModel, CarModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> sidEqualTo(String sid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'sid',
        value: [sid],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> sidNotEqualTo(
      String sid) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'sid',
              lower: [],
              upper: [sid],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'sid',
              lower: [sid],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'sid',
              lower: [sid],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'sid',
              lower: [],
              upper: [sid],
              includeUpper: false,
            ));
      }
    });
  }
}

extension CarModelQueryFilter
    on QueryBuilder<CarModel, CarModel, QFilterCondition> {
  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'make',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'make',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'make',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'make',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> sidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> sidGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> sidLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> sidBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> sidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> sidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> sidContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> sidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> sidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sid',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> sidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sid',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> workspaceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workspace',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> workspaceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workspace',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> workspaceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workspace',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> workspaceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workspace',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> workspaceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'workspace',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> workspaceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'workspace',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> workspaceContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'workspace',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> workspaceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'workspace',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> workspaceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workspace',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      workspaceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'workspace',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> yearEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> yearGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'year',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> yearLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'year',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> yearBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'year',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> yearStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'year',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> yearEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'year',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> yearContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'year',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> yearMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'year',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> yearIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> yearIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'year',
        value: '',
      ));
    });
  }
}

extension CarModelQueryObject
    on QueryBuilder<CarModel, CarModel, QFilterCondition> {}

extension CarModelQueryLinks
    on QueryBuilder<CarModel, CarModel, QFilterCondition> {}

extension CarModelQuerySortBy on QueryBuilder<CarModel, CarModel, QSortBy> {
  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByMake() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'make', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByMakeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'make', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortBySid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sid', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortBySidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sid', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByWorkspace() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workspace', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByWorkspaceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workspace', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension CarModelQuerySortThenBy
    on QueryBuilder<CarModel, CarModel, QSortThenBy> {
  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByMake() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'make', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByMakeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'make', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenBySid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sid', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenBySidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sid', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByWorkspace() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workspace', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByWorkspaceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workspace', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension CarModelQueryWhereDistinct
    on QueryBuilder<CarModel, CarModel, QDistinct> {
  QueryBuilder<CarModel, CarModel, QDistinct> distinctByMake(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'make', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctBySid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByWorkspace(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workspace', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByYear(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year', caseSensitive: caseSensitive);
    });
  }
}

extension CarModelQueryProperty
    on QueryBuilder<CarModel, CarModel, QQueryProperty> {
  QueryBuilder<CarModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CarModel, String, QQueryOperations> makeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'make');
    });
  }

  QueryBuilder<CarModel, String, QQueryOperations> sidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sid');
    });
  }

  QueryBuilder<CarModel, String, QQueryOperations> workspaceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workspace');
    });
  }

  QueryBuilder<CarModel, String, QQueryOperations> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'year');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCrdtModelCollection on Isar {
  IsarCollection<CrdtModel> get crdtModels => this.collection();
}

const CrdtModelSchema = CollectionSchema(
  name: r'CrdtModel',
  id: 467464805277288776,
  properties: {
    r'collection': PropertySchema(
      id: 0,
      name: r'collection',
      type: IsarType.string,
    ),
    r'field': PropertySchema(
      id: 1,
      name: r'field',
      type: IsarType.string,
    ),
    r'hlc': PropertySchema(
      id: 2,
      name: r'hlc',
      type: IsarType.string,
    ),
    r'modified': PropertySchema(
      id: 3,
      name: r'modified',
      type: IsarType.string,
    ),
    r'operation': PropertySchema(
      id: 4,
      name: r'operation',
      type: IsarType.string,
    ),
    r'rowId': PropertySchema(
      id: 5,
      name: r'rowId',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 6,
      name: r'value',
      type: IsarType.string,
    ),
    r'workspace': PropertySchema(
      id: 7,
      name: r'workspace',
      type: IsarType.string,
    )
  },
  estimateSize: _crdtModelEstimateSize,
  serialize: _crdtModelSerialize,
  deserialize: _crdtModelDeserialize,
  deserializeProp: _crdtModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'hlc': IndexSchema(
      id: 4830574835704751749,
      name: r'hlc',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'hlc',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _crdtModelGetId,
  getLinks: _crdtModelGetLinks,
  attach: _crdtModelAttach,
  version: '3.1.0+1',
);

int _crdtModelEstimateSize(
  CrdtModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.collection.length * 3;
  {
    final value = object.field;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.hlc.length * 3;
  bytesCount += 3 + object.modified.length * 3;
  bytesCount += 3 + object.operation.length * 3;
  bytesCount += 3 + object.rowId.length * 3;
  {
    final value = object.value;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.workspace;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _crdtModelSerialize(
  CrdtModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.collection);
  writer.writeString(offsets[1], object.field);
  writer.writeString(offsets[2], object.hlc);
  writer.writeString(offsets[3], object.modified);
  writer.writeString(offsets[4], object.operation);
  writer.writeString(offsets[5], object.rowId);
  writer.writeString(offsets[6], object.value);
  writer.writeString(offsets[7], object.workspace);
}

CrdtModel _crdtModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CrdtModel();
  object.collection = reader.readString(offsets[0]);
  object.field = reader.readStringOrNull(offsets[1]);
  object.hlc = reader.readString(offsets[2]);
  object.id = id;
  object.modified = reader.readString(offsets[3]);
  object.operation = reader.readString(offsets[4]);
  object.rowId = reader.readString(offsets[5]);
  object.value = reader.readStringOrNull(offsets[6]);
  object.workspace = reader.readStringOrNull(offsets[7]);
  return object;
}

P _crdtModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _crdtModelGetId(CrdtModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _crdtModelGetLinks(CrdtModel object) {
  return [];
}

void _crdtModelAttach(IsarCollection<dynamic> col, Id id, CrdtModel object) {
  object.id = id;
}

extension CrdtModelQueryWhereSort
    on QueryBuilder<CrdtModel, CrdtModel, QWhere> {
  QueryBuilder<CrdtModel, CrdtModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CrdtModelQueryWhere
    on QueryBuilder<CrdtModel, CrdtModel, QWhereClause> {
  QueryBuilder<CrdtModel, CrdtModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterWhereClause> hlcEqualTo(String hlc) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'hlc',
        value: [hlc],
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterWhereClause> hlcNotEqualTo(
      String hlc) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hlc',
              lower: [],
              upper: [hlc],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hlc',
              lower: [hlc],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hlc',
              lower: [hlc],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hlc',
              lower: [],
              upper: [hlc],
              includeUpper: false,
            ));
      }
    });
  }
}

extension CrdtModelQueryFilter
    on QueryBuilder<CrdtModel, CrdtModel, QFilterCondition> {
  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> collectionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'collection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition>
      collectionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'collection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> collectionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'collection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> collectionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'collection',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition>
      collectionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'collection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> collectionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'collection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> collectionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'collection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> collectionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'collection',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition>
      collectionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'collection',
        value: '',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition>
      collectionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'collection',
        value: '',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> fieldIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'field',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> fieldIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'field',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> fieldEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'field',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> fieldGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'field',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> fieldLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'field',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> fieldBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'field',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> fieldStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'field',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> fieldEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'field',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> fieldContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'field',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> fieldMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'field',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> fieldIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'field',
        value: '',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> fieldIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'field',
        value: '',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> hlcEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hlc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> hlcGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hlc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> hlcLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hlc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> hlcBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hlc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> hlcStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hlc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> hlcEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hlc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> hlcContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hlc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> hlcMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hlc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> hlcIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hlc',
        value: '',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> hlcIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hlc',
        value: '',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> modifiedEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> modifiedGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'modified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> modifiedLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'modified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> modifiedBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'modified',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> modifiedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'modified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> modifiedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'modified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> modifiedContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'modified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> modifiedMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'modified',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> modifiedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modified',
        value: '',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition>
      modifiedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'modified',
        value: '',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> operationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'operation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition>
      operationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'operation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> operationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'operation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> operationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'operation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> operationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'operation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> operationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'operation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> operationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'operation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> operationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'operation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> operationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'operation',
        value: '',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition>
      operationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'operation',
        value: '',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> rowIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rowId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> rowIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rowId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> rowIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rowId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> rowIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rowId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> rowIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rowId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> rowIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rowId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> rowIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rowId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> rowIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rowId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> rowIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rowId',
        value: '',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> rowIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rowId',
        value: '',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> valueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> valueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> valueEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> valueGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> valueLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> valueBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> valueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> valueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> valueContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> valueMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'value',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: '',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'value',
        value: '',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> workspaceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'workspace',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition>
      workspaceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'workspace',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> workspaceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workspace',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition>
      workspaceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workspace',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> workspaceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workspace',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> workspaceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workspace',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> workspaceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'workspace',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> workspaceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'workspace',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> workspaceContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'workspace',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> workspaceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'workspace',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition> workspaceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workspace',
        value: '',
      ));
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterFilterCondition>
      workspaceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'workspace',
        value: '',
      ));
    });
  }
}

extension CrdtModelQueryObject
    on QueryBuilder<CrdtModel, CrdtModel, QFilterCondition> {}

extension CrdtModelQueryLinks
    on QueryBuilder<CrdtModel, CrdtModel, QFilterCondition> {}

extension CrdtModelQuerySortBy on QueryBuilder<CrdtModel, CrdtModel, QSortBy> {
  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> sortByCollection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collection', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> sortByCollectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collection', Sort.desc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> sortByField() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'field', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> sortByFieldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'field', Sort.desc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> sortByHlc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hlc', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> sortByHlcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hlc', Sort.desc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> sortByModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modified', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> sortByModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modified', Sort.desc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> sortByOperation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operation', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> sortByOperationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operation', Sort.desc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> sortByRowId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rowId', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> sortByRowIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rowId', Sort.desc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> sortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> sortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> sortByWorkspace() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workspace', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> sortByWorkspaceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workspace', Sort.desc);
    });
  }
}

extension CrdtModelQuerySortThenBy
    on QueryBuilder<CrdtModel, CrdtModel, QSortThenBy> {
  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByCollection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collection', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByCollectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collection', Sort.desc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByField() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'field', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByFieldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'field', Sort.desc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByHlc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hlc', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByHlcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hlc', Sort.desc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modified', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modified', Sort.desc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByOperation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operation', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByOperationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operation', Sort.desc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByRowId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rowId', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByRowIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rowId', Sort.desc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByWorkspace() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workspace', Sort.asc);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QAfterSortBy> thenByWorkspaceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workspace', Sort.desc);
    });
  }
}

extension CrdtModelQueryWhereDistinct
    on QueryBuilder<CrdtModel, CrdtModel, QDistinct> {
  QueryBuilder<CrdtModel, CrdtModel, QDistinct> distinctByCollection(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'collection', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QDistinct> distinctByField(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'field', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QDistinct> distinctByHlc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hlc', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QDistinct> distinctByModified(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'modified', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QDistinct> distinctByOperation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'operation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QDistinct> distinctByRowId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rowId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QDistinct> distinctByValue(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'value', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CrdtModel, CrdtModel, QDistinct> distinctByWorkspace(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workspace', caseSensitive: caseSensitive);
    });
  }
}

extension CrdtModelQueryProperty
    on QueryBuilder<CrdtModel, CrdtModel, QQueryProperty> {
  QueryBuilder<CrdtModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CrdtModel, String, QQueryOperations> collectionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'collection');
    });
  }

  QueryBuilder<CrdtModel, String?, QQueryOperations> fieldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'field');
    });
  }

  QueryBuilder<CrdtModel, String, QQueryOperations> hlcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hlc');
    });
  }

  QueryBuilder<CrdtModel, String, QQueryOperations> modifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modified');
    });
  }

  QueryBuilder<CrdtModel, String, QQueryOperations> operationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'operation');
    });
  }

  QueryBuilder<CrdtModel, String, QQueryOperations> rowIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rowId');
    });
  }

  QueryBuilder<CrdtModel, String?, QQueryOperations> valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'value');
    });
  }

  QueryBuilder<CrdtModel, String?, QQueryOperations> workspaceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workspace');
    });
  }
}
