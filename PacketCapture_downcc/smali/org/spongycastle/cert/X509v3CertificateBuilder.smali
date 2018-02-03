.class public Lorg/spongycastle/cert/X509v3CertificateBuilder;
.super Ljava/lang/Object;
.source "X509v3CertificateBuilder.java"


# instance fields
.field private extGenerator:Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

.field private tbsGen:Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Locale;Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 7
    .param p1, "issuer"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .param p5, "dateLocale"    # Ljava/util/Locale;
    .param p6, "subject"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p7, "publicKeyInfo"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    .line 57
    new-instance v3, Lorg/spongycastle/asn1/x509/Time;

    invoke-direct {v3, p3, p5}, Lorg/spongycastle/asn1/x509/Time;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    new-instance v4, Lorg/spongycastle/asn1/x509/Time;

    invoke-direct {v4, p4, p5}, Lorg/spongycastle/asn1/x509/Time;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/cert/X509v3CertificateBuilder;-><init>(Lorg/spongycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 2
    .param p1, "issuer"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Lorg/spongycastle/asn1/x509/Time;
    .param p4, "notAfter"    # Lorg/spongycastle/asn1/x509/Time;
    .param p5, "subject"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p6, "publicKeyInfo"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/X509v3CertificateBuilder;->tbsGen:Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 73
    iget-object v0, p0, Lorg/spongycastle/cert/X509v3CertificateBuilder;->tbsGen:Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v1, p2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lorg/spongycastle/asn1/ASN1Integer;)V

    .line 74
    iget-object v0, p0, Lorg/spongycastle/cert/X509v3CertificateBuilder;->tbsGen:Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lorg/spongycastle/asn1/x500/X500Name;)V

    .line 75
    iget-object v0, p0, Lorg/spongycastle/cert/X509v3CertificateBuilder;->tbsGen:Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p3}, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lorg/spongycastle/asn1/x509/Time;)V

    .line 76
    iget-object v0, p0, Lorg/spongycastle/cert/X509v3CertificateBuilder;->tbsGen:Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p4}, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lorg/spongycastle/asn1/x509/Time;)V

    .line 77
    iget-object v0, p0, Lorg/spongycastle/cert/X509v3CertificateBuilder;->tbsGen:Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p5}, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lorg/spongycastle/asn1/x500/X500Name;)V

    .line 78
    iget-object v0, p0, Lorg/spongycastle/cert/X509v3CertificateBuilder;->tbsGen:Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p6}, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 80
    new-instance v0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/X509v3CertificateBuilder;->extGenerator:Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

    .line 81
    return-void
.end method


# virtual methods
.method public addExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZLorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/cert/X509v3CertificateBuilder;
    .locals 1
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p3, "value"    # Lorg/spongycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cert/CertIOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/spongycastle/cert/X509v3CertificateBuilder;->extGenerator:Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

    invoke-static {v0, p1, p2, p3}, Lorg/spongycastle/cert/CertUtils;->addExtension(Lorg/spongycastle/asn1/x509/ExtensionsGenerator;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZLorg/spongycastle/asn1/ASN1Encodable;)V

    .line 125
    return-object p0
.end method

.method public build(Lorg/spongycastle/operator/ContentSigner;)Lorg/spongycastle/cert/X509CertificateHolder;
    .locals 2
    .param p1, "signer"    # Lorg/spongycastle/operator/ContentSigner;

    .prologue
    .line 186
    iget-object v0, p0, Lorg/spongycastle/cert/X509v3CertificateBuilder;->tbsGen:Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-interface {p1}, Lorg/spongycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 188
    iget-object v0, p0, Lorg/spongycastle/cert/X509v3CertificateBuilder;->extGenerator:Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/spongycastle/cert/X509v3CertificateBuilder;->tbsGen:Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;

    iget-object v1, p0, Lorg/spongycastle/cert/X509v3CertificateBuilder;->extGenerator:Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lorg/spongycastle/asn1/x509/Extensions;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/cert/X509v3CertificateBuilder;->tbsGen:Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/spongycastle/cert/CertUtils;->generateFullCert(Lorg/spongycastle/operator/ContentSigner;Lorg/spongycastle/asn1/x509/TBSCertificate;)Lorg/spongycastle/cert/X509CertificateHolder;

    move-result-object v0

    return-object v0
.end method

.method public copyAndAddExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZLorg/spongycastle/cert/X509CertificateHolder;)Lorg/spongycastle/cert/X509v3CertificateBuilder;
    .locals 5
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p3, "certHolder"    # Lorg/spongycastle/cert/X509CertificateHolder;

    .prologue
    .line 162
    invoke-virtual {p3}, Lorg/spongycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    .line 164
    .local v0, "cert":Lorg/spongycastle/asn1/x509/Certificate;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->getTBSCertificate()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/TBSCertificate;->getExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/spongycastle/asn1/x509/Extensions;->getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v1

    .line 166
    .local v1, "extension":Lorg/spongycastle/asn1/x509/Extension;
    if-nez v1, :cond_0

    .line 168
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extension "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not present"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/cert/X509v3CertificateBuilder;->extGenerator:Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Extension;->getExtnValue()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 173
    return-object p0
.end method
