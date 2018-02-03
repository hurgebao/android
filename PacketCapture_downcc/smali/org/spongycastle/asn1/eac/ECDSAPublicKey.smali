.class public Lorg/spongycastle/asn1/eac/ECDSAPublicKey;
.super Lorg/spongycastle/asn1/eac/PublicKeyDataObject;
.source "ECDSAPublicKey.java"


# instance fields
.field private basePointG:[B

.field private cofactorF:Ljava/math/BigInteger;

.field private firstCoefA:Ljava/math/BigInteger;

.field private options:I

.field private orderOfBasePointR:Ljava/math/BigInteger;

.field private primeModulusP:Ljava/math/BigInteger;

.field private publicPointY:[B

.field private secondCoefB:Ljava/math/BigInteger;

.field private usage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# virtual methods
.method public getASN1EncodableVector(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Z)Lorg/spongycastle/asn1/ASN1EncodableVector;
    .locals 6
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "publicPointOnly"    # Z

    .prologue
    const/4 v5, 0x0

    .line 316
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 317
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 319
    if-nez p2, :cond_0

    .line 321
    new-instance v1, Lorg/spongycastle/asn1/eac/UnsignedInteger;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->getPrimeModulusP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 322
    new-instance v1, Lorg/spongycastle/asn1/eac/UnsignedInteger;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->getFirstCoefA()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 323
    new-instance v1, Lorg/spongycastle/asn1/eac/UnsignedInteger;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->getSecondCoefB()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 324
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x4

    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->getBasePointG()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v5, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 325
    new-instance v1, Lorg/spongycastle/asn1/eac/UnsignedInteger;

    const/4 v2, 0x5

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->getOrderOfBasePointR()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 327
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x6

    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->getPublicPointY()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v5, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 328
    if-nez p2, :cond_1

    .line 330
    new-instance v1, Lorg/spongycastle/asn1/eac/UnsignedInteger;

    const/4 v2, 0x7

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->getCofactorF()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 333
    :cond_1
    return-object v0
.end method

.method public getBasePointG()[B
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->basePointG:[B

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCofactorF()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->cofactorF:Ljava/math/BigInteger;

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstCoefA()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->firstCoefA:Ljava/math/BigInteger;

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrderOfBasePointR()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->orderOfBasePointR:Ljava/math/BigInteger;

    .line 214
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrimeModulusP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->primeModulusP:Ljava/math/BigInteger;

    .line 240
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPublicPointY()[B
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->publicPointY:[B

    .line 265
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondCoefB()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->secondCoefB:Ljava/math/BigInteger;

    .line 291
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 338
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->usage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->getASN1EncodableVector(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Z)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
