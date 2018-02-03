.class Lkotlin/collections/ArraysKt___ArraysKt;
.super Lkotlin/collections/ArraysKt__ArraysKt;
.source "_Arrays.kt"


# direct methods
.method public static final asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p0, "$receiver"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12994
    invoke-static {p0}, Lkotlin/collections/ArraysUtilJVM;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ArraysUtilJVM.asList(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final contains([CC)Z
    .locals 1
    .param p0, "$receiver"    # [C
    .param p1, "element"    # C

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt;->indexOf([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$receiver"    # [Ljava/lang/Object;
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final fill([CCII)V
    .locals 1
    .param p0, "$receiver"    # [C
    .param p1, "element"    # C
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13977
    invoke-static {p0, p2, p3, p1}, Ljava/util/Arrays;->fill([CIIC)V

    .line 13978
    return-void
.end method

.method public static bridge synthetic fill$default([CCIIILjava/lang/Object;)V
    .locals 1

    .prologue
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 13976
    const/4 p2, 0x0

    :cond_0
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_1

    array-length p3, p0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/collections/ArraysKt;->fill([CCII)V

    return-void
.end method

.method public static final indexOf([CC)I
    .locals 3
    .param p0, "$receiver"    # [C
    .param p1, "element"    # C

    .prologue
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1346
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    .line 1347
    :goto_0
    aget-char v2, p0, v0

    if-ne p1, v2, :cond_0

    .line 1351
    :goto_1
    return v0

    .line 1346
    :cond_0
    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .local v0, "index":I
    goto :goto_0

    .line 1351
    .end local v0    # "index":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static final indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p0, "$receiver"    # [Ljava/lang/Object;
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1242
    if-nez p1, :cond_2

    .line 1243
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_3

    .line 1244
    :goto_0
    aget-object v2, p0, v0

    if-nez v2, :cond_1

    .line 1254
    :cond_0
    :goto_1
    return v0

    .line 1243
    :cond_1
    if-eq v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .local v0, "index":I
    goto :goto_0

    .line 1249
    .end local v0    # "index":I
    :cond_2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_3

    .line 1250
    :goto_2
    aget-object v2, p0, v0

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1249
    if-eq v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .restart local v0    # "index":I
    goto :goto_2

    .line 1254
    .end local v0    # "index":I
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static final single([C)C
    .locals 2
    .param p0, "$receiver"    # [C

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2138
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 2141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array has more than one element."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 2139
    :pswitch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 2140
    :pswitch_1
    const/4 v0, 0x0

    aget-char v0, p0, v0

    .line 2138
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final sortWith([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 2
    .param p0, "$receiver"    # [Ljava/lang/Object;
    .param p1, "comparator"    # Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13673
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 13674
    :cond_0
    return-void
.end method
