.class public Lorg/spongycastle/cert/X509CertificateHolder;
.super Ljava/lang/Object;
.source "X509CertificateHolder.java"


# instance fields
.field private extensions:Lorg/spongycastle/asn1/x509/Extensions;

.field private x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/Certificate;)V
    .locals 1
    .param p1, "x509Certificate"    # Lorg/spongycastle/asn1/x509/Certificate;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/spongycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;

    .line 68
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/Certificate;->getTBSCertificate()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->getExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cert/X509CertificateHolder;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 296
    if-ne p1, p0, :cond_0

    .line 298
    const/4 v1, 0x1

    .line 308
    :goto_0
    return v1

    .line 301
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/cert/X509CertificateHolder;

    if-nez v1, :cond_1

    .line 303
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 306
    check-cast v0, Lorg/spongycastle/cert/X509CertificateHolder;

    .line 308
    .local v0, "other":Lorg/spongycastle/cert/X509CertificateHolder;
    iget-object v1, p0, Lorg/spongycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;

    iget-object v2, v0, Lorg/spongycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/x509/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lorg/spongycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;
    .locals 1
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/spongycastle/cert/X509CertificateHolder;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/spongycastle/cert/X509CertificateHolder;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/x509/Extensions;->getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIssuer()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/spongycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->getIssuer()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/spongycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->getSerialNumber()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/spongycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->getSubject()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/spongycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/spongycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hashCode()I

    move-result v0

    return v0
.end method

.method public toASN1Structure()Lorg/spongycastle/asn1/x509/Certificate;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/spongycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;

    return-object v0
.end method
