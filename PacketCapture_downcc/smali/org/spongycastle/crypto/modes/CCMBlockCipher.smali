.class public Lorg/spongycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;
.source "CCMBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blockSize:I

.field private cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private data:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private keyParam:Lorg/spongycastle/crypto/CipherParameters;

.field private macBlock:[B

.field private macSize:I

.field private nonce:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "c"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lorg/spongycastle/crypto/modes/CCMBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 34
    new-instance v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lorg/spongycastle/crypto/modes/CCMBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 43
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 44
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    .line 45
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    .line 47
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    return-void
.end method

.method private calculateMac([BII[B)I
    .locals 11
    .param p1, "data"    # [B
    .param p2, "dataOff"    # I
    .param p3, "dataLen"    # I
    .param p4, "macBlock"    # [B

    .prologue
    .line 350
    new-instance v1, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget v8, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    mul-int/lit8 v8, v8, 0x8

    invoke-direct {v1, v7, v8}, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    .line 352
    .local v1, "cMac":Lorg/spongycastle/crypto/Mac;
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->keyParam:Lorg/spongycastle/crypto/CipherParameters;

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 357
    const/16 v7, 0x10

    new-array v0, v7, [B

    .line 359
    .local v0, "b0":[B
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 361
    const/4 v7, 0x0

    aget-byte v8, v0, v7

    or-int/lit8 v8, v8, 0x40

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 364
    :cond_0
    const/4 v7, 0x0

    aget-byte v8, v0, v7

    invoke-interface {v1}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    div-int/lit8 v9, v9, 0x2

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x3

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 366
    const/4 v7, 0x0

    aget-byte v8, v0, v7

    iget-object v9, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v9, v9

    rsub-int/lit8 v9, v9, 0xf

    add-int/lit8 v9, v9, -0x1

    and-int/lit8 v9, v9, 0x7

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 368
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v10, v10

    invoke-static {v7, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    move v5, p3

    .line 371
    .local v5, "q":I
    const/4 v2, 0x1

    .line 372
    .local v2, "count":I
    :goto_0
    if-lez v5, :cond_1

    .line 374
    array-length v7, v0

    sub-int/2addr v7, v2

    and-int/lit16 v8, v5, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 375
    ushr-int/lit8 v5, v5, 0x8

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    :cond_1
    const/4 v7, 0x0

    array-length v8, v0

    invoke-interface {v1, v0, v7, v8}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 384
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 388
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v6

    .line 389
    .local v6, "textLength":I
    const v7, 0xff00

    if-ge v6, v7, :cond_4

    .line 391
    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 392
    int-to-byte v7, v6

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 394
    const/4 v3, 0x2

    .line 408
    .local v3, "extra":I
    :goto_1
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-eqz v7, :cond_2

    .line 410
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    array-length v9, v9

    invoke-interface {v1, v7, v8, v9}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 412
    :cond_2
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 414
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v9

    invoke-interface {v1, v7, v8, v9}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 417
    :cond_3
    add-int v7, v3, v6

    rem-int/lit8 v3, v7, 0x10

    .line 418
    if-eqz v3, :cond_5

    .line 420
    move v4, v3

    .local v4, "i":I
    :goto_2
    const/16 v7, 0x10

    if-eq v4, v7, :cond_5

    .line 422
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 420
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 398
    .end local v3    # "extra":I
    .end local v4    # "i":I
    :cond_4
    const/4 v7, -0x1

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 399
    const/4 v7, -0x2

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 400
    shr-int/lit8 v7, v6, 0x18

    int-to-byte v7, v7

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 401
    shr-int/lit8 v7, v6, 0x10

    int-to-byte v7, v7

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 402
    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 403
    int-to-byte v7, v6

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 405
    const/4 v3, 0x6

    .restart local v3    # "extra":I
    goto :goto_1

    .line 430
    .end local v3    # "extra":I
    .end local v6    # "textLength":I
    :cond_5
    invoke-interface {v1, p1, p2, p3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 432
    const/4 v7, 0x0

    invoke-interface {v1, p4, v7}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    move-result v7

    return v7
.end method

.method private getAssociatedTextLength()I
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v1

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    array-length v0, v0

    goto :goto_0
.end method

.method private hasAssociatedText()Z
    .locals 1

    .prologue
    .line 442
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v3

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    move-result v6

    .line 148
    .local v6, "len":I
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 150
    return v6
.end method

.method public getOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 182
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v1

    add-int v0, p1, v1

    .line 184
    .local v0, "totalData":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 186
    iget v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v1, v0

    .line 189
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    .line 70
    instance-of v2, p2, Lorg/spongycastle/crypto/params/AEADParameters;

    if-eqz v2, :cond_2

    move-object v1, p2

    .line 72
    check-cast v1, Lorg/spongycastle/crypto/params/AEADParameters;

    .line 74
    .local v1, "param":Lorg/spongycastle/crypto/params/AEADParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 75
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    .line 76
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 77
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AEADParameters;->getKey()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v0

    .line 94
    .end local v1    # "param":Lorg/spongycastle/crypto/params/AEADParameters;
    .local v0, "cipherParameters":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    if-eqz v0, :cond_0

    .line 96
    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->keyParam:Lorg/spongycastle/crypto/CipherParameters;

    .line 99
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v2, v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v2, v2

    const/16 v3, 0xd

    if-le v2, v3, :cond_4

    .line 101
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "nonce must have length from 7 to 13 octets"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    .end local v0    # "cipherParameters":Lorg/spongycastle/crypto/CipherParameters;
    :cond_2
    instance-of v2, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_3

    move-object v1, p2

    .line 81
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 83
    .local v1, "param":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 84
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    .line 85
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 86
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    .line 87
    .restart local v0    # "cipherParameters":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 90
    .end local v0    # "cipherParameters":Lorg/spongycastle/crypto/CipherParameters;
    .end local v1    # "param":Lorg/spongycastle/crypto/params/ParametersWithIV;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid parameters passed to CCM"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    .restart local v0    # "cipherParameters":Lorg/spongycastle/crypto/CipherParameters;
    :cond_4
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 105
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 121
    return-void
.end method

.method public processBytes([BII[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 134
    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 136
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public processPacket([BII[BI)I
    .locals 19
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;,
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->keyParam:Lorg/spongycastle/crypto/CipherParameters;

    if-nez v15, :cond_0

    .line 245
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "CCM cipher unitialized."

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 248
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v11, v15

    .line 249
    .local v11, "n":I
    rsub-int/lit8 v14, v11, 0xf

    .line 250
    .local v14, "q":I
    const/4 v15, 0x4

    if-ge v14, v15, :cond_1

    .line 252
    const/4 v15, 0x1

    mul-int/lit8 v16, v14, 0x8

    shl-int v10, v15, v16

    .line 253
    .local v10, "limitLen":I
    move/from16 v0, p3

    if-lt v0, v10, :cond_1

    .line 255
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "CCM packet too large for choice of q."

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 259
    .end local v10    # "limitLen":I
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v9, v15, [B

    .line 260
    .local v9, "iv":[B
    const/4 v15, 0x0

    add-int/lit8 v16, v14, -0x1

    and-int/lit8 v16, v16, 0x7

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v9, v15

    .line 261
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v15, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    new-instance v6, Lorg/spongycastle/crypto/modes/SICBlockCipher;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v6, v15}, Lorg/spongycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 264
    .local v6, "ctrCipher":Lorg/spongycastle/crypto/BlockCipher;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    new-instance v16, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->keyParam:Lorg/spongycastle/crypto/CipherParameters;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 267
    move/from16 v8, p2

    .line 268
    .local v8, "inIndex":I
    move/from16 v12, p5

    .line 270
    .local v12, "outIndex":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v15, :cond_5

    .line 272
    move-object/from16 v0, p0

    iget v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int v13, p3, v15

    .line 273
    .local v13, "outputLen":I
    move-object/from16 v0, p4

    array-length v15, v0

    add-int v16, v13, p5

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 275
    new-instance v15, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v16, "Output buffer too short."

    invoke-direct/range {v15 .. v16}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 278
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v15}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 280
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v6, v15, v0, v1, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 282
    :goto_0
    add-int v15, p2, p3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    if-ge v8, v15, :cond_3

    .line 284
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v6, v0, v8, v1, v12}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 285
    move-object/from16 v0, p0

    iget v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v12, v15

    .line 286
    move-object/from16 v0, p0

    iget v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v8, v15

    goto :goto_0

    .line 289
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v4, v15, [B

    .line 291
    .local v4, "block":[B
    const/4 v15, 0x0

    add-int v16, p3, p2

    sub-int v16, v16, v8

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v8, v4, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v4, v15, v4, v0}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 295
    const/4 v15, 0x0

    add-int v16, p3, p2

    sub-int v16, v16, v8

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-static {v4, v15, v0, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/16 v16, 0x0

    add-int v17, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    move/from16 v18, v0

    move/from16 v0, v16

    move-object/from16 v1, p4

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    :cond_4
    return v13

    .line 301
    .end local v4    # "block":[B
    .end local v13    # "outputLen":I
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    move/from16 v0, p3

    if-ge v0, v15, :cond_6

    .line 303
    new-instance v15, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v16, "data too short"

    invoke-direct/range {v15 .. v16}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 305
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v13, p3, v15

    .line 306
    .restart local v13    # "outputLen":I
    move-object/from16 v0, p4

    array-length v15, v0

    add-int v16, v13, p5

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 308
    new-instance v15, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v16, "Output buffer too short."

    invoke-direct/range {v15 .. v16}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 311
    :cond_7
    add-int v15, p2, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v15, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v6, v15, v0, v1, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 315
    move-object/from16 v0, p0

    iget v7, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v15, v15

    if-eq v7, v15, :cond_8

    .line 317
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/16 v16, 0x0

    aput-byte v16, v15, v7

    .line 315
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 320
    :cond_8
    :goto_2
    add-int v15, p2, v13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    if-ge v8, v15, :cond_9

    .line 322
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v6, v0, v8, v1, v12}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 323
    move-object/from16 v0, p0

    iget v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v12, v15

    .line 324
    move-object/from16 v0, p0

    iget v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v8, v15

    goto :goto_2

    .line 327
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v4, v15, [B

    .line 329
    .restart local v4    # "block":[B
    const/4 v15, 0x0

    sub-int v16, v8, p2

    sub-int v16, v13, v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v8, v4, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v4, v15, v4, v0}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 333
    const/4 v15, 0x0

    sub-int v16, v8, p2

    sub-int v16, v13, v16

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-static {v4, v15, v0, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    move-object/from16 v0, p0

    iget v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v5, v15, [B

    .line 337
    .local v5, "calculatedMacBlock":[B
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2, v13, v5}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 339
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-static {v15, v5}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v15

    if-nez v15, :cond_4

    .line 341
    new-instance v15, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v16, "mac check in CCM failed"

    invoke-direct/range {v15 .. v16}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v15
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 156
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 157
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 158
    return-void
.end method
