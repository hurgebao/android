.class public Lorg/spongycastle/jce/provider/PKIXAttrCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXAttrCertPathValidatorSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 11
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 56
    instance-of v8, p2, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    if-nez v8, :cond_0

    .line 58
    new-instance v8, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parameters must be a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-class v10, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " instance."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    move-object v6, p2

    .line 62
    check-cast v6, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    .line 64
    .local v6, "pkixParams":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v6}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lorg/spongycastle/util/Selector;

    move-result-object v1

    .line 65
    .local v1, "certSelect":Lorg/spongycastle/util/Selector;
    instance-of v8, v1, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    if-nez v8, :cond_1

    .line 67
    new-instance v8, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TargetConstraints must be an instance of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-class v10, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " class."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 72
    :cond_1
    check-cast v1, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    .end local v1    # "certSelect":Lorg/spongycastle/util/Selector;
    invoke-virtual {v1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v0

    .line 75
    .local v0, "attrCert":Lorg/spongycastle/x509/X509AttributeCertificate;
    invoke-static {v0, v6}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert1(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)Ljava/security/cert/CertPath;

    move-result-object v4

    .line 76
    .local v4, "holderCertPath":Ljava/security/cert/CertPath;
    invoke-static {p1, v6}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert2(Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v7

    .line 77
    .local v7, "result":Ljava/security/cert/CertPathValidatorResult;
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 79
    .local v5, "issuerCert":Ljava/security/cert/X509Certificate;
    invoke-static {v5, v6}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert3(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 80
    invoke-static {v5, v6}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert4(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 81
    invoke-static {v0, v6}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert5(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 83
    invoke-static {v0, p1, v4, v6}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert7(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 84
    invoke-static {v0, v6}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->additionalChecks(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 85
    const/4 v2, 0x0

    .line 88
    .local v2, "date":Ljava/util/Date;
    const/4 v8, 0x0

    const/4 v9, -0x1

    :try_start_0
    invoke-static {v6, v8, v9}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 96
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v8

    invoke-static {v0, v6, v5, v2, v8}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->checkCRLs(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)V

    .line 97
    return-object v7

    .line 91
    :catch_0
    move-exception v3

    .line 93
    .local v3, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v8, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v9, "Could not get validity date from attribute certificate."

    invoke-direct {v8, v9, v3}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method
