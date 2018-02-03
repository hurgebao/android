.class public Lorg/spongycastle/cert/AttributeCertificateIssuer;
.super Ljava/lang/Object;
.source "AttributeCertificateIssuer.java"

# interfaces
.implements Lorg/spongycastle/util/Selector;


# instance fields
.field final form:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/AttCertIssuer;)V
    .locals 1
    .param p1, "issuer"    # Lorg/spongycastle/asn1/x509/AttCertIssuer;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AttCertIssuer;->getIssuer()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cert/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 30
    return-void
.end method

.method private matchesDN(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/GeneralNames;)Z
    .locals 5
    .param p1, "subject"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p2, "targets"    # Lorg/spongycastle/asn1/x509/GeneralNames;

    .prologue
    .line 67
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 69
    .local v2, "names":[Lorg/spongycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-eq v1, v3, :cond_1

    .line 71
    aget-object v0, v2, v1

    .line 73
    .local v0, "gn":Lorg/spongycastle/asn1/x509/GeneralName;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 75
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/spongycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    const/4 v3, 0x1

    .line 82
    .end local v0    # "gn":Lorg/spongycastle/asn1/x509/GeneralName;
    :goto_1
    return v3

    .line 69
    .restart local v0    # "gn":Lorg/spongycastle/asn1/x509/GeneralName;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "gn":Lorg/spongycastle/asn1/x509/GeneralName;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lorg/spongycastle/cert/AttributeCertificateIssuer;

    iget-object v1, p0, Lorg/spongycastle/cert/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/AttributeCertificateIssuer;-><init>(Lorg/spongycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 92
    if-ne p1, p0, :cond_0

    .line 94
    const/4 v1, 0x1

    .line 104
    :goto_0
    return v1

    .line 97
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/cert/AttributeCertificateIssuer;

    if-nez v1, :cond_1

    .line 99
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 102
    check-cast v0, Lorg/spongycastle/cert/AttributeCertificateIssuer;

    .line 104
    .local v0, "other":Lorg/spongycastle/cert/AttributeCertificateIssuer;
    iget-object v1, p0, Lorg/spongycastle/cert/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    iget-object v2, v0, Lorg/spongycastle/cert/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/spongycastle/cert/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 114
    instance-of v5, p1, Lorg/spongycastle/cert/X509CertificateHolder;

    if-nez v5, :cond_1

    move v3, v4

    .line 145
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    .line 119
    check-cast v2, Lorg/spongycastle/cert/X509CertificateHolder;

    .line 121
    .local v2, "x509Cert":Lorg/spongycastle/cert/X509CertificateHolder;
    iget-object v5, p0, Lorg/spongycastle/cert/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v5, v5, Lorg/spongycastle/asn1/x509/V2Form;

    if-eqz v5, :cond_5

    .line 123
    iget-object v0, p0, Lorg/spongycastle/cert/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/x509/V2Form;

    .line 124
    .local v0, "issuer":Lorg/spongycastle/asn1/x509/V2Form;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 126
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/IssuerSerial;->getSerial()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Lorg/spongycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lorg/spongycastle/cert/X509CertificateHolder;->getIssuer()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/IssuerSerial;->getIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/cert/AttributeCertificateIssuer;->matchesDN(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/V2Form;->getIssuerName()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v1

    .line 131
    .local v1, "name":Lorg/spongycastle/asn1/x509/GeneralNames;
    invoke-virtual {v2}, Lorg/spongycastle/cert/X509CertificateHolder;->getSubject()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/spongycastle/cert/AttributeCertificateIssuer;->matchesDN(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-nez v5, :cond_0

    .end local v0    # "issuer":Lorg/spongycastle/asn1/x509/V2Form;
    :cond_4
    move v3, v4

    .line 145
    goto :goto_0

    .line 138
    .end local v1    # "name":Lorg/spongycastle/asn1/x509/GeneralNames;
    :cond_5
    iget-object v1, p0, Lorg/spongycastle/cert/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v1, Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 139
    .restart local v1    # "name":Lorg/spongycastle/asn1/x509/GeneralNames;
    invoke-virtual {v2}, Lorg/spongycastle/cert/X509CertificateHolder;->getSubject()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/spongycastle/cert/AttributeCertificateIssuer;->matchesDN(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0
.end method
