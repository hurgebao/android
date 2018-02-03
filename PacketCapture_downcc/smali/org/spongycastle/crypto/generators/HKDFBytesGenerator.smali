.class public Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;
.super Ljava/lang/Object;
.source "HKDFBytesGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationFunction;


# instance fields
.field private currentT:[B

.field private generatedBytes:I

.field private hMacHash:Lorg/spongycastle/crypto/macs/HMac;

.field private hashLen:I

.field private info:[B


# direct methods
.method private expandNext()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 103
    iget v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    iget v2, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    div-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 104
    .local v0, "n":I
    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 106
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "HKDF cannot generate more than 255 blocks of HashLen size"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    iget v3, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    invoke-virtual {v1, v2, v4, v3}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 114
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->info:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->info:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 115
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/spongycastle/crypto/macs/HMac;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->update(B)V

    .line 116
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    invoke-virtual {v1, v2, v4}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 117
    return-void
.end method

.method private extract([B[B)Lorg/spongycastle/crypto/params/KeyParameter;
    .locals 5
    .param p1, "salt"    # [B
    .param p2, "ikm"    # [B

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 76
    if-nez p1, :cond_0

    .line 79
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    iget v3, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 86
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/spongycastle/crypto/macs/HMac;

    array-length v2, p2

    invoke-virtual {v1, p2, v4, v2}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 88
    iget v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    new-array v0, v1, [B

    .line 89
    .local v0, "prk":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v1, v0, v4}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 90
    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    return-object v1

    .line 83
    .end local v0    # "prk":[B
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 7
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 128
    iget v4, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    add-int/2addr v4, p3

    iget v5, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    mul-int/lit16 v5, v5, 0xff

    if-le v4, v5, :cond_0

    .line 130
    new-instance v4, Lorg/spongycastle/crypto/DataLengthException;

    const-string v5, "HKDF may only be used for 255 * HashLen bytes of output"

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :cond_0
    iget v4, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    iget v5, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    rem-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 136
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->expandNext()V

    .line 140
    :cond_1
    move v3, p3

    .line 141
    .local v3, "toGenerate":I
    iget v4, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    iget v5, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    rem-int v1, v4, v5

    .line 142
    .local v1, "posInT":I
    iget v4, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    iget v5, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    iget v6, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    rem-int/2addr v5, v6

    sub-int v0, v4, v5

    .line 143
    .local v0, "leftInT":I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 144
    .local v2, "toCopy":I
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    invoke-static {v4, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget v4, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    .line 146
    sub-int/2addr v3, v2

    .line 147
    add-int/2addr p2, v2

    .line 149
    :goto_0
    if-lez v3, :cond_2

    .line 151
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->expandNext()V

    .line 152
    iget v4, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 153
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget v4, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    .line 155
    sub-int/2addr v3, v2

    .line 156
    add-int/2addr p2, v2

    goto :goto_0

    .line 159
    :cond_2
    return p3
.end method

.method public init(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 4
    .param p1, "param"    # Lorg/spongycastle/crypto/DerivationParameters;

    .prologue
    .line 43
    instance-of v1, p1, Lorg/spongycastle/crypto/params/HKDFParameters;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HKDF parameters required for HKDFBytesGenerator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 49
    check-cast v0, Lorg/spongycastle/crypto/params/HKDFParameters;

    .line 50
    .local v0, "params":Lorg/spongycastle/crypto/params/HKDFParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/HKDFParameters;->skipExtract()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/HKDFParameters;->getIKM()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 60
    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/HKDFParameters;->getInfo()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->info:[B

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    .line 63
    iget v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    .line 64
    return-void

    .line 57
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/HKDFParameters;->getSalt()[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/HKDFParameters;->getIKM()[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->extract([B[B)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0
.end method
