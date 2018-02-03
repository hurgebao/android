.class public Lorg/spongycastle/asn1/DERExternal;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "DERExternal.java"


# instance fields
.field private dataValueDescriptor:Lorg/spongycastle/asn1/ASN1Primitive;

.field private directReference:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private encoding:I

.field private externalContent:Lorg/spongycastle/asn1/ASN1Primitive;

.field private indirectReference:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 5
    .param p1, "vector"    # Lorg/spongycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 20
    const/4 v2, 0x0

    .line 22
    .local v2, "offset":I
    invoke-direct {p0, p1, v2}, Lorg/spongycastle/asn1/DERExternal;->getObjFromVector(Lorg/spongycastle/asn1/ASN1EncodableVector;I)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 23
    .local v0, "enc":Lorg/spongycastle/asn1/ASN1Primitive;
    instance-of v3, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v3, :cond_0

    .line 25
    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v0    # "enc":Lorg/spongycastle/asn1/ASN1Primitive;
    iput-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->directReference:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    invoke-direct {p0, p1, v2}, Lorg/spongycastle/asn1/DERExternal;->getObjFromVector(Lorg/spongycastle/asn1/ASN1EncodableVector;I)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 29
    .restart local v0    # "enc":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_0
    instance-of v3, v0, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_1

    .line 31
    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    .end local v0    # "enc":Lorg/spongycastle/asn1/ASN1Primitive;
    iput-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->indirectReference:Lorg/spongycastle/asn1/ASN1Integer;

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    invoke-direct {p0, p1, v2}, Lorg/spongycastle/asn1/DERExternal;->getObjFromVector(Lorg/spongycastle/asn1/ASN1EncodableVector;I)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 35
    .restart local v0    # "enc":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_1
    instance-of v3, v0, Lorg/spongycastle/asn1/DERTaggedObject;

    if-nez v3, :cond_2

    .line 37
    iput-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    invoke-direct {p0, p1, v2}, Lorg/spongycastle/asn1/DERExternal;->getObjFromVector(Lorg/spongycastle/asn1/ASN1EncodableVector;I)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 42
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    if-eq v3, v4, :cond_3

    .line 44
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "input vector too large"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_3
    instance-of v3, v0, Lorg/spongycastle/asn1/DERTaggedObject;

    if-nez v3, :cond_4

    .line 49
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    move-object v1, v0

    .line 51
    check-cast v1, Lorg/spongycastle/asn1/DERTaggedObject;

    .line 52
    .local v1, "obj":Lorg/spongycastle/asn1/DERTaggedObject;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/spongycastle/asn1/DERExternal;->setEncoding(I)V

    .line 53
    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERTaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/DERExternal;->externalContent:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 54
    return-void
.end method

.method private getObjFromVector(Lorg/spongycastle/asn1/ASN1EncodableVector;I)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;
    .param p2, "index"    # I

    .prologue
    .line 58
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few objects in input vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-virtual {p1, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->get(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method private setEncoding(I)V
    .locals 3
    .param p1, "encoding"    # I

    .prologue
    .line 270
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_1
    iput p1, p0, Lorg/spongycastle/asn1/DERExternal;->encoding:I

    .line 275
    return-void
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 4
    .param p1, "o"    # Lorg/spongycastle/asn1/ASN1Primitive;

    .prologue
    const/4 v1, 0x0

    .line 158
    instance-of v2, p1, Lorg/spongycastle/asn1/DERExternal;

    if-nez v2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 162
    :cond_1
    if-ne p0, p1, :cond_2

    .line 164
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 166
    check-cast v0, Lorg/spongycastle/asn1/DERExternal;

    .line 167
    .local v0, "other":Lorg/spongycastle/asn1/DERExternal;
    iget-object v2, p0, Lorg/spongycastle/asn1/DERExternal;->directReference:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_3

    .line 169
    iget-object v2, v0, Lorg/spongycastle/asn1/DERExternal;->directReference:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/spongycastle/asn1/DERExternal;->directReference:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v3, p0, Lorg/spongycastle/asn1/DERExternal;->directReference:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    :cond_3
    iget-object v2, p0, Lorg/spongycastle/asn1/DERExternal;->indirectReference:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_4

    .line 176
    iget-object v2, v0, Lorg/spongycastle/asn1/DERExternal;->indirectReference:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/spongycastle/asn1/DERExternal;->indirectReference:Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lorg/spongycastle/asn1/DERExternal;->indirectReference:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    :cond_4
    iget-object v2, p0, Lorg/spongycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz v2, :cond_5

    .line 183
    iget-object v2, v0, Lorg/spongycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/spongycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/spongycastle/asn1/ASN1Primitive;

    iget-object v3, p0, Lorg/spongycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    :cond_5
    iget-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->externalContent:Lorg/spongycastle/asn1/ASN1Primitive;

    iget-object v2, v0, Lorg/spongycastle/asn1/DERExternal;->externalContent:Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v1

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
    .line 135
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lorg/spongycastle/asn1/DERExternal;->directReference:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lorg/spongycastle/asn1/DERExternal;->directReference:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 140
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/asn1/DERExternal;->indirectReference:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lorg/spongycastle/asn1/DERExternal;->indirectReference:Lorg/spongycastle/asn1/ASN1Integer;

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 144
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz v2, :cond_2

    .line 146
    iget-object v2, p0, Lorg/spongycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/spongycastle/asn1/ASN1Primitive;

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 148
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget v3, p0, Lorg/spongycastle/asn1/DERExternal;->encoding:I

    iget-object v4, p0, Lorg/spongycastle/asn1/DERExternal;->externalContent:Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    .local v1, "obj":Lorg/spongycastle/asn1/DERTaggedObject;
    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/DERTaggedObject;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 150
    const/16 v2, 0x20

    const/16 v3, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    .line 151
    return-void
.end method

.method encodedLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERExternal;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getDataValueDescriptor()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/spongycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public getDirectReference()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->directReference:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getEncoding()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lorg/spongycastle/asn1/DERExternal;->encoding:I

    return v0
.end method

.method public getExternalContent()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->externalContent:Lorg/spongycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public getIndirectReference()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->indirectReference:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "ret":I
    iget-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->directReference:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->directReference:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v0

    .line 106
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->indirectReference:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->indirectReference:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Integer;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 110
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 114
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->externalContent:Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 115
    return v0
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method
