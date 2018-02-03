.class public Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;
.super Ljava/lang/Object;
.source "X509CertificateHolderSelector.java"

# interfaces
.implements Lorg/spongycastle/util/Selector;


# instance fields
.field private issuer:Lorg/spongycastle/asn1/x500/X500Name;

.field private serialNumber:Ljava/math/BigInteger;

.field private subjectKeyId:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V
    .locals 0
    .param p1, "issuer"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .param p3, "subjectKeyId"    # [B

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    .line 57
    iput-object p2, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    .line 58
    iput-object p3, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    .line 59
    return-void
.end method

.method private equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 150
    new-instance v0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    iget-object v1, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    iget-object v2, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;-><init>(Lorg/spongycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 96
    instance-of v2, p1, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    if-nez v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 101
    check-cast v0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    .line 103
    .local v0, "id":Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;
    iget-object v2, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    iget-object v3, v0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    iget-object v3, v0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-direct {p0, v2, v3}, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    iget-object v3, v0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-direct {p0, v2, v3}, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    .line 80
    .local v0, "code":I
    iget-object v1, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 85
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x500/X500Name;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 90
    :cond_1
    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 115
    instance-of v5, p1, Lorg/spongycastle/cert/X509CertificateHolder;

    if-eqz v5, :cond_3

    move-object v0, p1

    .line 117
    check-cast v0, Lorg/spongycastle/cert/X509CertificateHolder;

    .line 119
    .local v0, "certHldr":Lorg/spongycastle/cert/X509CertificateHolder;
    invoke-virtual {p0}, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 121
    new-instance v2, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {v0}, Lorg/spongycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    .line 123
    .local v2, "iAndS":Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v5, v6}, Lorg/spongycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 145
    .end local v0    # "certHldr":Lorg/spongycastle/cert/X509CertificateHolder;
    .end local v2    # "iAndS":Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 126
    .restart local v0    # "certHldr":Lorg/spongycastle/cert/X509CertificateHolder;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    iget-object v5, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    if-eqz v5, :cond_0

    .line 128
    sget-object v4, Lorg/spongycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/spongycastle/cert/X509CertificateHolder;->getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v1

    .line 130
    .local v1, "ext":Lorg/spongycastle/asn1/x509/Extension;
    if-nez v1, :cond_2

    .line 132
    iget-object v4, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-virtual {v0}, Lorg/spongycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator;->calculateKeyId(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Extension;->getParsedValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    .line 137
    .local v3, "subKeyID":[B
    iget-object v4, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-static {v4, v3}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    goto :goto_0

    .line 140
    .end local v0    # "certHldr":Lorg/spongycastle/cert/X509CertificateHolder;
    .end local v1    # "ext":Lorg/spongycastle/asn1/x509/Extension;
    .end local v3    # "subKeyID":[B
    :cond_3
    instance-of v5, p1, [B

    if-eqz v5, :cond_0

    .line 142
    iget-object v4, p0, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-static {v4, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    goto :goto_0
.end method
