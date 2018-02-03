.class public Lorg/spongycastle/asn1/DERApplicationSpecific;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "DERApplicationSpecific.java"


# instance fields
.field private final isConstructed:Z

.field private final octets:[B

.field private final tag:I


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 6
    .param p1, "tagNo"    # I
    .param p2, "vec"    # Lorg/spongycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 71
    iput p1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    .line 72
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    .line 73
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 79
    :try_start_0
    invoke-virtual {p2, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->get(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Object;

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lorg/spongycastle/asn1/ASN1ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "malformed object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 86
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    .line 87
    return-void
.end method

.method public constructor <init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 6
    .param p1, "explicit"    # Z
    .param p2, "tag"    # I
    .param p3, "object"    # Lorg/spongycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 49
    invoke-interface {p3}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 51
    .local v2, "primitive":Lorg/spongycastle/asn1/ASN1Primitive;
    const-string v4, "DER"

    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 53
    .local v0, "data":[B
    if-nez p1, :cond_0

    instance-of v4, v2, Lorg/spongycastle/asn1/ASN1Set;

    if-nez v4, :cond_0

    instance-of v4, v2, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    .line 54
    iput p2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    .line 56
    if-eqz p1, :cond_2

    .line 58
    iput-object v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    .line 67
    :goto_1
    return-void

    :cond_1
    move v4, v5

    .line 53
    goto :goto_0

    .line 62
    :cond_2
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getLengthOfHeader([B)I

    move-result v1

    .line 63
    .local v1, "lenBytes":I
    array-length v4, v0

    sub-int/2addr v4, v1

    new-array v3, v4, [B

    .line 64
    .local v3, "tmp":[B
    array-length v4, v3

    invoke-static {v0, v1, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput-object v3, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    goto :goto_1
.end method

.method constructor <init>(ZI[B)V
    .locals 0
    .param p1, "isConstructed"    # Z
    .param p2, "tag"    # I
    .param p3, "octets"    # [B

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 23
    iput-boolean p1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    .line 24
    iput p2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    .line 25
    iput-object p3, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    .line 26
    return-void
.end method

.method private getLengthOfHeader([B)I
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x2

    .line 112
    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v0, v3, 0xff

    .line 114
    .local v0, "length":I
    const/16 v3, 0x80

    if-ne v0, v3, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v2

    .line 119
    :cond_1
    const/16 v3, 0x7f

    if-le v0, v3, :cond_0

    .line 121
    and-int/lit8 v1, v0, 0x7f

    .line 124
    .local v1, "size":I
    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    .line 126
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DER length more than 4 bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :cond_2
    add-int/lit8 v2, v1, 0x2

    goto :goto_0
.end method

.method private replaceTagNumber(I[B)[B
    .locals 8
    .param p1, "newTag"    # I
    .param p2, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 231
    aget-byte v5, p2, v7

    and-int/lit8 v3, v5, 0x1f

    .line 232
    .local v3, "tagNo":I
    const/4 v1, 0x1

    .line 236
    .local v1, "index":I
    const/16 v5, 0x1f

    if-ne v3, v5, :cond_2

    .line 238
    const/4 v3, 0x0

    .line 240
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v0, v5, 0xff

    .line 244
    .local v0, "b":I
    and-int/lit8 v5, v0, 0x7f

    if-nez v5, :cond_0

    .line 246
    new-instance v5, Lorg/spongycastle/asn1/ASN1ParsingException;

    const-string v6, "corrupted stream - invalid high tag number found"

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 249
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_1

    .line 251
    and-int/lit8 v5, v0, 0x7f

    or-int/2addr v3, v5

    .line 252
    shl-int/lit8 v3, v3, 0x7

    .line 253
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v0, v5, 0xff

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 256
    :cond_1
    and-int/lit8 v5, v0, 0x7f

    or-int/2addr v3, v5

    move v1, v2

    .line 259
    .end local v0    # "b":I
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_2
    array-length v5, p2

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [B

    .line 261
    .local v4, "tmp":[B
    const/4 v5, 0x1

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    invoke-static {p2, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    int-to-byte v5, p1

    aput-byte v5, v4, v7

    .line 265
    return-object v4
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 4
    .param p1, "o"    # Lorg/spongycastle/asn1/ASN1Primitive;

    .prologue
    const/4 v1, 0x0

    .line 211
    instance-of v2, p1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    if-nez v2, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 216
    check-cast v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    .line 218
    .local v0, "other":Lorg/spongycastle/asn1/DERApplicationSpecific;
    iget-boolean v2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    iget-boolean v3, v0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    iget v3, v0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    iget-object v3, v0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 3
    .param p1, "out"    # Lorg/spongycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const/16 v0, 0x40

    .line 200
    .local v0, "classBits":I
    iget-boolean v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-eqz v1, :cond_0

    .line 202
    or-int/lit8 v0, v0, 0x20

    .line 205
    :cond_0
    iget v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    iget-object v2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-virtual {p1, v0, v1, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    .line 206
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
    .line 191
    iget v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    array-length v1, v1

    invoke-static {v1}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getApplicationTag()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    return v0
.end method

.method public getContents()[B
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    return-object v0
.end method

.method public getObject(I)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4
    .param p1, "derTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 172
    const/16 v2, 0x1f

    if-lt p1, v2, :cond_0

    .line 174
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unsupported tag number"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getEncoded()[B

    move-result-object v0

    .line 178
    .local v0, "orig":[B
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->replaceTagNumber(I[B)[B

    move-result-object v1

    .line 180
    .local v1, "tmp":[B
    aget-byte v2, v0, v3

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    .line 182
    aget-byte v2, v1, v3

    or-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 185
    :cond_1
    new-instance v2, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConstructed()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    return v0
.end method
