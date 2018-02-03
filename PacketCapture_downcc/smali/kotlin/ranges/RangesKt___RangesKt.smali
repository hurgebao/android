.class Lkotlin/ranges/RangesKt___RangesKt;
.super Lkotlin/ranges/RangesKt__RangesKt;
.source "_Ranges.kt"


# direct methods
.method public static final coerceAtLeast(II)I
    .locals 0
    .param p0, "$receiver"    # I
    .param p1, "minimumValue"    # I

    .prologue
    .line 684
    if-ge p0, p1, :cond_0

    .end local p1    # "minimumValue":I
    :goto_0
    return p1

    .restart local p1    # "minimumValue":I
    :cond_0
    move p1, p0

    goto :goto_0
.end method

.method public static final coerceAtMost(II)I
    .locals 0
    .param p0, "$receiver"    # I
    .param p1, "maximumValue"    # I

    .prologue
    .line 747
    if-le p0, p1, :cond_0

    .end local p1    # "maximumValue":I
    :goto_0
    return p1

    .restart local p1    # "maximumValue":I
    :cond_0
    move p1, p0

    goto :goto_0
.end method

.method public static final coerceIn(III)I
    .locals 3
    .param p0, "$receiver"    # I
    .param p1, "minimumValue"    # I
    .param p2, "maximumValue"    # I

    .prologue
    .line 825
    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is less than minimum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 826
    :cond_0
    if-ge p0, p1, :cond_1

    .line 828
    .end local p1    # "minimumValue":I
    :goto_0
    return p1

    .line 827
    .restart local p1    # "minimumValue":I
    :cond_1
    if-le p0, p2, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    move p1, p0

    .line 828
    goto :goto_0
.end method

.method public static final downTo(II)Lkotlin/ranges/IntProgression;
    .locals 2
    .param p0, "$receiver"    # I
    .param p1, "to"    # I

    .prologue
    .line 305
    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object v0

    return-object v0
.end method

.method public static final reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;
    .locals 4
    .param p0, "$receiver"    # Lkotlin/ranges/IntProgression;

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v1

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object v0

    return-object v0
.end method

.method public static final step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;
    .locals 4
    .param p0, "$receiver"    # Lkotlin/ranges/IntProgression;
    .param p1, "step"    # I

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    if-lez p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->checkStepIsPositive(ZLjava/lang/Number;)V

    .line 433
    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v1

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v2

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    if-lez v3, :cond_1

    .end local p1    # "step":I
    :goto_1
    invoke-virtual {v0, v1, v2, p1}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object v0

    return-object v0

    .line 432
    .restart local p1    # "step":I
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 433
    :cond_1
    neg-int p1, p1

    goto :goto_1
.end method
