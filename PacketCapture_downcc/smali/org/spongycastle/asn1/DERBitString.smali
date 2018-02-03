.class public Lorg/spongycastle/asn1/DERBitString;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "DERBitString.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# static fields
.field private static final table:[C


# instance fields
.field protected data:[B

.field protected padBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/asn1/DERBitString;->table:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 168
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 169
    invoke-static {p1}, Lorg/spongycastle/asn1/DERBitString;->getBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    .line 170
    invoke-static {p1}, Lorg/spongycastle/asn1/DERBitString;->getPadBits(I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/asn1/DERBitString;->padBits:I

    .line 171
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 177
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/DERBitString;->padBits:I

    .line 179
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/DERBitString;-><init>([BI)V

    .line 164
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    .prologue
    .line 155
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 156
    iput-object p1, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    .line 157
    iput p2, p0, Lorg/spongycastle/asn1/DERBitString;->padBits:I

    .line 158
    return-void
.end method

.method static fromInputStream(ILjava/io/InputStream;)Lorg/spongycastle/asn1/DERBitString;
    .locals 4
    .param p0, "length"    # I
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    const/4 v2, 0x1

    if-ge p0, v2, :cond_0

    .line 302
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "truncated BIT STRING detected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 306
    .local v1, "padBits":I
    add-int/lit8 v2, p0, -0x1

    new-array v0, v2, [B

    .line 308
    .local v0, "data":[B
    array-length v2, v0

    if-eqz v2, :cond_1

    .line 310
    invoke-static {p1, v0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    array-length v3, v0

    if-eq v2, v3, :cond_1

    .line 312
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "EOF encountered in middle of BIT STRING"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    :cond_1
    new-instance v2, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/asn1/DERBitString;-><init>([BI)V

    return-object v2
.end method

.method static fromOctetString([B)Lorg/spongycastle/asn1/DERBitString;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 281
    array-length v2, p0

    if-ge v2, v4, :cond_0

    .line 283
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "truncated BIT STRING detected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_0
    aget-byte v1, p0, v3

    .line 287
    .local v1, "padBits":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    new-array v0, v2, [B

    .line 289
    .local v0, "data":[B
    array-length v2, v0

    if-eqz v2, :cond_1

    .line 291
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    :cond_1
    new-instance v2, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/asn1/DERBitString;-><init>([BI)V

    return-object v2
.end method

.method protected static getBytes(I)[B
    .locals 5
    .param p0, "bitString"    # I

    .prologue
    .line 76
    const/4 v0, 0x4

    .line 77
    .local v0, "bytes":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    .line 79
    const/16 v3, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    and-int/2addr v3, p0

    if-eqz v3, :cond_1

    .line 86
    :cond_0
    new-array v2, v0, [B

    .line 87
    .local v2, "result":[B
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 89
    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    .end local v2    # "result":[B
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 77
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 92
    .restart local v2    # "result":[B
    :cond_2
    return-object v2
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 105
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/DERBitString;

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/DERBitString;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 110
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;
    .locals 2
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 129
    .local v0, "o":Lorg/spongycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    instance-of v1, v0, Lorg/spongycastle/asn1/DERBitString;

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    invoke-static {v0}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v1

    .line 135
    .end local v0    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    :goto_0
    return-object v1

    .restart local v0    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_1
    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    .end local v0    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/DERBitString;->fromOctetString([B)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v1

    goto :goto_0
.end method

.method protected static getPadBits(I)I
    .locals 4
    .param p0, "bitString"    # I

    .prologue
    .line 28
    const/4 v2, 0x0

    .line 29
    .local v2, "val":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 35
    if-eqz v1, :cond_1

    .line 37
    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    if-eqz v3, :cond_2

    .line 39
    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 53
    :cond_0
    :goto_1
    if-nez v2, :cond_3

    .line 55
    const/4 v3, 0x7

    .line 66
    :goto_2
    return v3

    .line 45
    :cond_1
    if-eqz p0, :cond_2

    .line 47
    and-int/lit16 v2, p0, 0xff

    .line 48
    goto :goto_1

    .line 29
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 59
    :cond_3
    const/4 v0, 0x1

    .line 61
    .local v0, "bits":I
    :goto_3
    shl-int/lit8 v2, v2, 0x1

    and-int/lit16 v3, v2, 0xff

    if-eqz v3, :cond_4

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 66
    :cond_4
    rsub-int/lit8 v3, v0, 0x8

    goto :goto_2
.end method


# virtual methods
.method protected asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 4
    .param p1, "o"    # Lorg/spongycastle/asn1/ASN1Primitive;

    .prologue
    const/4 v1, 0x0

    .line 237
    instance-of v2, p1, Lorg/spongycastle/asn1/DERBitString;

    if-nez v2, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 242
    check-cast v0, Lorg/spongycastle/asn1/DERBitString;

    .line 244
    .local v0, "other":Lorg/spongycastle/asn1/DERBitString;
    iget v2, p0, Lorg/spongycastle/asn1/DERBitString;->padBits:I

    iget v3, v0, Lorg/spongycastle/asn1/DERBitString;->padBits:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    iget-object v3, v0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 5
    .param p1, "out"    # Lorg/spongycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 221
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 223
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERBitString;->getPadBits()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 224
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 227
    return-void
.end method

.method encodedLength()I
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    return-object v0
.end method

.method public getPadBits()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lorg/spongycastle/asn1/DERBitString;->padBits:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 250
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v6, "#"

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 252
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 256
    .local v0, "aOut":Lorg/spongycastle/asn1/ASN1OutputStream;
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 265
    .local v5, "string":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v5

    if-eq v4, v6, :cond_0

    .line 267
    sget-object v6, Lorg/spongycastle/asn1/DERBitString;->table:[C

    aget-byte v7, v5, v4

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    sget-object v6, Lorg/spongycastle/asn1/DERBitString;->table:[C

    aget-byte v7, v5, v4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 265
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 258
    .end local v4    # "i":I
    .end local v5    # "string":[B
    :catch_0
    move-exception v3

    .line 260
    .local v3, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "internal error encoding BitString"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 271
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "i":I
    .restart local v5    # "string":[B
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lorg/spongycastle/asn1/DERBitString;->padBits:I

    iget-object v1, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .locals 4

    .prologue
    .line 197
    const/4 v1, 0x0

    .line 199
    .local v1, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    array-length v2, v2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 201
    iget-object v2, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return v1
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERBitString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
