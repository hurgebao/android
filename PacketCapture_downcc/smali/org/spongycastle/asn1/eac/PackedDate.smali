.class public Lorg/spongycastle/asn1/eac/PackedDate;
.super Ljava/lang/Object;
.source "PackedDate.java"


# instance fields
.field private time:[B


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 98
    instance-of v1, p1, Lorg/spongycastle/asn1/eac/PackedDate;

    if-nez v1, :cond_0

    .line 100
    const/4 v1, 0x0

    .line 105
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 103
    check-cast v0, Lorg/spongycastle/asn1/eac/PackedDate;

    .line 105
    .local v0, "other":Lorg/spongycastle/asn1/eac/PackedDate;
    iget-object v1, p0, Lorg/spongycastle/asn1/eac/PackedDate;->time:[B

    iget-object v2, v0, Lorg/spongycastle/asn1/eac/PackedDate;->time:[B

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/PackedDate;->time:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    iget-object v2, p0, Lorg/spongycastle/asn1/eac/PackedDate;->time:[B

    array-length v2, v2

    new-array v0, v2, [C

    .line 112
    .local v0, "dateC":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 114
    iget-object v2, p0, Lorg/spongycastle/asn1/eac/PackedDate;->time:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
