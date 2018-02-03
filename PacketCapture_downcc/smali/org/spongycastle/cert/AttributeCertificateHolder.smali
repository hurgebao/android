.class public Lorg/spongycastle/cert/AttributeCertificateHolder;
.super Ljava/lang/Object;
.source "AttributeCertificateHolder.java"

# interfaces
.implements Lorg/spongycastle/util/Selector;


# static fields
.field private static digestCalculatorProvider:Lorg/spongycastle/operator/DigestCalculatorProvider;


# instance fields
.field final holder:Lorg/spongycastle/asn1/x509/Holder;


# direct methods
.method constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lorg/spongycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Holder;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cert/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    .line 54
    return-void
.end method

.method private matchesDN(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/GeneralNames;)Z
    .locals 5
    .param p1, "subject"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p2, "targets"    # Lorg/spongycastle/asn1/x509/GeneralNames;

    .prologue
    .line 180
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 182
    .local v2, "names":[Lorg/spongycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-eq v1, v3, :cond_1

    .line 184
    aget-object v0, v2, v1

    .line 186
    .local v0, "gn":Lorg/spongycastle/asn1/x509/GeneralName;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 188
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/spongycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    const/4 v3, 0x1

    .line 195
    .end local v0    # "gn":Lorg/spongycastle/asn1/x509/GeneralName;
    :goto_1
    return v3

    .line 182
    .restart local v0    # "gn":Lorg/spongycastle/asn1/x509/GeneralName;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "gn":Lorg/spongycastle/asn1/x509/GeneralName;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 264
    new-instance v1, Lorg/spongycastle/cert/AttributeCertificateHolder;

    iget-object v0, p0, Lorg/spongycastle/cert/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/cert/AttributeCertificateHolder;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 327
    if-ne p1, p0, :cond_0

    .line 329
    const/4 v1, 0x1

    .line 339
    :goto_0
    return v1

    .line 332
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/cert/AttributeCertificateHolder;

    if-nez v1, :cond_1

    .line 334
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 337
    check-cast v0, Lorg/spongycastle/cert/AttributeCertificateHolder;

    .line 339
    .local v0, "other":Lorg/spongycastle/cert/AttributeCertificateHolder;
    iget-object v1, p0, Lorg/spongycastle/cert/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    iget-object v2, v0, Lorg/spongycastle/cert/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/x509/Holder;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDigestedObjectType()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/spongycastle/cert/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/spongycastle/cert/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->getDigestedObjectType()Lorg/spongycastle/asn1/ASN1Enumerated;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getObjectDigest()[B
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/spongycastle/cert/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/spongycastle/cert/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->getObjectDigest()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/spongycastle/cert/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 269
    instance-of v6, p1, Lorg/spongycastle/cert/X509CertificateHolder;

    if-nez v6, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v3, p1

    .line 274
    check-cast v3, Lorg/spongycastle/cert/X509CertificateHolder;

    .line 276
    .local v3, "x509Cert":Lorg/spongycastle/cert/X509CertificateHolder;
    iget-object v6, p0, Lorg/spongycastle/cert/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 278
    iget-object v6, p0, Lorg/spongycastle/cert/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/IssuerSerial;->getSerial()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3}, Lorg/spongycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lorg/spongycastle/cert/X509CertificateHolder;->getIssuer()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v6

    iget-object v7, p0, Lorg/spongycastle/cert/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/IssuerSerial;->getIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lorg/spongycastle/cert/AttributeCertificateHolder;->matchesDN(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/GeneralNames;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 282
    :cond_3
    iget-object v6, p0, Lorg/spongycastle/cert/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/Holder;->getEntityName()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 284
    invoke-virtual {v3}, Lorg/spongycastle/cert/X509CertificateHolder;->getSubject()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v6

    iget-object v7, p0, Lorg/spongycastle/cert/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/Holder;->getEntityName()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lorg/spongycastle/cert/AttributeCertificateHolder;->matchesDN(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/GeneralNames;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v5, v4

    .line 287
    goto :goto_0

    .line 291
    :cond_4
    iget-object v4, p0, Lorg/spongycastle/cert/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 295
    :try_start_0
    sget-object v4, Lorg/spongycastle/cert/AttributeCertificateHolder;->digestCalculatorProvider:Lorg/spongycastle/operator/DigestCalculatorProvider;

    iget-object v6, p0, Lorg/spongycastle/cert/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/spongycastle/operator/DigestCalculatorProvider;->get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/DigestCalculator;

    move-result-object v0

    .line 296
    .local v0, "digCalc":Lorg/spongycastle/operator/DigestCalculator;
    invoke-interface {v0}, Lorg/spongycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 298
    .local v1, "digOut":Ljava/io/OutputStream;
    invoke-virtual {p0}, Lorg/spongycastle/cert/AttributeCertificateHolder;->getDigestedObjectType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 309
    :goto_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 311
    invoke-interface {v0}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v4

    invoke-virtual {p0}, Lorg/spongycastle/cert/AttributeCertificateHolder;->getObjectDigest()[B

    move-result-object v6

    invoke-static {v4, v6}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 302
    :pswitch_0
    invoke-virtual {v3}, Lorg/spongycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    .line 316
    .end local v0    # "digCalc":Lorg/spongycastle/operator/DigestCalculator;
    .end local v1    # "digOut":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 305
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "digCalc":Lorg/spongycastle/operator/DigestCalculator;
    .restart local v1    # "digOut":Ljava/io/OutputStream;
    :pswitch_1
    invoke-virtual {v3}, Lorg/spongycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
