.class public Lorg/spongycastle/crypto/prng/FixedSecureRandom;
.super Ljava/security/SecureRandom;
.source "FixedSecureRandom.java"


# instance fields
.field private _data:[B

.field private _index:I

.field private _intPad:I


# direct methods
.method private nextValue()I
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 1
    .param p1, "numBytes"    # I

    .prologue
    .line 79
    new-array v0, p1, [B

    .line 81
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextBytes([B)V

    .line 83
    return-object v0
.end method

.method public nextBytes([B)V
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_index:I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_index:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_index:I

    .line 75
    return-void
.end method

.method public nextInt()I
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "val":I
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 95
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 97
    iget v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 99
    iget v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    .line 106
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 108
    iget v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    .line 115
    :goto_1
    return v0

    .line 103
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    goto :goto_0

    .line 112
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1
.end method

.method public nextLong()J
    .locals 5

    .prologue
    .line 124
    const-wide/16 v0, 0x0

    .line 126
    .local v0, "val":J
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 127
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 128
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 129
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 130
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 131
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 132
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 133
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 135
    return-wide v0
.end method
