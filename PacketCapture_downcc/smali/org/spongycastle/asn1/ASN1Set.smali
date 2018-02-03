.class public abstract Lorg/spongycastle/asn1/ASN1Set;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "ASN1Set.java"


# instance fields
.field private isSorted:Z

.field private set:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->isSorted:Z

    .line 223
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 231
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->isSorted:Z

    .line 232
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;Z)V
    .locals 3
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;
    .param p2, "doSort"    # Z

    .prologue
    .line 243
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 98
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/spongycastle/asn1/ASN1Set;->isSorted:Z

    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 246
    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->get(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_0
    if-eqz p2, :cond_1

    .line 251
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->sort()V

    .line 253
    :cond_1
    return-void
.end method

.method protected constructor <init>([Lorg/spongycastle/asn1/ASN1Encodable;Z)V
    .locals 3
    .param p1, "array"    # [Lorg/spongycastle/asn1/ASN1Encodable;
    .param p2, "doSort"    # Z

    .prologue
    .line 261
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 98
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/spongycastle/asn1/ASN1Set;->isSorted:Z

    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 264
    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    if-eqz p2, :cond_1

    .line 269
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->sort()V

    .line 271
    :cond_1
    return-void
.end method

.method private getEncoded(Lorg/spongycastle/asn1/ASN1Encodable;)[B
    .locals 5
    .param p1, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 487
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 488
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 492
    .local v0, "aOut":Lorg/spongycastle/asn1/ASN1OutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 494
    :catch_0
    move-exception v2

    .line 496
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "cannot encode object added to SET"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 111
    if-eqz p0, :cond_0

    instance-of v2, p0, Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v2, :cond_1

    .line 113
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/ASN1Set;

    .end local p0    # "obj":Ljava/lang/Object;
    move-object v1, p0

    .line 136
    .restart local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 115
    :cond_1
    instance-of v2, p0, Lorg/spongycastle/asn1/ASN1SetParser;

    if-eqz v2, :cond_2

    .line 117
    check-cast p0, Lorg/spongycastle/asn1/ASN1SetParser;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Lorg/spongycastle/asn1/ASN1SetParser;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v1

    goto :goto_0

    .line 119
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, [B

    if-eqz v2, :cond_3

    .line 123
    :try_start_0
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct set from byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v2, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_4

    move-object v2, p0

    .line 132
    check-cast v2, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 134
    .local v1, "primitive":Lorg/spongycastle/asn1/ASN1Primitive;
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v2, :cond_4

    .line 136
    check-cast v1, Lorg/spongycastle/asn1/ASN1Set;

    goto :goto_0

    .line 140
    .end local v1    # "primitive":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown object in getInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;
    .locals 4
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 164
    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "object implicit - explicit expected."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Set;

    .line 212
    :goto_0
    return-object v1

    .line 180
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    instance-of v1, p0, Lorg/spongycastle/asn1/BERTaggedObject;

    if-eqz v1, :cond_2

    .line 184
    new-instance v1, Lorg/spongycastle/asn1/BERSet;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/BERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 188
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DLSet;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DLSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v1, v1, Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_4

    .line 195
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Set;

    goto :goto_0

    .line 202
    :cond_4
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v1, v1, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_6

    .line 204
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 206
    .local v0, "s":Lorg/spongycastle/asn1/ASN1Sequence;
    instance-of v1, p0, Lorg/spongycastle/asn1/BERTaggedObject;

    if-eqz v1, :cond_5

    .line 208
    new-instance v1, Lorg/spongycastle/asn1/BERSet;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->toArray()[Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/BERSet;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 212
    :cond_5
    new-instance v1, Lorg/spongycastle/asn1/DLSet;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->toArray()[Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DLSet;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 218
    .end local v0    # "s":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown object in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "e"    # Ljava/util/Enumeration;

    .prologue
    .line 455
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    .line 458
    .local v0, "encObj":Lorg/spongycastle/asn1/ASN1Encodable;
    if-nez v0, :cond_0

    .line 460
    sget-object v0, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    .line 463
    .end local v0    # "encObj":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_0
    return-object v0
.end method

.method private lessThanOrEqual([B[B)Z
    .locals 6
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 473
    array-length v4, p1

    array-length v5, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 474
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, v1, :cond_3

    .line 476
    aget-byte v4, p1, v0

    aget-byte v5, p2, v0

    if-eq v4, v5, :cond_2

    .line 478
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p2, v0

    and-int/lit16 v5, v5, 0xff

    if-ge v4, v5, :cond_1

    .line 481
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v2, v3

    .line 478
    goto :goto_1

    .line 474
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_3
    array-length v4, p1

    if-eq v1, v4, :cond_0

    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 10
    .param p1, "o"    # Lorg/spongycastle/asn1/ASN1Primitive;

    .prologue
    const/4 v7, 0x0

    .line 419
    instance-of v8, p1, Lorg/spongycastle/asn1/ASN1Set;

    if-nez v8, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v7

    :cond_1
    move-object v4, p1

    .line 424
    check-cast v4, Lorg/spongycastle/asn1/ASN1Set;

    .line 426
    .local v4, "other":Lorg/spongycastle/asn1/ASN1Set;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v8

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 431
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 432
    .local v5, "s1":Ljava/util/Enumeration;
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .line 434
    .local v6, "s2":Ljava/util/Enumeration;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 436
    invoke-direct {p0, v5}, Lorg/spongycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 437
    .local v2, "obj1":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-direct {p0, v6}, Lorg/spongycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 439
    .local v3, "obj2":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 440
    .local v0, "o1":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-interface {v3}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 442
    .local v1, "o2":Lorg/spongycastle/asn1/ASN1Primitive;
    if-eq v0, v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 450
    .end local v0    # "o1":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v1    # "o2":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v2    # "obj1":Lorg/spongycastle/asn1/ASN1Encodable;
    .end local v3    # "obj2":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_3
    const/4 v7, 0x1

    goto :goto_0
.end method

.method abstract encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 356
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 357
    .local v0, "e":Ljava/util/Enumeration;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v1

    .line 359
    .local v1, "hashCode":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 362
    .local v2, "o":Lorg/spongycastle/asn1/ASN1Encodable;
    mul-int/lit8 v1, v1, 0x11

    .line 364
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    .line 365
    goto :goto_0

    .line 367
    .end local v2    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_0
    return v1
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected sort()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 504
    iget-boolean v7, p0, Lorg/spongycastle/asn1/ASN1Set;->isSorted:Z

    if-nez v7, :cond_2

    .line 506
    iput-boolean v8, p0, Lorg/spongycastle/asn1/ASN1Set;->isSorted:Z

    .line 507
    iget-object v7, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-le v7, v8, :cond_2

    .line 509
    const/4 v6, 0x1

    .line 510
    .local v6, "swapped":Z
    iget-object v7, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 512
    .local v3, "lastSwap":I
    :goto_0
    if-eqz v6, :cond_2

    .line 514
    const/4 v2, 0x0

    .line 515
    .local v2, "index":I
    const/4 v5, 0x0

    .line 516
    .local v5, "swapIndex":I
    iget-object v7, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {p0, v7}, Lorg/spongycastle/asn1/ASN1Set;->getEncoded(Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    .line 518
    .local v0, "a":[B
    const/4 v6, 0x0

    .line 520
    :goto_1
    if-eq v2, v3, :cond_1

    .line 522
    iget-object v7, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {p0, v7}, Lorg/spongycastle/asn1/ASN1Set;->getEncoded(Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    .line 524
    .local v1, "b":[B
    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 526
    move-object v0, v1

    .line 539
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 540
    goto :goto_1

    .line 530
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 532
    .local v4, "o":Ljava/lang/Object;
    iget-object v7, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    iget-object v8, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 533
    iget-object v7, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v4, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 535
    const/4 v6, 0x1

    .line 536
    move v5, v2

    goto :goto_2

    .line 542
    .end local v1    # "b":[B
    .end local v4    # "o":Ljava/lang/Object;
    :cond_1
    move v3, v5

    .line 543
    goto :goto_0

    .line 546
    .end local v0    # "a":[B
    .end local v2    # "index":I
    .end local v3    # "lastSwap":I
    .end local v5    # "swapIndex":I
    .end local v6    # "swapped":Z
    :cond_2
    return-void
.end method

.method toDERObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 376
    iget-boolean v3, p0, Lorg/spongycastle/asn1/ASN1Set;->isSorted:Z

    if-eqz v3, :cond_0

    .line 378
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v0}, Lorg/spongycastle/asn1/DERSet;-><init>()V

    .line 380
    .local v0, "derSet":Lorg/spongycastle/asn1/ASN1Set;
    iget-object v3, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    iput-object v3, v0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 399
    :goto_0
    return-object v0

    .line 386
    .end local v0    # "derSet":Lorg/spongycastle/asn1/ASN1Set;
    :cond_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 388
    .local v2, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 390
    iget-object v3, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 393
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v0}, Lorg/spongycastle/asn1/DERSet;-><init>()V

    .line 395
    .restart local v0    # "derSet":Lorg/spongycastle/asn1/ASN1Set;
    iput-object v2, v0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 397
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->sort()V

    goto :goto_0
.end method

.method toDLObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 409
    new-instance v0, Lorg/spongycastle/asn1/DLSet;

    invoke-direct {v0}, Lorg/spongycastle/asn1/DLSet;-><init>()V

    .line 411
    .local v0, "derSet":Lorg/spongycastle/asn1/ASN1Set;
    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    iput-object v1, v0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 413
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
