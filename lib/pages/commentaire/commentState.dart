class CommentState {
    int? id;
    String? content;
    int? articleId;
    int? userId;
    DateTime? createdAt;
    DateTime? updatedAt;

    CommentState({
        this.id,
        this.content,
        this.articleId,
        this.userId,
        this.createdAt,
        this.updatedAt,
    });

    CommentState copyWith({
        int? id,
        String? content,
        int? articleId,
        int? userId,
        DateTime? createdAt,
        DateTime? updatedAt,
    }) => 
        CommentState(
            id: id ?? this.id,
            content: content ?? this.content,
            articleId: articleId ?? this.articleId,
            userId: userId ?? this.userId,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
        );
}
