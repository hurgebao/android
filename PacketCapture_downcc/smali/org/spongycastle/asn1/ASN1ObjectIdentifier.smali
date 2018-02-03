.class public Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "ASN1ObjectIdentifier.java"


# static fields
.field private static cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private body:[B

.field identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 405
    const/16 v0, 0x100

    new-array v0, v0, [[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 167
    if-nez p1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'identifier\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not an OID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    .line 177
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 3
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "branchID"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 187
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->isValidBranchID(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not a valid OID branch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    .line 193
    return-void
.end method

.method constructor <init>([B)V
    .locals 10
    .param p1, "bytes"    # [B

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 85
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v4, "objId":Ljava/lang/StringBuffer;
    const-wide/16 v6, 0x0

    .line 87
    .local v6, "value":J
    const/4 v1, 0x0

    .line 88
    .local v1, "bigValue":Ljava/math/BigInteger;
    const/4 v2, 0x1

    .line 90
    .local v2, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p1

    if-eq v3, v5, :cond_8

    .line 92
    aget-byte v5, p1, v3

    and-int/lit16 v0, v5, 0xff

    .line 94
    .local v0, "b":I
    const-wide v8, 0xffffffffffff80L

    cmp-long v5, v6, v8

    if-gtz v5, :cond_4

    .line 96
    and-int/lit8 v5, v0, 0x7f

    int-to-long v8, v5

    add-long/2addr v6, v8

    .line 97
    and-int/lit16 v5, v0, 0x80

    if-nez v5, :cond_3

    .line 99
    if-eqz v2, :cond_0

    .line 101
    const-wide/16 v8, 0x28

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 103
    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    :goto_1
    const/4 v2, 0x0

    .line 118
    :cond_0
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 120
    const-wide/16 v6, 0x0

    .line 90
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_1
    const-wide/16 v8, 0x50

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 107
    const/16 v5, 0x31

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 108
    const-wide/16 v8, 0x28

    sub-long/2addr v6, v8

    goto :goto_1

    .line 112
    :cond_2
    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    const-wide/16 v8, 0x50

    sub-long/2addr v6, v8

    goto :goto_1

    .line 124
    :cond_3
    const/4 v5, 0x7

    shl-long/2addr v6, v5

    goto :goto_2

    .line 129
    :cond_4
    if-nez v1, :cond_5

    .line 131
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 133
    :cond_5
    and-int/lit8 v5, v0, 0x7f

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 134
    and-int/lit16 v5, v0, 0x80

    if-nez v5, :cond_7

    .line 136
    if-eqz v2, :cond_6

    .line 138
    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 139
    const-wide/16 v8, 0x50

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 140
    const/4 v2, 0x0

    .line 143
    :cond_6
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 145
    const/4 v1, 0x0

    .line 146
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 150
    :cond_7
    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_2

    .line 155
    .end local v0    # "b":I
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    .line 156
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->body:[B

    .line 157
    return-void
.end method

.method private doOutput(Ljava/io/ByteArrayOutputStream;)V
    .locals 9
    .param p1, "aOut"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/16 v8, 0x12

    .line 268
    new-instance v2, Lorg/spongycastle/asn1/OIDTokenizer;

    iget-object v4, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/spongycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    .line 269
    .local v2, "tok":Lorg/spongycastle/asn1/OIDTokenizer;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v0, v4, 0x28

    .line 271
    .local v0, "first":I
    invoke-virtual {v2}, Lorg/spongycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "secondToken":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v8, :cond_0

    .line 274
    int-to-long v4, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {p0, p1, v4, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    .line 281
    :goto_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    invoke-virtual {v2}, Lorg/spongycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v8, :cond_1

    .line 286
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_0

    .line 278
    .end local v3    # "token":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 290
    .restart local v3    # "token":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 293
    .end local v3    # "token":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static fromOctetString([B)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 7
    .param p0, "enc"    # [B

    .prologue
    .line 409
    array-length v4, p0

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 411
    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    .line 470
    :cond_0
    :goto_0
    return-object v3

    .line 414
    :cond_1
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 416
    .local v1, "idx1":I
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p0, v4

    and-int/lit8 v2, v4, 0x7f

    .line 420
    .local v2, "idx2":I
    sget-object v5, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    monitor-enter v5

    .line 422
    :try_start_0
    sget-object v4, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aget-object v0, v4, v1

    .line 423
    .local v0, "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_2

    .line 425
    sget-object v4, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/16 v6, 0x80

    new-array v0, v6, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v0    # "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    aput-object v0, v4, v1

    .line 428
    .restart local v0    # "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_2
    aget-object v3, v0, v2

    .line 429
    .local v3, "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    if-nez v3, :cond_3

    .line 431
    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-direct {v3, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    aput-object v3, v0, v2

    monitor-exit v5

    goto :goto_0

    .line 463
    .end local v0    # "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 434
    .restart local v0    # "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .restart local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v4

    invoke-static {p0, v4}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 436
    monitor-exit v5

    goto :goto_0

    .line 439
    :cond_4
    add-int/lit8 v4, v1, 0x1

    and-int/lit16 v1, v4, 0xff

    .line 440
    sget-object v4, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aget-object v0, v4, v1

    .line 441
    if-nez v0, :cond_5

    .line 443
    sget-object v4, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/16 v6, 0x80

    new-array v0, v6, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v0    # "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    aput-object v0, v4, v1

    .line 446
    .restart local v0    # "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_5
    aget-object v3, v0, v2

    .line 447
    if-nez v3, :cond_6

    .line 449
    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-direct {v3, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    aput-object v3, v0, v2

    monitor-exit v5

    goto :goto_0

    .line 452
    .restart local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_6
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v4

    invoke-static {p0, v4}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 454
    monitor-exit v5

    goto :goto_0

    .line 457
    :cond_7
    add-int/lit8 v4, v2, 0x1

    and-int/lit8 v2, v4, 0x7f

    .line 458
    aget-object v3, v0, v2

    .line 459
    if-nez v3, :cond_8

    .line 461
    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-direct {v3, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    aput-object v3, v0, v2

    monitor-exit v5

    goto :goto_0

    .line 463
    .restart local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_8
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v4

    invoke-static {p0, v4}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 470
    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-direct {v3, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    goto/16 :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 28
    if-eqz p0, :cond_0

    instance-of v2, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_1

    .line 30
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local p0    # "obj":Ljava/lang/Object;
    move-object v2, p0

    .line 43
    .local v1, "enc":[B
    :goto_0
    return-object v2

    .line 33
    .end local v1    # "enc":[B
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_2

    .line 35
    check-cast p0, Lorg/spongycastle/asn1/ASN1Encodable;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 38
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, [B

    if-eqz v2, :cond_3

    .line 40
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    move-object v1, p0

    check-cast v1, [B

    .line 43
    .restart local v1    # "enc":[B
    :try_start_0
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct object identifier from byte[]: "

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

    .line 51
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "enc":[B
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal object in getInstance: "

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

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 70
    .local v0, "o":Lorg/spongycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 76
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    goto :goto_0
.end method

.method private static isValidBranchID(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "branchID"    # Ljava/lang/String;
    .param p1, "start"    # I

    .prologue
    const/4 v3, 0x0

    .line 357
    const/4 v1, 0x0

    .line 359
    .local v1, "periodAllowed":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 360
    .local v2, "pos":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-lt v2, p1, :cond_1

    .line 362
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 365
    .local v0, "ch":C
    const/16 v4, 0x30

    if-gt v4, v0, :cond_0

    const/16 v4, 0x39

    if-gt v0, v4, :cond_0

    .line 367
    const/4 v1, 0x1

    .line 368
    goto :goto_0

    .line 371
    :cond_0
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_3

    .line 373
    if-nez v1, :cond_2

    move v1, v3

    .line 385
    .end local v0    # "ch":C
    .end local v1    # "periodAllowed":Z
    :cond_1
    :goto_1
    return v1

    .line 378
    .restart local v0    # "ch":C
    .restart local v1    # "periodAllowed":Z
    :cond_2
    const/4 v1, 0x0

    .line 379
    goto :goto_0

    :cond_3
    move v1, v3

    .line 382
    goto :goto_1
.end method

.method private static isValidIdentifier(Ljava/lang/String;)Z
    .locals 4
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 391
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v1

    .line 396
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 397
    .local v0, "first":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x32

    if-gt v0, v2, :cond_0

    .line 402
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->isValidBranchID(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0
.end method

.method private writeField(Ljava/io/ByteArrayOutputStream;J)V
    .locals 4
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "fieldValue"    # J

    .prologue
    .line 232
    const/16 v2, 0x9

    new-array v1, v2, [B

    .line 233
    .local v1, "result":[B
    const/16 v0, 0x8

    .line 234
    .local v0, "pos":I
    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 235
    :goto_0
    const-wide/16 v2, 0x80

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    .line 237
    const/4 v2, 0x7

    shr-long/2addr p2, v2

    .line 238
    add-int/lit8 v0, v0, -0x1

    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_0

    .line 240
    :cond_0
    rsub-int/lit8 v2, v0, 0x9

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 241
    return-void
.end method

.method private writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .locals 7
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "fieldValue"    # Ljava/math/BigInteger;

    .prologue
    const/4 v6, 0x0

    .line 247
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    div-int/lit8 v0, v4, 0x7

    .line 248
    .local v0, "byteCount":I
    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 264
    :goto_0
    return-void

    .line 254
    :cond_0
    move-object v3, p2

    .line 255
    .local v3, "tmpValue":Ljava/math/BigInteger;
    new-array v2, v0, [B

    .line 256
    .local v2, "tmp":[B
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 258
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 259
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 256
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 261
    :cond_1
    add-int/lit8 v4, v0, -0x1

    aget-byte v5, v2, v4

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 262
    array-length v4, v2

    invoke-virtual {p1, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 2
    .param p1, "o"    # Lorg/spongycastle/asn1/ASN1Primitive;

    .prologue
    .line 341
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 346
    .end local p1    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    :goto_0
    return v0

    .restart local p1    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    check-cast p1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local p1    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    iget-object v1, p1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p1, "branchID"    # Ljava/lang/String;

    .prologue
    .line 213
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    return-object v0
.end method

.method encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .param p1, "out"    # Lorg/spongycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v0

    .line 328
    .local v0, "enc":[B
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 329
    array-length v1, v0

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 330
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write([B)V

    .line 331
    return-void
.end method

.method encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v1

    array-length v0, v1

    .line 319
    .local v0, "length":I
    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method protected declared-synchronized getBody()[B
    .locals 2

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->body:[B

    if-nez v1, :cond_0

    .line 299
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 301
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->doOutput(Ljava/io/ByteArrayOutputStream;)V

    .line 303
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->body:[B

    .line 306
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->body:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public on(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 4
    .param p1, "stem"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 224
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "stemId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
