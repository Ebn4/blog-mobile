// To parse this JSON data, do
//
//     final comment = commentFromJson(jsonString);

import 'dart:convert';

Comment commentFromJson(String str) => Comment.fromJson(json.decode(str));

String commentToJson(Comment data) => json.encode(data.toJson());

class Comment {
    int? id;
    String? content;
    int? articleId;
    int? userId;
    DateTime? createdAt;
    DateTime? updatedAt;

    Comment({
        this.id,
        this.content,
        this.articleId,
        this.userId,
        this.createdAt,
        this.updatedAt,
    });

    Comment copyWith({
        int? id,
        String? content,
        int? articleId,
        int? userId,
        DateTime? createdAt,
        DateTime? updatedAt,
    }) => 
        Comment(
            id: id ?? this.id,
            content: content ?? this.content,
            articleId: articleId ?? this.articleId,
            userId: userId ?? this.userId,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
        );

    factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: json["id"],
        content: json["content"],
        articleId: json["article_id"],
        userId: json["user_id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "content": content,
        "article_id": articleId,
        "user_id": userId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}