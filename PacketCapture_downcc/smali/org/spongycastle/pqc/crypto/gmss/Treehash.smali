.class public Lorg/spongycastle/pqc/crypto/gmss/Treehash;
.super Ljava/lang/Object;
.source "Treehash.java"


# instance fields
.field private firstNode:[B

.field private firstNodeHeight:I

.field private heightOfNodes:Ljava/util/Vector;

.field private isFinished:Z

.field private isInitialized:Z

.field private maxHeight:I

.field private messDigestTree:Lorg/spongycastle/crypto/Digest;

.field private seedActive:[B

.field private seedInitialized:Z

.field private seedNext:[B

.field private tailLength:I

.field private tailStack:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;ILorg/spongycastle/crypto/Digest;)V
    .locals 2
    .param p1, "tailStack"    # Ljava/util/Vector;
    .param p2, "maxHeight"    # I
    .param p3, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    .line 152
    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    .line 154
    iput-boolean v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    .line 155
    iput-boolean v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    .line 156
    iput-boolean v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    .line 157
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 159
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    .line 160
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    .line 161
    return-void
.end method


# virtual methods
.method public getStatByte()[[B
    .locals 4

    .prologue
    .line 445
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    .line 447
    .local v1, "statByte":[[B
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    aput-object v3, v1, v2

    .line 448
    const/4 v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    aput-object v3, v1, v2

    .line 449
    const/4 v2, 0x2

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    aput-object v3, v1, v2

    .line 450
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-ge v0, v2, :cond_0

    .line 452
    add-int/lit8 v3, v0, 0x3

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    aput-object v2, v1, v3

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    :cond_0
    return-object v1
.end method

.method public getStatInt()[I
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 465
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v2, v2, 0x6

    new-array v1, v2, [I

    .line 466
    .local v1, "statInt":[I
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    aput v2, v1, v4

    .line 467
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    aput v2, v1, v5

    .line 468
    const/4 v2, 0x2

    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    aput v3, v1, v2

    .line 469
    iget-boolean v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    if-eqz v2, :cond_0

    .line 471
    aput v5, v1, v6

    .line 477
    :goto_0
    iget-boolean v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    if-eqz v2, :cond_1

    .line 479
    aput v5, v1, v7

    .line 485
    :goto_1
    iget-boolean v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    if-eqz v2, :cond_2

    .line 487
    aput v5, v1, v8

    .line 493
    :goto_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-ge v0, v2, :cond_3

    .line 495
    add-int/lit8 v3, v0, 0x6

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v3

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 475
    .end local v0    # "i":I
    :cond_0
    aput v4, v1, v6

    goto :goto_0

    .line 483
    :cond_1
    aput v4, v1, v7

    goto :goto_1

    .line 491
    :cond_2
    aput v4, v1, v8

    goto :goto_2

    .line 497
    .restart local v0    # "i":I
    :cond_3
    return-object v1
.end method

.method public initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    .line 189
    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    .line 193
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public initializeSeed([B)V
    .locals 3
    .param p1, "seedIn"    # [B

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    .line 174
    return-void
.end method

.method public setFirstNode([B)V
    .locals 1
    .param p1, "hash"    # [B

    .prologue
    .line 407
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    if-nez v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->initialize()V

    .line 411
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    .line 412
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    .line 414
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 505
    const-string v1, "Treehash    : "

    .line 506
    .local v1, "out":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v2, v2, 0x6

    if-ge v0, v2, :cond_0

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_2

    .line 512
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v2

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v4

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 518
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 521
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    return-object v1
.end method
