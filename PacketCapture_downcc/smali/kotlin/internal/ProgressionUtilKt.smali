.class public final Lkotlin/internal/ProgressionUtilKt;
.super Ljava/lang/Object;
.source "progressionUtil.kt"


# direct methods
.method private static final differenceModulo(III)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 32
    invoke-static {p0, p2}, Lkotlin/internal/ProgressionUtilKt;->mod(II)I

    move-result v0

    invoke-static {p1, p2}, Lkotlin/internal/ProgressionUtilKt;->mod(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Lkotlin/internal/ProgressionUtilKt;->mod(II)I

    move-result v0

    return v0
.end method

.method public static final getProgressionLastElement(III)I
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "step"    # I

    .prologue
    .line 53
    if-lez p2, :cond_0

    .line 54
    invoke-static {p1, p0, p2}, Lkotlin/internal/ProgressionUtilKt;->differenceModulo(III)I

    move-result v0

    sub-int v0, p1, v0

    .line 57
    :goto_0
    return v0

    .line 56
    :cond_0
    if-gez p2, :cond_1

    .line 57
    neg-int v0, p2

    invoke-static {p0, p1, v0}, Lkotlin/internal/ProgressionUtilKt;->differenceModulo(III)I

    move-result v0

    add-int/2addr v0, p1

    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Step is zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private static final mod(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 21
    rem-int v0, p0, p1

    .line 22
    .local v0, "mod":I
    if-ltz v0, :cond_0

    .end local v0    # "mod":I
    :goto_0
    return v0

    .restart local v0    # "mod":I
    :cond_0
    add-int/2addr v0, p1

    goto :goto_0
.end method
