.class public final Lio/reactivex/internal/util/Pow2;
.super Ljava/lang/Object;
.source "Pow2.java"


# direct methods
.method public static roundToPowerOfTwo(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 34
    const/4 v0, 0x1

    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    shl-int/2addr v0, v1

    return v0
.end method