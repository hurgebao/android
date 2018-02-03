.class public Lorg/spongycastle/crypto/params/DESedeParameters;
.super Lorg/spongycastle/crypto/params/DESParameters;
.source "DESedeParameters.java"


# direct methods
.method public static isWeakKey([BII)Z
    .locals 2
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 34
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 36
    invoke-static {p0, v0}, Lorg/spongycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const/4 v1, 0x1

    .line 42
    :goto_1
    return v1

    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
