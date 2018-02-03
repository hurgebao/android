.class public abstract Lui/AfterImageCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "AfterImageCursorAdapter.kt"


# instance fields
.field private final ctx:Landroid/content/Context;

.field private cursor:Landroid/database/Cursor;

.field private final list:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lui/AfterImageCursorAdapter;->ctx:Landroid/content/Context;

    .line 13
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lui/AfterImageCursorAdapter;->list:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public final adjustPosition(I)I
    .locals 7
    .param p1, "pos"    # I

    .prologue
    .line 70
    move v2, p1

    .line 71
    .local v2, "p":I
    iget-object v4, p0, Lui/AfterImageCursorAdapter;->list:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 72
    .local v1, "lower":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 73
    iget-object v4, p0, Lui/AfterImageCursorAdapter;->list:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 74
    .local v0, "first":Ljava/lang/Integer;
    iget-object v4, p0, Lui/AfterImageCursorAdapter;->list:Ljava/util/TreeSet;

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    .line 75
    .local v3, "set":Ljava/util/SortedSet;
    const-string v4, "SSL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjust. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " += "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/SortedSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-interface {v3}, Ljava/util/SortedSet;->size()I

    move-result v4

    add-int/2addr v2, v4

    .line 79
    .end local v0    # "first":Ljava/lang/Integer;
    .end local v3    # "set":Ljava/util/SortedSet;
    :cond_0
    :goto_0
    iget-object v4, p0, Lui/AfterImageCursorAdapter;->list:Ljava/util/TreeSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    const-string v4, "SSL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "same pos exist. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ++"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 79
    goto :goto_0

    .line 83
    :cond_1
    return v2
.end method

.method public final changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "nc"    # Landroid/database/Cursor;

    .prologue
    .line 40
    iget-object v0, p0, Lui/AfterImageCursorAdapter;->cursor:Landroid/database/Cursor;

    .line 41
    .local v0, "c":Landroid/database/Cursor;
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 44
    :cond_0
    iget-object v1, p0, Lui/AfterImageCursorAdapter;->list:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    .line 45
    iput-object p1, p0, Lui/AfterImageCursorAdapter;->cursor:Landroid/database/Cursor;

    .line 46
    invoke-virtual {p0}, Lui/AfterImageCursorAdapter;->notifyDataSetChanged()V

    .line 47
    return-void
.end method

.method public final delete([I)V
    .locals 5
    .param p1, "pos"    # [I

    .prologue
    const-string v1, "pos"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget v0, p1, v1

    .line 30
    .local v0, "p":I
    if-gez v0, :cond_0

    .line 29
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_0
    const-string v3, "SSL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " c.getCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lui/AfterImageCursorAdapter;->cursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " list.size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lui/AfterImageCursorAdapter;->list:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v2, p0, Lui/AfterImageCursorAdapter;->list:Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 36
    .end local v0    # "p":I
    :cond_2
    invoke-virtual {p0}, Lui/AfterImageCursorAdapter;->notifyDataSetChanged()V

    .line 37
    return-void
.end method

.method public final getAdjustedCursor(I)Landroid/database/Cursor;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 58
    iget-object v1, p0, Lui/AfterImageCursorAdapter;->cursor:Landroid/database/Cursor;

    .line 59
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 60
    const/4 v1, 0x0

    .line 64
    .end local v1    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v1

    .line 62
    .restart local v1    # "c":Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p0, p1}, Lui/AfterImageCursorAdapter;->adjustPosition(I)I

    move-result v0

    .line 63
    .local v0, "adjustedPos":I
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 18
    iget-object v0, p0, Lui/AfterImageCursorAdapter;->cursor:Landroid/database/Cursor;

    .line 19
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 24
    :cond_1
    :goto_0
    return v1

    .line 22
    :cond_2
    const-string v3, "SSL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCount() c.getCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " list.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lui/AfterImageCursorAdapter;->list:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iget-object v4, p0, Lui/AfterImageCursorAdapter;->list:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    sub-int v1, v3, v4

    .line 24
    .local v1, "count":I
    if-gtz v1, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lui/AfterImageCursorAdapter;->getAdjustedCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 51
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 52
    const-wide/16 v2, 0x0

    .line 54
    :goto_0
    return-wide v2

    :cond_0
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0
.end method
