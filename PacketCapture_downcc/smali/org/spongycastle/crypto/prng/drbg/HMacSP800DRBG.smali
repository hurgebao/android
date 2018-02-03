.class public Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;
.super Ljava/lang/Object;
.source "HMacSP800DRBG.java"

# interfaces
.implements Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;


# instance fields
.field private _K:[B

.field private _V:[B

.field private _entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

.field private _hMac:Lorg/spongycastle/crypto/Mac;

.field private _reseedCounter:J


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Mac;ILorg/spongycastle/crypto/prng/EntropySource;[B[B)V
    .locals 4
    .param p1, "hMac"    # Lorg/spongycastle/crypto/Mac;
    .param p2, "securityStrength"    # I
    .param p3, "entropySource"    # Lorg/spongycastle/crypto/prng/EntropySource;
    .param p4, "personalizationString"    # [B
    .param p5, "nonce"    # [B

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lorg/spongycastle/crypto/prng/drbg/Utils;->getMaxSecurityStrength(Lorg/spongycastle/crypto/Mac;)I

    move-result v2

    if-le p2, v2, :cond_0

    .line 38
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Requested security strength is not supported by the derivation function"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_0
    invoke-interface {p3}, Lorg/spongycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v2

    if-ge v2, p2, :cond_1

    .line 43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not enough entropy for security strength required"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_1
    iput-object p3, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    .line 47
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    .line 49
    invoke-interface {p3}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    .line 50
    .local v0, "entropy":[B
    invoke-static {v0, p5, p4}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v1

    .line 52
    .local v1, "seedMaterial":[B
    invoke-interface {p1}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    .line 53
    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    .line 54
    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 56
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    .line 58
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    .line 59
    return-void
.end method

.method private hmac_DRBG_Update([B)V
    .locals 1
    .param p1, "seedMaterial"    # [B

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update_Func([BB)V

    .line 64
    if-eqz p1, :cond_0

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update_Func([BB)V

    .line 68
    :cond_0
    return-void
.end method

.method private hmac_DRBG_Update_Func([BB)V
    .locals 4
    .param p1, "seedMaterial"    # [B
    .param p2, "vValue"    # B

    .prologue
    const/4 v3, 0x0

    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p2}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 77
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    array-length v1, p1

    invoke-interface {v0, p1, v3, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 88
    return-void
.end method


# virtual methods
.method public generate([B[BZ)I
    .locals 9
    .param p1, "output"    # [B
    .param p2, "additionalInput"    # [B
    .param p3, "predictionResistant"    # Z

    .prologue
    const/4 v8, 0x0

    .line 111
    array-length v4, p1

    mul-int/lit8 v2, v4, 0x8

    .line 113
    .local v2, "numberOfBits":I
    const/high16 v4, 0x40000

    if-le v2, v4, :cond_0

    .line 115
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Number of bits per request limited to 262144"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    :cond_0
    iget-wide v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    const-wide v6, 0x800000000000L

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 120
    const/4 v2, -0x1

    .line 164
    .end local v2    # "numberOfBits":I
    :goto_0
    return v2

    .line 123
    .restart local v2    # "numberOfBits":I
    :cond_1
    if-eqz p3, :cond_2

    .line 125
    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->reseed([B)V

    .line 126
    const/4 p2, 0x0

    .line 130
    :cond_2
    if-eqz p2, :cond_3

    .line 132
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    .line 136
    :cond_3
    array-length v4, p1

    new-array v3, v4, [B

    .line 138
    .local v3, "rv":[B
    array-length v4, p1

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v5, v5

    div-int v1, v4, v5

    .line 140
    .local v1, "m":I
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    new-instance v5, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v6, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v4, v5}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 144
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v6, v6

    invoke-interface {v4, v5, v8, v6}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 145
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v4, v5, v8}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 147
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v5, v5

    mul-int/2addr v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v6, v6

    invoke-static {v4, v8, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    :cond_4
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v4, v4

    mul-int/2addr v4, v1

    array-length v5, v3

    if-ge v4, v5, :cond_5

    .line 152
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v6, v6

    invoke-interface {v4, v5, v8, v6}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 153
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v4, v5, v8}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 155
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v5, v5

    mul-int/2addr v5, v1

    array-length v6, v3

    iget-object v7, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v7, v7

    mul-int/2addr v7, v1

    sub-int/2addr v6, v7

    invoke-static {v4, v8, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    :cond_5
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    .line 160
    iget-wide v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    .line 162
    array-length v4, p1

    invoke-static {v3, v8, p1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public reseed([B)V
    .locals 4
    .param p1, "additionalInput"    # [B

    .prologue
    .line 174
    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v2}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    .line 175
    .local v0, "entropy":[B
    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    .line 177
    .local v1, "seedMaterial":[B
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    .line 179
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    .line 180
    return-void
.end method
