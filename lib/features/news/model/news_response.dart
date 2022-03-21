import 'dart:convert';

import 'package:flutter/foundation.dart';

class NewsResponse {
  final List<Data> data;
  final String title;
  NewsResponse({
    required this.data,
    required this.title,
  });

  NewsResponse copyWith({
    List<Data>? data,
    String? title,
  }) {
    return NewsResponse(
      data: data ?? this.data,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': data.map((x) => x.toMap()).toList(),
      'title': title,
    };
  }

  factory NewsResponse.fromMap(Map<String, dynamic> map) {
    return NewsResponse(
      data: List<Data>.from(map['data']?.map((x) => Data.fromMap(x))),
      title: map['title'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsResponse.fromJson(String source) =>
      NewsResponse.fromMap(json.decode(source));

  @override
  String toString() => 'NewsResponse(data: $data, title: $title)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NewsResponse &&
        listEquals(other.data, data) &&
        other.title == title;
  }

  @override
  int get hashCode => data.hashCode ^ title.hashCode;
}

class Data {
  final String title;
  Data({
    required this.title,
  });

  Data copyWith({
    String? title,
  }) {
    return Data(
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      title: map['title'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source));

  @override
  String toString() => 'Data(title: $title)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Data && other.title == title;
  }

  @override
  int get hashCode => title.hashCode;
}

class NewsHeader {
  final String title;

  NewsHeader({
    required this.title,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NewsHeader &&
        other.title == title;
  }

  @override
  int get hashCode => title.hashCode;
}
