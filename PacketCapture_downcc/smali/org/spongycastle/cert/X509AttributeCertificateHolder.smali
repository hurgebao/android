.class public Lorg/spongycastle/cert/X509AttributeCertificateHolder;
.super Ljava/lang/Object;
.source "X509AttributeCertificateHolder.java"


# static fields
.field private static EMPTY_ARRAY:[Lorg/spongycastle/asn1/x509/Attribute;


# instance fields
.field private attrCert:Lorg/spongycastle/asn1/x509/AttributeCertificate;

.field private extensions:Lorg/spongycastle/asn1/x509/Extensions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/spongycastle/asn1/x509/Attribute;

    sput-object v0, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->EMPTY_ARRAY:[Lorg/spongycastle/asn1/x509/Attribute;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 347
    if-ne p1, p0, :cond_0

    .line 349
    const/4 v1, 0x1

    .line 359
    :goto_0
    return v1

    .line 352
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/cert/X509AttributeCertificateHolder;

    if-nez v1, :cond_1

    .line 354
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 357
    check-cast v0, Lorg/spongycastle/cert/X509AttributeCertificateHolder;

    .line 359
    .local v0, "other":Lorg/spongycastle/cert/X509AttributeCertificateHolder;
    iget-object v1, p0, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->attrCert:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    iget-object v2, v0, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->attrCert:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->equals(Ljava/lang/Object;)Z

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
    .line 84
    iget-object v0, p0, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->attrCert:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;
    .locals 1
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 207
    iget-object v0, p0, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/x509/Extensions;->getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHolder()Lorg/spongycastle/cert/AttributeCertificateHolder;
    .locals 2

    .prologue
    .line 109
    new-instance v1, Lorg/spongycastle/cert/AttributeCertificateHolder;

    iget-object v0, p0, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->attrCert:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->getHolder()Lorg/spongycastle/asn1/x509/Holder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/cert/AttributeCertificateHolder;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v1
.end method

.method public getIssuer()Lorg/spongycastle/cert/AttributeCertificateIssuer;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lorg/spongycastle/cert/AttributeCertificateIssuer;

    iget-object v1, p0, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->attrCert:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->getIssuer()Lorg/spongycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/AttributeCertificateIssuer;-><init>(Lorg/spongycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->attrCert:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->getSerialNumber()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->attrCert:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValidOn(Ljava/util/Date;)Z
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 301
    iget-object v1, p0, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->attrCert:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v0

    .line 303
    .local v0, "certValidityPeriod":Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;->getNotBeforeTime()Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/cert/CertUtils;->recoverDate(Lorg/spongycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;->getNotAfterTime()Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/cert/CertUtils;->recoverDate(Lorg/spongycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
