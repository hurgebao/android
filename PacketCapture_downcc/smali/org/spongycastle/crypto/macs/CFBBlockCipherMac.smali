.class public Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;
.super Ljava/lang/Object;
.source "CFBBlockCipherMac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

.field private mac:[B

.field private macSize:I

.field private padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 3
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 191
    const/16 v0, 0x8

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;IILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;IILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "cfbBitSize"    # I
    .param p3, "macSizeInBits"    # I
    .param p4, "padding"    # Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    .line 252
    rem-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    .line 259
    new-instance v0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    .line 260
    iput-object p4, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    .line 261
    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    .line 263
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 265
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    const/4 v4, 0x0

    .line 339
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v0

    .line 344
    .local v0, "blockSize":I
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    if-nez v1, :cond_0

    .line 346
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    if-ge v1, v0, :cond_1

    .line 348
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    aput-byte v4, v1, v2

    .line 349
    iget v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    goto :goto_0

    .line 354
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    invoke-interface {v1, v2, v3}, Lorg/spongycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 357
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v1, v2, v4, v3, v4}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    .line 359
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->getMacBlock([B)V

    .line 361
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    invoke-static {v1, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->reset()V

    .line 365
    iget v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 275
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->reset()V

    .line 277
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 278
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 376
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 378
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    aput-byte v2, v1, v0

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_0
    iput v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 386
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->reset()V

    .line 387
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B

    .prologue
    const/4 v3, 0x0

    .line 288
    iget v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    .line 291
    iput v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    aput-byte p1, v0, v1

    .line 295
    return-void
.end method

.method public update([BII)V
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v6, 0x0

    .line 302
    if-gez p3, :cond_0

    .line 304
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t have a negative input length!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 307
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v0

    .line 308
    .local v0, "blockSize":I
    const/4 v2, 0x0

    .line 309
    .local v2, "resultLen":I
    iget v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    sub-int v1, v0, v3

    .line 311
    .local v1, "gapLen":I
    if-le p3, v1, :cond_1

    .line 313
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v4, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v3, v4, v6, v5, v6}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 317
    iput v6, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 318
    sub-int/2addr p3, v1

    .line 319
    add-int/2addr p2, v1

    .line 321
    :goto_0
    if-le p3, v0, :cond_1

    .line 323
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v3, p1, p2, v4, v6}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 325
    sub-int/2addr p3, v0

    .line 326
    add-int/2addr p2, v0

    goto :goto_0

    .line 330
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v4, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    iget v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    add-int/2addr v3, p3

    iput v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 333
    return-void
.end method
