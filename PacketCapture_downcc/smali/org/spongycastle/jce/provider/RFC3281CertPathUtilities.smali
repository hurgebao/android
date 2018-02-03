.class Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3281CertPathUtilities.java"


# static fields
.field private static final AUTHORITY_INFO_ACCESS:Ljava/lang/String;

.field private static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field private static final NO_REV_AVAIL:Ljava/lang/String;

.field private static final TARGET_INFORMATION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->TargetInformation:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    .line 52
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->NoRevAvail:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->NO_REV_AVAIL:Ljava/lang/String;

    .line 55
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 58
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->AuthorityInfoAccess:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->AUTHORITY_INFO_ACCESS:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static additionalChecks(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 5
    .param p0, "attrCert"    # Lorg/spongycastle/x509/X509AttributeCertificate;
    .param p1, "pkixParams"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getProhibitedACAttributes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 285
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    .local v1, "oid":Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/spongycastle/x509/X509AttributeCertificate;->getAttributes(Ljava/lang/String;)[Lorg/spongycastle/x509/X509Attribute;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 290
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute certificate contains prohibited attribute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    .end local v1    # "oid":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getNecessaryACAttributes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 296
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 299
    .restart local v1    # "oid":Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/spongycastle/x509/X509AttributeCertificate;->getAttributes(Ljava/lang/String;)[Lorg/spongycastle/x509/X509Attribute;

    move-result-object v2

    if-nez v2, :cond_2

    .line 301
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute certificate does not contain necessary attribute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    .end local v1    # "oid":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static checkCRL(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    .locals 21
    .param p0, "dp"    # Lorg/spongycastle/asn1/x509/DistributionPoint;
    .param p1, "attrCert"    # Lorg/spongycastle/x509/X509AttributeCertificate;
    .param p2, "paramsPKIX"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .param p3, "validDate"    # Ljava/util/Date;
    .param p4, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p5, "certStatus"    # Lorg/spongycastle/jce/provider/CertStatus;
    .param p6, "reasonMask"    # Lorg/spongycastle/jce/provider/ReasonsMask;
    .param p7, "certPathCerts"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 573
    sget-object v5, Lorg/spongycastle/asn1/x509/X509Extensions;->NoRevAvail:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/spongycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 702
    :cond_0
    return-void

    .line 577
    :cond_1
    new-instance v12, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v12, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 578
    .local v12, "currentDate":Ljava/util/Date;
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 580
    new-instance v5, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v6, "Validation time is in future."

    invoke-direct {v5, v6}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 591
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v12, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lorg/spongycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;

    move-result-object v11

    .line 593
    .local v11, "crls":Ljava/util/Set;
    const/16 v20, 0x0

    .line 594
    .local v20, "validCrlFound":Z
    const/16 v19, 0x0

    .line 595
    .local v19, "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 599
    .local v10, "crl_iter":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual/range {p5 .. p5}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_7

    invoke-virtual/range {p6 .. p6}, Lorg/spongycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v5

    if-nez v5, :cond_7

    .line 603
    :try_start_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    .line 606
    .local v4, "crl":Ljava/security/cert/X509CRL;
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lorg/spongycastle/asn1/x509/DistributionPoint;)Lorg/spongycastle/jce/provider/ReasonsMask;

    move-result-object v16

    .line 615
    .local v16, "interimReasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;->hasNewReasons(Lorg/spongycastle/jce/provider/ReasonsMask;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 621
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p7

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;

    move-result-object v18

    .line 624
    .local v18, "keys":Ljava/util/Set;
    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v17

    .line 626
    .local v17, "key":Ljava/security/PublicKey;
    const/4 v13, 0x0

    .line 628
    .local v13, "deltaCRL":Ljava/security/cert/X509CRL;
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 631
    move-object/from16 v0, p2

    invoke-static {v12, v0, v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v14

    .line 635
    .local v14, "deltaCRLs":Ljava/util/Set;
    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v13

    .line 652
    .end local v14    # "deltaCRLs":Ljava/util/Set;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    .line 659
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/x509/X509AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    .line 662
    new-instance v5, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v6, "No valid CRL for current time found."

    invoke-direct {v5, v6}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 693
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v13    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v16    # "interimReasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .end local v17    # "key":Ljava/security/PublicKey;
    .end local v18    # "keys":Ljava/util/Set;
    :catch_0
    move-exception v15

    .line 695
    .local v15, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    move-object/from16 v19, v15

    .line 696
    goto :goto_0

    .line 667
    .end local v15    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v4    # "crl":Ljava/security/cert/X509CRL;
    .restart local v13    # "deltaCRL":Ljava/security/cert/X509CRL;
    .restart local v16    # "interimReasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .restart local v17    # "key":Ljava/security/PublicKey;
    .restart local v18    # "keys":Ljava/util/Set;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 670
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 673
    move-object/from16 v0, p2

    invoke-static {v13, v4, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 676
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    invoke-static {v0, v13, v1, v2, v3}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 680
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-static {v0, v4, v1, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V

    .line 684
    invoke-virtual/range {p5 .. p5}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_6

    .line 686
    const/16 v5, 0xb

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Lorg/spongycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 690
    :cond_6
    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;->addReasons(Lorg/spongycastle/jce/provider/ReasonsMask;)V
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 698
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v13    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v16    # "interimReasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .end local v17    # "key":Ljava/security/PublicKey;
    .end local v18    # "keys":Ljava/util/Set;
    :cond_7
    if-nez v20, :cond_0

    .line 700
    throw v19
.end method

.method protected static checkCRLs(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)V
    .locals 18
    .param p0, "attrCert"    # Lorg/spongycastle/x509/X509AttributeCertificate;
    .param p1, "paramsPKIX"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "validDate"    # Ljava/util/Date;
    .param p4, "certPathCerts"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isRevocationEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 129
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->NO_REV_AVAIL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lorg/spongycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_5

    .line 131
    const/4 v9, 0x0

    .line 134
    .local v9, "crldp":Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :try_start_0
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 145
    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromCRLDistributionPoint(Lorg/spongycastle/asn1/x509/CRLDistPoint;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    new-instance v6, Lorg/spongycastle/jce/provider/CertStatus;

    invoke-direct {v6}, Lorg/spongycastle/jce/provider/CertStatus;-><init>()V

    .line 156
    .local v6, "certStatus":Lorg/spongycastle/jce/provider/CertStatus;
    new-instance v7, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-direct {v7}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>()V

    .line 158
    .local v7, "reasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    const/4 v14, 0x0

    .line 159
    .local v14, "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    const/16 v16, 0x0

    .line 161
    .local v16, "validCrlFound":Z
    if-eqz v9, :cond_0

    .line 163
    const/4 v10, 0x0

    .line 166
    .local v10, "dps":[Lorg/spongycastle/asn1/x509/DistributionPoint;
    :try_start_2
    invoke-virtual {v9}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/spongycastle/asn1/x509/DistributionPoint;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    .line 175
    const/4 v12, 0x0

    .line 177
    .local v12, "i":I
    :goto_0
    :try_start_3
    array-length v2, v10

    if-ge v12, v2, :cond_0

    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_0

    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    .line 181
    .local v3, "paramsPKIXClone":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    aget-object v1, v10, v12

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    invoke-static/range {v1 .. v8}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->checkCRL(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 184
    const/16 v16, 0x1

    .line 177
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 137
    .end local v3    # "paramsPKIXClone":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .end local v6    # "certStatus":Lorg/spongycastle/jce/provider/CertStatus;
    .end local v7    # "reasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .end local v10    # "dps":[Lorg/spongycastle/asn1/x509/DistributionPoint;
    .end local v12    # "i":I
    .end local v14    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v16    # "validCrlFound":Z
    :catch_0
    move-exception v11

    .line 139
    .local v11, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "CRL distribution point extension could not be read."

    invoke-direct {v2, v4, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 149
    .end local v11    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :catch_1
    move-exception v11

    .line 151
    .restart local v11    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v2, v4, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 168
    .end local v11    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v6    # "certStatus":Lorg/spongycastle/jce/provider/CertStatus;
    .restart local v7    # "reasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .restart local v10    # "dps":[Lorg/spongycastle/asn1/x509/DistributionPoint;
    .restart local v14    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v16    # "validCrlFound":Z
    :catch_2
    move-exception v11

    .line 170
    .local v11, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Distribution points could not be read."

    invoke-direct {v2, v4, v11}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 187
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "i":I
    :catch_3
    move-exception v11

    .line 189
    .local v11, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v14, Lorg/spongycastle/jce/provider/AnnotatedException;

    .end local v14    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    const-string v2, "No valid CRL for distribution point found."

    invoke-direct {v14, v2, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .end local v10    # "dps":[Lorg/spongycastle/asn1/x509/DistributionPoint;
    .end local v11    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v12    # "i":I
    .restart local v14    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    :cond_0
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_1

    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_1

    .line 210
    const/4 v13, 0x0

    .line 214
    .local v13, "issuer":Lorg/spongycastle/asn1/ASN1Primitive;
    :try_start_4
    new-instance v4, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-interface/range {p0 .. p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v13

    .line 225
    :try_start_5
    new-instance v1, Lorg/spongycastle/asn1/x509/DistributionPoint;

    new-instance v2, Lorg/spongycastle/asn1/x509/DistributionPointName;

    const/4 v4, 0x0

    new-instance v5, Lorg/spongycastle/asn1/x509/GeneralNames;

    new-instance v8, Lorg/spongycastle/asn1/x509/GeneralName;

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-direct {v8, v0, v13}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v5, v8}, Lorg/spongycastle/asn1/x509/GeneralNames;-><init>(Lorg/spongycastle/asn1/x509/GeneralName;)V

    invoke-direct {v2, v4, v5}, Lorg/spongycastle/asn1/x509/DistributionPointName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Lorg/spongycastle/asn1/x509/DistributionPoint;-><init>(Lorg/spongycastle/asn1/x509/DistributionPointName;Lorg/spongycastle/asn1/x509/ReasonFlags;Lorg/spongycastle/asn1/x509/GeneralNames;)V

    .line 229
    .local v1, "dp":Lorg/spongycastle/asn1/x509/DistributionPoint;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    .restart local v3    # "paramsPKIXClone":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    .line 231
    invoke-static/range {v1 .. v8}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->checkCRL(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_5
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 233
    const/16 v16, 0x1

    .line 242
    .end local v1    # "dp":Lorg/spongycastle/asn1/x509/DistributionPoint;
    .end local v3    # "paramsPKIXClone":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .end local v13    # "issuer":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_1
    :goto_1
    if-nez v16, :cond_2

    .line 244
    new-instance v2, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "No valid CRL found."

    invoke-direct {v2, v4, v14}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 219
    .restart local v13    # "issuer":Lorg/spongycastle/asn1/ASN1Primitive;
    :catch_4
    move-exception v11

    .line 221
    .local v11, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v2, v4, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 235
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v11

    .line 237
    .local v11, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v14, Lorg/spongycastle/jce/provider/AnnotatedException;

    .end local v14    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    const-string v2, "No valid CRL for distribution point found."

    invoke-direct {v14, v2, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v14    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    goto :goto_1

    .line 247
    .end local v11    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v13    # "issuer":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_2
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-eq v2, v4, :cond_3

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute certificate revocation after "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 251
    .local v15, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", reason: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 254
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v2, v15}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    .end local v15    # "message":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_4

    .line 259
    const/16 v2, 0xc

    invoke-virtual {v6, v2}, Lorg/spongycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 261
    :cond_4
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_7

    .line 263
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Attribute certificate status could not be determined."

    invoke-direct {v2, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    .end local v6    # "certStatus":Lorg/spongycastle/jce/provider/CertStatus;
    .end local v7    # "reasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .end local v9    # "crldp":Lorg/spongycastle/asn1/x509/CRLDistPoint;
    .end local v14    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v16    # "validCrlFound":Z
    :cond_5
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lorg/spongycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_6

    sget-object v2, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->AUTHORITY_INFO_ACCESS:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lorg/spongycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_7

    .line 273
    :cond_6
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "No rev avail extension is set, but also an AC revocation pointer."

    invoke-direct {v2, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_7
    return-void
.end method

.method protected static processAttrCert1(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)Ljava/security/cert/CertPath;
    .locals 12
    .param p0, "attrCert"    # Lorg/spongycastle/x509/X509AttributeCertificate;
    .param p1, "pkixParams"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 423
    const/4 v8, 0x0

    .line 425
    .local v8, "result":Ljava/security/cert/CertPathBuilderResult;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 426
    .local v2, "holderPKCs":Ljava/util/Set;
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 428
    new-instance v9, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v9}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 429
    .local v9, "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/x509/X509CertStoreSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 430
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v7

    .line 431
    .local v7, "principals":[Ljava/security/Principal;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v7

    if-ge v3, v10, :cond_1

    .line 435
    :try_start_0
    aget-object v10, v7, v3

    instance-of v10, v10, Ljavax/security/auth/x500/X500Principal;

    if-eqz v10, :cond_0

    .line 437
    aget-object v10, v7, v3

    check-cast v10, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/x509/X509CertStoreSelector;->setIssuer([B)V

    .line 440
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 431
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 443
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v10, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Public key certificate for attribute certificate cannot be searched."

    invoke-direct {v10, v11, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 449
    .end local v1    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :catch_1
    move-exception v1

    .line 451
    .local v1, "e":Ljava/io/IOException;
    new-instance v10, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Unable to encode X500 principal."

    invoke-direct {v10, v11, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 455
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 457
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "Public key certificate specified in base certificate ID for attribute certificate cannot be found."

    invoke-direct {v10, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 461
    .end local v3    # "i":I
    .end local v7    # "principals":[Ljava/security/Principal;
    .end local v9    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    :cond_2
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 463
    new-instance v9, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v9}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 464
    .restart local v9    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v7

    .line 465
    .restart local v7    # "principals":[Ljava/security/Principal;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v10, v7

    if-ge v3, v10, :cond_4

    .line 469
    :try_start_1
    aget-object v10, v7, v3

    instance-of v10, v10, Ljavax/security/auth/x500/X500Principal;

    if-eqz v10, :cond_3

    .line 471
    aget-object v10, v7, v3

    check-cast v10, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/x509/X509CertStoreSelector;->setIssuer([B)V

    .line 474
    :cond_3
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 465
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 477
    :catch_2
    move-exception v1

    .line 479
    .local v1, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v10, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Public key certificate for attribute certificate cannot be searched."

    invoke-direct {v10, v11, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 483
    .end local v1    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :catch_3
    move-exception v1

    .line 485
    .local v1, "e":Ljava/io/IOException;
    new-instance v10, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Unable to encode X500 principal."

    invoke-direct {v10, v11, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 489
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 491
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "Public key certificate specified in entity name for attribute certificate cannot be found."

    invoke-direct {v10, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 496
    .end local v3    # "i":I
    .end local v7    # "principals":[Ljava/security/Principal;
    .end local v9    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    :cond_5
    invoke-static {p1}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    .line 498
    .local v6, "params":Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;
    const/4 v5, 0x0

    .line 499
    .local v5, "lastException":Ljava/security/cert/CertPathValidatorException;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 501
    new-instance v9, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v9}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 502
    .restart local v9    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    invoke-virtual {v9, v10}, Lorg/spongycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 503
    invoke-virtual {v6, v9}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->setTargetConstraints(Lorg/spongycastle/util/Selector;)V

    .line 504
    const/4 v0, 0x0

    .line 507
    .local v0, "builder":Ljava/security/cert/CertPathBuilder;
    :try_start_2
    const-string v10, "PKIX"

    const-string v11, "SC"

    invoke-static {v10, v11}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
    :try_end_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    .line 521
    :try_start_3
    invoke-static {v6}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v8

    goto :goto_2

    .line 509
    :catch_4
    move-exception v1

    .line 511
    .local v1, "e":Ljava/security/NoSuchProviderException;
    new-instance v10, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Support class could not be created."

    invoke-direct {v10, v11, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 514
    .end local v1    # "e":Ljava/security/NoSuchProviderException;
    :catch_5
    move-exception v1

    .line 516
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v10, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Support class could not be created."

    invoke-direct {v10, v11, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 524
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_6
    move-exception v1

    .line 526
    .local v1, "e":Ljava/security/cert/CertPathBuilderException;
    new-instance v5, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    .end local v5    # "lastException":Ljava/security/cert/CertPathValidatorException;
    const-string v10, "Certification path for public key certificate of attribute certificate could not be build."

    invoke-direct {v5, v10, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 534
    .restart local v5    # "lastException":Ljava/security/cert/CertPathValidatorException;
    goto :goto_2

    .line 530
    .end local v1    # "e":Ljava/security/cert/CertPathBuilderException;
    :catch_7
    move-exception v1

    .line 533
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 536
    .end local v0    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .end local v9    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    :cond_6
    if-eqz v5, :cond_7

    .line 538
    throw v5

    .line 540
    :cond_7
    invoke-interface {v8}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v10

    return-object v10
.end method

.method protected static processAttrCert2(Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 4
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "pkixParams"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 370
    const/4 v1, 0x0

    .line 373
    .local v1, "validator":Ljava/security/cert/CertPathValidator;
    :try_start_0
    const-string v2, "PKIX"

    const-string v3, "SC"

    invoke-static {v2, v3}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 387
    :try_start_1
    invoke-virtual {v1, p0, p1}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    return-object v2

    .line 375
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v2, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Support class could not be created."

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 380
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :catch_1
    move-exception v0

    .line 382
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Support class could not be created."

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 389
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 391
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v2, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Certification path for issuer certificate of attribute certificate could not be validated."

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 395
    .end local v0    # "e":Ljava/security/cert/CertPathValidatorException;
    :catch_3
    move-exception v0

    .line 398
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static processAttrCert3(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 2
    .param p0, "acIssuerCert"    # Ljava/security/cert/X509Certificate;
    .param p1, "pkixParams"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Attribute certificate issuer public key cannot be used to validate digital signatures."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 361
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Attribute certificate issuer is also a public key certificate issuer."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    return-void
.end method

.method protected static processAttrCert4(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 6
    .param p0, "acIssuerCert"    # Ljava/security/cert/X509Certificate;
    .param p1, "pkixParams"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getTrustedACIssuers()Ljava/util/Set;

    move-result-object v2

    .line 332
    .local v2, "set":Ljava/util/Set;
    const/4 v3, 0x0

    .line 333
    .local v3, "trusted":Z
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 335
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 336
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    const-string v5, "RFC2253"

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 340
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 343
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_2
    if-nez v3, :cond_3

    .line 345
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Attribute certificate issuer is not directly trusted."

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 348
    :cond_3
    return-void
.end method

.method protected static processAttrCert5(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 3
    .param p0, "attrCert"    # Lorg/spongycastle/x509/X509AttributeCertificate;
    .param p1, "pkixParams"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 313
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/spongycastle/x509/X509AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1

    .line 326
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Attribute certificate is not valid."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 321
    .end local v0    # "e":Ljava/security/cert/CertificateExpiredException;
    :catch_1
    move-exception v0

    .line 323
    .local v0, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Attribute certificate is not valid."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static processAttrCert7(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 6
    .param p0, "attrCert"    # Lorg/spongycastle/x509/X509AttributeCertificate;
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "holderCertPath"    # Ljava/security/cert/CertPath;
    .param p3, "pkixParams"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    .line 74
    .local v2, "set":Ljava/util/Set;
    sget-object v3, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    :try_start_0
    sget-object v3, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    invoke-static {p0, v3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/TargetInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TargetInformation;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :cond_0
    sget-object v3, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p3}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getAttrCertCheckers()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 94
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/x509/PKIXAttrCertChecker;

    invoke-virtual {v3, p0, p1, p2, v2}, Lorg/spongycastle/x509/PKIXAttrCertChecker;->check(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Ljava/util/Collection;)V

    goto :goto_0

    .line 81
    .end local v1    # "it":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v3, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Target information extension could not be read."

    invoke-direct {v3, v4, v0}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 86
    .end local v0    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Target information extension could not be read."

    invoke-direct {v3, v4, v0}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 99
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attribute certificate contains unsupported critical extensions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :cond_2
    return-void
.end method
