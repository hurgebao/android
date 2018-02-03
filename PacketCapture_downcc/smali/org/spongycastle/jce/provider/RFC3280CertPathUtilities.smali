.class public Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3280CertPathUtilities.java"


# static fields
.field public static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field public static final BASIC_CONSTRAINTS:Ljava/lang/String;

.field public static final CERTIFICATE_POLICIES:Ljava/lang/String;

.field public static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field public static final CRL_NUMBER:Ljava/lang/String;

.field private static final CRL_UTIL:Lorg/spongycastle/jce/provider/PKIXCRLUtil;

.field public static final DELTA_CRL_INDICATOR:Ljava/lang/String;

.field public static final FRESHEST_CRL:Ljava/lang/String;

.field public static final INHIBIT_ANY_POLICY:Ljava/lang/String;

.field public static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field public static final KEY_USAGE:Ljava/lang/String;

.field public static final NAME_CONSTRAINTS:Ljava/lang/String;

.field public static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field public static final POLICY_MAPPINGS:Ljava/lang/String;

.field public static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/PKIXCRLUtil;-><init>()V

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CRL_UTIL:Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    .line 380
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 382
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->PolicyMappings:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 384
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 386
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 388
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->FreshestCRL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 390
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 392
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 394
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->BasicConstraints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 396
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 398
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 400
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->NameConstraints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 402
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 404
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->KeyUsage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 406
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->CRLNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 2280
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unspecified"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "keyCompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cACompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "affiliationChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cessationOfOperation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificateHold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "removeFromCRL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "privilegeWithdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "aACompromise"

    aput-object v2, v0, v1

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCRL(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    .locals 23
    .param p0, "dp"    # Lorg/spongycastle/asn1/x509/DistributionPoint;
    .param p1, "paramsPKIX"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "validDate"    # Ljava/util/Date;
    .param p4, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p5, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p6, "certStatus"    # Lorg/spongycastle/jce/provider/CertStatus;
    .param p7, "reasonMask"    # Lorg/spongycastle/jce/provider/ReasonsMask;
    .param p8, "certPathCerts"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1738
    new-instance v14, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v14, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1739
    .local v14, "currentDate":Ljava/util/Date;
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 1741
    new-instance v5, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v6, "Validation time is in future."

    invoke-direct {v5, v6}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1752
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v14, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lorg/spongycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;

    move-result-object v13

    .line 1753
    .local v13, "crls":Ljava/util/Set;
    const/16 v22, 0x0

    .line 1754
    .local v22, "validCrlFound":Z
    const/16 v21, 0x0

    .line 1755
    .local v21, "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1757
    .local v12, "crl_iter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {p6 .. p6}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_9

    invoke-virtual/range {p7 .. p7}, Lorg/spongycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1761
    :try_start_0
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    .line 1764
    .local v4, "crl":Ljava/security/cert/X509CRL;
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lorg/spongycastle/asn1/x509/DistributionPoint;)Lorg/spongycastle/jce/provider/ReasonsMask;

    move-result-object v18

    .line 1772
    .local v18, "interimReasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;->hasNewReasons(Lorg/spongycastle/jce/provider/ReasonsMask;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v9, p8

    .line 1778
    invoke-static/range {v4 .. v9}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;

    move-result-object v20

    .line 1781
    .local v20, "keys":Ljava/util/Set;
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v19

    .line 1783
    .local v19, "key":Ljava/security/PublicKey;
    const/4 v15, 0x0

    .line 1785
    .local v15, "deltaCRL":Ljava/security/cert/X509CRL;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1788
    move-object/from16 v0, p1

    invoke-static {v14, v0, v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v16

    .line 1791
    .local v16, "deltaCRLs":Ljava/util/Set;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v15

    .line 1807
    .end local v16    # "deltaCRLs":Ljava/util/Set;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 1814
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_3

    .line 1816
    new-instance v5, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v6, "No valid CRL for current time found."

    invoke-direct {v5, v6}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1873
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v15    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v18    # "interimReasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .end local v19    # "key":Ljava/security/PublicKey;
    .end local v20    # "keys":Ljava/util/Set;
    :catch_0
    move-exception v17

    .line 1875
    .local v17, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    move-object/from16 v21, v17

    .line 1876
    goto :goto_0

    .line 1820
    .end local v17    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v4    # "crl":Ljava/security/cert/X509CRL;
    .restart local v15    # "deltaCRL":Ljava/security/cert/X509CRL;
    .restart local v18    # "interimReasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .restart local v19    # "key":Ljava/security/PublicKey;
    .restart local v20    # "keys":Ljava/util/Set;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1823
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1826
    move-object/from16 v0, p1

    invoke-static {v15, v4, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 1829
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    invoke-static {v0, v15, v1, v2, v3}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 1832
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-static {v0, v4, v1, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V

    .line 1835
    invoke-virtual/range {p6 .. p6}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    .line 1837
    const/16 v5, 0xb

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lorg/spongycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1841
    :cond_4
    move-object/from16 v0, p7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;->addReasons(Lorg/spongycastle/jce/provider/ReasonsMask;)V

    .line 1843
    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v10

    .line 1844
    .local v10, "criticalExtensions":Ljava/util/Set;
    if-eqz v10, :cond_6

    .line 1846
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1847
    .end local v10    # "criticalExtensions":Ljava/util/Set;
    .local v11, "criticalExtensions":Ljava/util/Set;
    sget-object v5, Lorg/spongycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1848
    sget-object v5, Lorg/spongycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1850
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1852
    new-instance v5, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v6, "CRL contains unsupported critical extensions."

    invoke-direct {v5, v6}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    move-object v10, v11

    .line 1856
    .end local v11    # "criticalExtensions":Ljava/util/Set;
    .restart local v10    # "criticalExtensions":Ljava/util/Set;
    :cond_6
    if-eqz v15, :cond_8

    .line 1858
    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v10

    .line 1859
    if-eqz v10, :cond_8

    .line 1861
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1862
    .end local v10    # "criticalExtensions":Ljava/util/Set;
    .restart local v11    # "criticalExtensions":Ljava/util/Set;
    sget-object v5, Lorg/spongycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1863
    sget-object v5, Lorg/spongycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1864
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1866
    new-instance v5, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v6, "Delta CRL contains unsupported critical extension."

    invoke-direct {v5, v6}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    move-object v10, v11

    .line 1871
    .end local v11    # "criticalExtensions":Ljava/util/Set;
    .restart local v10    # "criticalExtensions":Ljava/util/Set;
    :cond_8
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 1878
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v10    # "criticalExtensions":Ljava/util/Set;
    .end local v15    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v18    # "interimReasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .end local v19    # "key":Ljava/security/PublicKey;
    .end local v20    # "keys":Ljava/util/Set;
    :cond_9
    if-nez v22, :cond_a

    .line 1880
    throw v21

    .line 1882
    :cond_a
    return-void
.end method

.method protected static checkCRLs(Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;)V
    .locals 19
    .param p0, "paramsPKIX"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "validDate"    # Ljava/util/Date;
    .param p3, "sign"    # Ljava/security/cert/X509Certificate;
    .param p4, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p5, "certPathCerts"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1906
    const/16 v16, 0x0

    .line 1907
    .local v16, "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    const/4 v10, 0x0

    .line 1910
    .local v10, "crldp":Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :try_start_0
    sget-object v3, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1919
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromCRLDistributionPoint(Lorg/spongycastle/asn1/x509/CRLDistPoint;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1926
    new-instance v7, Lorg/spongycastle/jce/provider/CertStatus;

    invoke-direct {v7}, Lorg/spongycastle/jce/provider/CertStatus;-><init>()V

    .line 1927
    .local v7, "certStatus":Lorg/spongycastle/jce/provider/CertStatus;
    new-instance v8, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-direct {v8}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>()V

    .line 1929
    .local v8, "reasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    const/16 v18, 0x0

    .line 1931
    .local v18, "validCrlFound":Z
    if-eqz v10, :cond_0

    .line 1933
    const/4 v12, 0x0

    .line 1936
    .local v12, "dps":[Lorg/spongycastle/asn1/x509/DistributionPoint;
    :try_start_2
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/spongycastle/asn1/x509/DistributionPoint;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v12

    .line 1942
    if-eqz v12, :cond_0

    .line 1944
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v3, v12

    if-ge v14, v3, :cond_0

    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1946
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    .line 1949
    .local v2, "paramsPKIXClone":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    :try_start_3
    aget-object v1, v12, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v9}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1950
    const/16 v18, 0x1

    .line 1944
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1913
    .end local v2    # "paramsPKIXClone":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .end local v7    # "certStatus":Lorg/spongycastle/jce/provider/CertStatus;
    .end local v8    # "reasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .end local v12    # "dps":[Lorg/spongycastle/asn1/x509/DistributionPoint;
    .end local v14    # "i":I
    .end local v18    # "validCrlFound":Z
    :catch_0
    move-exception v13

    .line 1915
    .local v13, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "CRL distribution point extension could not be read."

    invoke-direct {v3, v4, v13}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1921
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v13

    .line 1923
    .local v13, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v3, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v3, v4, v13}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1938
    .end local v13    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v7    # "certStatus":Lorg/spongycastle/jce/provider/CertStatus;
    .restart local v8    # "reasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .restart local v12    # "dps":[Lorg/spongycastle/asn1/x509/DistributionPoint;
    .restart local v18    # "validCrlFound":Z
    :catch_2
    move-exception v13

    .line 1940
    .local v13, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "Distribution points could not be read."

    invoke-direct {v3, v4, v13}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1952
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v2    # "paramsPKIXClone":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .restart local v14    # "i":I
    :catch_3
    move-exception v13

    .line 1954
    .local v13, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    move-object/from16 v16, v13

    goto :goto_1

    .line 1966
    .end local v2    # "paramsPKIXClone":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .end local v12    # "dps":[Lorg/spongycastle/asn1/x509/DistributionPoint;
    .end local v13    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v14    # "i":I
    :cond_0
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1975
    const/4 v15, 0x0

    .line 1978
    .local v15, "issuer":Lorg/spongycastle/asn1/ASN1Primitive;
    :try_start_4
    new-instance v3, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-static/range {p1 .. p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v15

    .line 1985
    :try_start_5
    new-instance v1, Lorg/spongycastle/asn1/x509/DistributionPoint;

    new-instance v3, Lorg/spongycastle/asn1/x509/DistributionPointName;

    const/4 v4, 0x0

    new-instance v5, Lorg/spongycastle/asn1/x509/GeneralNames;

    new-instance v6, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v9, 0x4

    invoke-direct {v6, v9, v15}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/x509/GeneralNames;-><init>(Lorg/spongycastle/asn1/x509/GeneralName;)V

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/x509/DistributionPointName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lorg/spongycastle/asn1/x509/DistributionPoint;-><init>(Lorg/spongycastle/asn1/x509/DistributionPointName;Lorg/spongycastle/asn1/x509/ReasonFlags;Lorg/spongycastle/asn1/x509/GeneralNames;)V

    .line 1987
    .local v1, "dp":Lorg/spongycastle/asn1/x509/DistributionPoint;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    .restart local v2    # "paramsPKIXClone":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    .line 1988
    invoke-static/range {v1 .. v9}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_5
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1990
    const/16 v18, 0x1

    .line 1998
    .end local v1    # "dp":Lorg/spongycastle/asn1/x509/DistributionPoint;
    .end local v2    # "paramsPKIXClone":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .end local v15    # "issuer":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_1
    :goto_2
    if-nez v18, :cond_3

    .line 2000
    move-object/from16 v0, v16

    instance-of v3, v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    if-eqz v3, :cond_2

    .line 2002
    throw v16

    .line 1981
    .restart local v15    # "issuer":Lorg/spongycastle/asn1/ASN1Primitive;
    :catch_4
    move-exception v13

    .line 1983
    .local v13, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v3, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v3, v4, v13}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1992
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v13

    .line 1994
    .local v13, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    move-object/from16 v16, v13

    goto :goto_2

    .line 2005
    .end local v13    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v15    # "issuer":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_2
    new-instance v3, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "No valid CRL found."

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2007
    :cond_3
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_4

    .line 2009
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v11, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2010
    .local v11, "df":Ljava/text/SimpleDateFormat;
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate revocation after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2012
    .local v17, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2013
    new-instance v3, Lorg/spongycastle/jce/provider/AnnotatedException;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2015
    .end local v11    # "df":Ljava/text/SimpleDateFormat;
    .end local v17    # "message":Ljava/lang/String;
    :cond_4
    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_5

    .line 2017
    const/16 v3, 0xc

    invoke-virtual {v7, v3}, Lorg/spongycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 2019
    :cond_5
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_6

    .line 2021
    new-instance v3, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "Certificate status could not be determined."

    invoke-direct {v3, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2023
    :cond_6
    return-void
.end method

.method protected static prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;I)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 34
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyNodes"    # [Ljava/util/List;
    .param p3, "validPolicyTree"    # Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .param p4, "policyMapping"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 868
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v12

    .line 869
    .local v12, "certs":Ljava/util/List;
    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 870
    .local v11, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v23

    .line 872
    .local v23, "n":I
    sub-int v4, v23, p1

    .line 875
    .local v4, "i":I
    const/16 v29, 0x0

    .line 878
    .local v29, "pm":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v11, v3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v29

    .line 886
    move-object/from16 v10, p3

    .line 887
    .local v10, "_validPolicyTree":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    if-eqz v29, :cond_d

    .line 889
    move-object/from16 v22, v29

    .line 890
    .local v22, "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 891
    .local v20, "m_idp":Ljava/util/Map;
    new-instance v31, Ljava/util/HashSet;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashSet;-><init>()V

    .line 893
    .local v31, "s_idp":Ljava/util/Set;
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_1

    .line 895
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v21

    check-cast v21, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 896
    .local v21, "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    .line 897
    .local v8, "id_p":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v32

    .line 900
    .local v32, "sd_p":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 902
    new-instance v33, Ljava/util/HashSet;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashSet;-><init>()V

    .line 903
    .local v33, "tmp":Ljava/util/Set;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 904
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 893
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 881
    .end local v8    # "id_p":Ljava/lang/String;
    .end local v10    # "_validPolicyTree":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v17    # "j":I
    .end local v20    # "m_idp":Ljava/util/Map;
    .end local v21    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v22    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v31    # "s_idp":Ljava/util/Set;
    .end local v32    # "sd_p":Ljava/lang/String;
    .end local v33    # "tmp":Ljava/util/Set;
    :catch_0
    move-exception v14

    .line 883
    .local v14, "ex":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v3, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy mappings extension could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 909
    .end local v14    # "ex":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v8    # "id_p":Ljava/lang/String;
    .restart local v10    # "_validPolicyTree":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .restart local v17    # "j":I
    .restart local v20    # "m_idp":Ljava/util/Map;
    .restart local v21    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v22    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v31    # "s_idp":Ljava/util/Set;
    .restart local v32    # "sd_p":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/Set;

    .line 910
    .restart local v33    # "tmp":Ljava/util/Set;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 914
    .end local v8    # "id_p":Ljava/lang/String;
    .end local v21    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v32    # "sd_p":Ljava/lang/String;
    .end local v33    # "tmp":Ljava/util/Set;
    :cond_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 915
    .local v16, "it_idp":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 917
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 922
    .restart local v8    # "id_p":Ljava/lang/String;
    if-lez p4, :cond_9

    .line 924
    const/4 v15, 0x0

    .line 925
    .local v15, "idp_found":Z
    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 926
    .local v27, "nodes_i":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 928
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 929
    .local v24, "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 931
    const/4 v15, 0x1

    .line 932
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    move-object/from16 v0, v24

    iput-object v3, v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 937
    .end local v24    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_4
    if-nez v15, :cond_2

    .line 939
    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 940
    :cond_5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 942
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 943
    .restart local v24    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    const-string v3, "2.5.29.32.0"

    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 945
    const/4 v7, 0x0

    .line 946
    .local v7, "pq":Ljava/util/Set;
    const/16 v30, 0x0

    .line 949
    .local v30, "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_1
    sget-object v3, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v11, v3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v30

    .end local v30    # "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    check-cast v30, Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 957
    .restart local v30    # "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v13

    .line 958
    .local v13, "e":Ljava/util/Enumeration;
    :cond_6
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 960
    const/16 v28, 0x0

    .line 963
    .local v28, "pinfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    :try_start_2
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v28

    .line 970
    const-string v3, "2.5.29.32.0"

    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 974
    :try_start_3
    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    .line 987
    .end local v28    # "pinfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    :cond_7
    const/4 v9, 0x0

    .line 988
    .local v9, "ci":Z
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 990
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    sget-object v5, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 994
    :cond_8
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 995
    .local v6, "p_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    const-string v3, "2.5.29.32.0"

    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 997
    new-instance v2, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-direct/range {v2 .. v9}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 999
    .local v2, "c_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6, v2}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 1000
    aget-object v3, p2, v4

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 952
    .end local v2    # "c_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "p_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "ci":Z
    .end local v13    # "e":Ljava/util/Enumeration;
    .end local v30    # "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v13

    .line 954
    .local v13, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v3, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Certificate policies extension could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v13, v0, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 965
    .local v13, "e":Ljava/util/Enumeration;
    .restart local v28    # "pinfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    .restart local v30    # "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v14

    .line 967
    .local v14, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Policy information could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 977
    .end local v14    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v14

    .line 980
    .local v14, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v3, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy qualifier info set could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 1011
    .end local v7    # "pq":Ljava/util/Set;
    .end local v13    # "e":Ljava/util/Enumeration;
    .end local v14    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v15    # "idp_found":Z
    .end local v24    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v27    # "nodes_i":Ljava/util/Iterator;
    .end local v28    # "pinfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    .end local v30    # "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_9
    if-gtz p4, :cond_2

    .line 1013
    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 1014
    .restart local v27    # "nodes_i":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1016
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1017
    .restart local v24    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1019
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1020
    .restart local v6    # "p_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->removeChild(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 1021
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->remove()V

    .line 1022
    add-int/lit8 v18, v4, -0x1

    .local v18, "k":I
    :goto_3
    if-ltz v18, :cond_a

    .line 1024
    aget-object v26, p2, v18

    .line 1025
    .local v26, "nodes":Ljava/util/List;
    const/16 v19, 0x0

    .local v19, "l":I
    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_b

    .line 1027
    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1028
    .local v25, "node2":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1030
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v10

    .line 1032
    if-nez v10, :cond_c

    .line 1022
    .end local v25    # "node2":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_b
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    .line 1025
    .restart local v25    # "node2":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1044
    .end local v6    # "p_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "id_p":Ljava/lang/String;
    .end local v16    # "it_idp":Ljava/util/Iterator;
    .end local v17    # "j":I
    .end local v18    # "k":I
    .end local v19    # "l":I
    .end local v20    # "m_idp":Ljava/util/Map;
    .end local v22    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v24    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v25    # "node2":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v26    # "nodes":Ljava/util/List;
    .end local v27    # "nodes_i":Ljava/util/Iterator;
    .end local v31    # "s_idp":Ljava/util/Set;
    :cond_d
    return-object v10
.end method

.method protected static prepareNextCertA(Ljava/security/cert/CertPath;I)V
    .locals 13
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1052
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1053
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1058
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v8, 0x0

    .line 1061
    .local v8, "pm":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v10, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v0, v10}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1069
    if-eqz v8, :cond_2

    .line 1071
    move-object v7, v8

    .line 1073
    .local v7, "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 1075
    const/4 v4, 0x0

    .line 1076
    .local v4, "issuerDomainPolicy":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    const/4 v9, 0x0

    .line 1079
    .local v9, "subjectDomainPolicy":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :try_start_1
    invoke-virtual {v7, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 1081
    .local v6, "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    .line 1082
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 1090
    const-string v10, "2.5.29.32.0"

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1093
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "IssuerDomainPolicy is anyPolicy"

    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1064
    .end local v4    # "issuerDomainPolicy":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "j":I
    .end local v6    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v7    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v9    # "subjectDomainPolicy":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :catch_0
    move-exception v3

    .line 1066
    .local v3, "ex":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v10, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Policy mappings extension could not be decoded."

    invoke-direct {v10, v11, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1084
    .end local v3    # "ex":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v4    # "issuerDomainPolicy":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .restart local v5    # "j":I
    .restart local v7    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v9    # "subjectDomainPolicy":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :catch_1
    move-exception v2

    .line 1086
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Policy mappings extension contents could not be decoded."

    invoke-direct {v10, v11, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1096
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_0
    const-string v10, "2.5.29.32.0"

    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1099
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "SubjectDomainPolicy is anyPolicy,"

    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1073
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1103
    .end local v4    # "issuerDomainPolicy":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "j":I
    .end local v6    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v7    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v9    # "subjectDomainPolicy":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_2
    return-void
.end method

.method protected static prepareNextCertG(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 11
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1648
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1649
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1653
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v6, 0x0

    .line 1656
    .local v6, "nc":Lorg/spongycastle/asn1/x509/NameConstraints;
    :try_start_0
    sget-object v9, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v9}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 1658
    .local v7, "ncSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    if-eqz v7, :cond_0

    .line 1660
    invoke-static {v7}, Lorg/spongycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/NameConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1668
    :cond_0
    if-eqz v6, :cond_2

    .line 1674
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v8

    .line 1675
    .local v8, "permitted":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    if-eqz v8, :cond_1

    .line 1679
    :try_start_1
    invoke-virtual {p2, v8}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lorg/spongycastle/asn1/x509/GeneralSubtree;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1691
    :cond_1
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v4

    .line 1692
    .local v4, "excluded":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    if-eqz v4, :cond_2

    .line 1694
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, v4

    if-eq v5, v9, :cond_2

    .line 1697
    :try_start_2
    aget-object v9, v4, v5

    invoke-virtual {p2, v9}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lorg/spongycastle/asn1/x509/GeneralSubtree;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1694
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1663
    .end local v4    # "excluded":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .end local v5    # "i":I
    .end local v7    # "ncSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v8    # "permitted":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    :catch_0
    move-exception v2

    .line 1665
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Name constraints extension could not be decoded."

    invoke-direct {v9, v10, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1681
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "ncSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v8    # "permitted":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    :catch_1
    move-exception v3

    .line 1683
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v9, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Permitted subtrees cannot be build from name constraints extension."

    invoke-direct {v9, v10, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1699
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v4    # "excluded":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .restart local v5    # "i":I
    :catch_2
    move-exception v3

    .line 1701
    .restart local v3    # "ex":Ljava/lang/Exception;
    new-instance v9, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Excluded subtrees cannot be build from name constraints extension."

    invoke-direct {v9, v10, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1706
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "excluded":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .end local v5    # "i":I
    .end local v8    # "permitted":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    :cond_2
    return-void
.end method

.method protected static prepareNextCertH1(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I

    .prologue
    .line 2216
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2217
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2221
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2226
    if-eqz p2, :cond_0

    .line 2228
    add-int/lit8 p2, p2, -0x1

    .line 2231
    .end local p2    # "explicitPolicy":I
    :cond_0
    return p2
.end method

.method protected static prepareNextCertH2(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I

    .prologue
    .line 2239
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2240
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2244
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2249
    if-eqz p2, :cond_0

    .line 2251
    add-int/lit8 p2, p2, -0x1

    .line 2254
    .end local p2    # "policyMapping":I
    :cond_0
    return p2
.end method

.method protected static prepareNextCertH3(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I

    .prologue
    .line 2262
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2263
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2267
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2272
    if-eqz p2, :cond_0

    .line 2274
    add-int/lit8 p2, p2, -0x1

    .line 2277
    .end local p2    # "inhibitAnyPolicy":I
    :cond_0
    return p2
.end method

.method protected static prepareNextCertI1(Ljava/security/cert/CertPath;II)I
    .locals 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1539
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1540
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1544
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 1547
    .local v4, "pc":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v7, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v7}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1558
    if-eqz v4, :cond_1

    .line 1560
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 1562
    .local v5, "policyConstraints":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1567
    :try_start_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 1568
    .local v2, "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    if-nez v7, :cond_0

    .line 1570
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 1571
    .local v6, "tmpInt":I
    if-ge v6, p2, :cond_1

    .line 1585
    .end local v2    # "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .end local v5    # "policyConstraints":Ljava/util/Enumeration;
    .end local v6    # "tmpInt":I
    :goto_0
    return v6

    .line 1550
    :catch_0
    move-exception v3

    .line 1552
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1578
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "policyConstraints":Ljava/util/Enumeration;
    :catch_1
    move-exception v3

    .line 1580
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "policyConstraints":Ljava/util/Enumeration;
    :cond_1
    move v6, p2

    .line 1585
    goto :goto_0
.end method

.method protected static prepareNextCertI2(Ljava/security/cert/CertPath;II)I
    .locals 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1594
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1595
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1599
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 1602
    .local v4, "pc":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v7, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v7}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1613
    if-eqz v4, :cond_1

    .line 1615
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 1617
    .local v5, "policyConstraints":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1621
    :try_start_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 1622
    .local v2, "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1624
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 1625
    .local v6, "tmpInt":I
    if-ge v6, p2, :cond_1

    .line 1639
    .end local v2    # "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .end local v5    # "policyConstraints":Ljava/util/Enumeration;
    .end local v6    # "tmpInt":I
    :goto_0
    return v6

    .line 1605
    :catch_0
    move-exception v3

    .line 1607
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1632
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "policyConstraints":Ljava/util/Enumeration;
    :catch_1
    move-exception v3

    .line 1634
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "policyConstraints":Ljava/util/Enumeration;
    :cond_1
    move v6, p2

    .line 1639
    goto :goto_0
.end method

.method protected static prepareNextCertJ(Ljava/security/cert/CertPath;II)I
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2031
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2032
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2036
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 2039
    .local v4, "iap":Lorg/spongycastle/asn1/ASN1Integer;
    :try_start_0
    sget-object v5, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v1, v5}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2048
    if-eqz v4, :cond_0

    .line 2050
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 2052
    .local v0, "_inhibitAnyPolicy":I
    if-ge v0, p2, :cond_0

    .line 2057
    .end local v0    # "_inhibitAnyPolicy":I
    :goto_0
    return v0

    .line 2042
    :catch_0
    move-exception v3

    .line 2044
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Inhibit any-policy extension cannot be decoded."

    invoke-direct {v5, v6, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    move v0, p2

    .line 2057
    goto :goto_0
.end method

.method protected static prepareNextCertK(Ljava/security/cert/CertPath;I)V
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2065
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2066
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2070
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .line 2073
    .local v0, "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_start_0
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2081
    if-eqz v0, :cond_0

    .line 2083
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2085
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Not a CA certificate"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2076
    :catch_0
    move-exception v3

    .line 2078
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Basic constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2090
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2092
    :cond_1
    return-void
.end method

.method protected static prepareNextCertL(Ljava/security/cert/CertPath;II)I
    .locals 5
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2100
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2101
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2105
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2107
    if-gtz p2, :cond_0

    .line 2109
    new-instance v2, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Max path length not greater than zero"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 2112
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 2114
    .end local p2    # "maxPathLength":I
    :cond_1
    return p2
.end method

.method protected static prepareNextCertM(Ljava/security/cert/CertPath;II)I
    .locals 8
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2123
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 2124
    .local v4, "certs":Ljava/util/List;
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 2129
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2132
    .local v2, "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_start_0
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2140
    if-eqz v2, :cond_0

    .line 2142
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    .line 2144
    .local v0, "_pathLengthConstraint":Ljava/math/BigInteger;
    if-eqz v0, :cond_0

    .line 2146
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 2148
    .local v1, "_plc":I
    if-ge v1, p2, :cond_0

    .line 2154
    .end local v0    # "_pathLengthConstraint":Ljava/math/BigInteger;
    .end local v1    # "_plc":I
    :goto_0
    return v1

    .line 2135
    :catch_0
    move-exception v5

    .line 2137
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Basic constraints extension cannot be decoded."

    invoke-direct {v6, v7, v5, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    move v1, p2

    .line 2154
    goto :goto_0
.end method

.method protected static prepareNextCertN(Ljava/security/cert/CertPath;I)V
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2162
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2163
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2168
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 2170
    .local v0, "_usage":[Z
    if-eqz v0, :cond_0

    const/4 v3, 0x5

    aget-boolean v3, v0, v3

    if-nez v3, :cond_0

    .line 2172
    new-instance v3, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Issuer certificate keyusage extension is critical and does not permit key signing."

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 2176
    :cond_0
    return-void
.end method

.method protected static prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "criticalExtensions"    # Ljava/util/Set;
    .param p3, "pathCheckers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2185
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2186
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2192
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2193
    .local v3, "tmpIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2197
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v4, v0, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2199
    :catch_0
    move-exception v2

    .line 2201
    .local v2, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2204
    .end local v2    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2206
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate has unsupported critical extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2209
    :cond_1
    return-void
.end method

.method protected static processCRLB1(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 9
    .param p0, "dp"    # Lorg/spongycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 290
    sget-object v7, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v7}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 291
    .local v2, "idp":Lorg/spongycastle/asn1/ASN1Primitive;
    const/4 v3, 0x0

    .line 292
    .local v3, "isIndirect":Z
    if-eqz v2, :cond_0

    .line 294
    invoke-static {v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 296
    const/4 v3, 0x1

    .line 299
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    .line 301
    .local v4, "issuerBytes":[B
    const/4 v6, 0x0

    .line 302
    .local v6, "matchIssuer":Z
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 304
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 305
    .local v1, "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    array-length v7, v1

    if-ge v5, v7, :cond_2

    .line 307
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 311
    :try_start_0
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-interface {v7}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v7

    invoke-static {v7, v4}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 313
    const/4 v6, 0x1

    .line 305
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v7, v8, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 323
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v6, :cond_3

    if-nez v3, :cond_3

    .line 325
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v8, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {v7, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 327
    :cond_3
    if-nez v6, :cond_5

    .line 329
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {v7, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 334
    .end local v1    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v5    # "j":I
    :cond_4
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 337
    const/4 v6, 0x1

    .line 340
    :cond_5
    if-nez v6, :cond_6

    .line 342
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v8, "Cannot find matching CRL issuer for certificate."

    invoke-direct {v7, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 344
    :cond_6
    return-void
.end method

.method protected static processCRLB2(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 14
    .param p0, "dp"    # Lorg/spongycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 103
    const/4 v5, 0x0

    .line 106
    .local v5, "idp":Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v10, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 115
    if-eqz v5, :cond_11

    .line 117
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 120
    invoke-static {v5}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    .line 121
    .local v2, "dpName":Lorg/spongycastle/asn1/x509/DistributionPointName;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v8, "names":Ljava/util/List;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-nez v10, :cond_0

    .line 125
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 126
    .local v4, "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    array-length v10, v4

    if-ge v6, v10, :cond_0

    .line 128
    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "dpName":Lorg/spongycastle/asn1/x509/DistributionPointName;
    .end local v4    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v6    # "j":I
    .end local v8    # "names":Ljava/util/List;
    :catch_0
    move-exception v3

    .line 111
    .local v3, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "Issuing distribution point extension could not be decoded."

    invoke-direct {v10, v11, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 131
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "dpName":Lorg/spongycastle/asn1/x509/DistributionPointName;
    .restart local v8    # "names":Ljava/util/List;
    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-ne v10, v12, :cond_2

    .line 133
    new-instance v9, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 136
    .local v9, "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :try_start_1
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/ASN1Sequence;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 139
    .local v3, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 141
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v9, v10}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 144
    .end local v3    # "e":Ljava/util/Enumeration;
    :catch_1
    move-exception v3

    .line 146
    .local v3, "e":Ljava/io/IOException;
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "Could not read CRL issuer."

    invoke-direct {v10, v11, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 148
    .local v3, "e":Ljava/util/Enumeration;
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    new-instance v10, Lorg/spongycastle/asn1/x509/GeneralName;

    new-instance v11, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v11, v9}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v11}, Lorg/spongycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Name;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x509/X509Name;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v9    # "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_2
    const/4 v7, 0x0

    .line 154
    .local v7, "matches":Z
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 156
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    .line 157
    const/4 v4, 0x0

    .line 158
    .restart local v4    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-nez v10, :cond_3

    .line 160
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 162
    :cond_3
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-ne v10, v12, :cond_6

    .line 164
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 166
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 182
    :goto_2
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_3
    array-length v10, v4

    if-ge v6, v10, :cond_6

    .line 184
    aget-object v10, v4, v6

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-interface {v10}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 185
    .restart local v3    # "e":Ljava/util/Enumeration;
    new-instance v9, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 186
    .restart local v9    # "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :goto_4
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 188
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v9, v10}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_4

    .line 170
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v6    # "j":I
    .end local v9    # "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_4
    new-array v4, v12, [Lorg/spongycastle/asn1/x509/GeneralName;

    .line 173
    const/4 v11, 0x0

    :try_start_2
    new-instance v12, Lorg/spongycastle/asn1/x509/GeneralName;

    new-instance v13, Lorg/spongycastle/asn1/x509/X509Name;

    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/ASN1Sequence;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v13, v10}, Lorg/spongycastle/asn1/x509/X509Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-direct {v12, v13}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x509/X509Name;)V

    aput-object v12, v4, v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 177
    :catch_2
    move-exception v3

    .line 179
    .local v3, "e":Ljava/io/IOException;
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "Could not read certificate issuer."

    invoke-direct {v10, v11, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 190
    .local v3, "e":Ljava/util/Enumeration;
    .restart local v6    # "j":I
    .restart local v9    # "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_5
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 191
    new-instance v10, Lorg/spongycastle/asn1/x509/GeneralName;

    new-instance v11, Lorg/spongycastle/asn1/x509/X509Name;

    new-instance v12, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v12, v9}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v11, v12}, Lorg/spongycastle/asn1/x509/X509Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-direct {v10, v11}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x509/X509Name;)V

    aput-object v10, v4, v6

    .line 182
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 194
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v6    # "j":I
    .end local v9    # "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_6
    if-eqz v4, :cond_7

    .line 196
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_5
    array-length v10, v4

    if-ge v6, v10, :cond_7

    .line 198
    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 200
    const/4 v7, 0x1

    .line 205
    .end local v6    # "j":I
    :cond_7
    if-nez v7, :cond_d

    .line 207
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v10, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 196
    .restart local v6    # "j":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 216
    .end local v4    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v6    # "j":I
    :cond_9
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v10

    if-nez v10, :cond_a

    .line 218
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {v10, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 221
    :cond_a
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 222
    .restart local v4    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_6
    array-length v10, v4

    if-ge v6, v10, :cond_b

    .line 224
    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 226
    const/4 v7, 0x1

    .line 230
    :cond_b
    if-nez v7, :cond_d

    .line 232
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v10, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 222
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 237
    .end local v2    # "dpName":Lorg/spongycastle/asn1/x509/DistributionPointName;
    .end local v4    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v6    # "j":I
    .end local v7    # "matches":Z
    .end local v8    # "names":Ljava/util/List;
    :cond_d
    const/4 v1, 0x0

    .line 240
    .local v1, "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_start_3
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Extension;

    move-object v10, v0

    sget-object v11, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v10, v11}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 248
    instance-of v10, p1, Ljava/security/cert/X509Certificate;

    if-eqz v10, :cond_10

    .line 251
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 253
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "CA Cert CRL only contains user certificates."

    invoke-direct {v10, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 243
    :catch_3
    move-exception v3

    .line 245
    .local v3, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "Basic constraints extension could not be decoded."

    invoke-direct {v10, v11, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 257
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_e
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v10

    if-nez v10, :cond_10

    .line 259
    :cond_f
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "End CRL only contains CA certificates."

    invoke-direct {v10, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 264
    :cond_10
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 266
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {v10, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 269
    .end local v1    # "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    :cond_11
    return-void
.end method

.method protected static processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 8
    .param p0, "deltaCRL"    # Ljava/security/cert/X509CRL;
    .param p1, "completeCRL"    # Ljava/security/cert/X509CRL;
    .param p2, "pkixParams"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 733
    if-nez p0, :cond_1

    .line 831
    :cond_0
    return-void

    .line 737
    :cond_1
    const/4 v1, 0x0

    .line 740
    .local v1, "completeidp":Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p1, v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 748
    invoke-virtual {p2}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 751
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 753
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Complete CRL issuer does not match delta CRL issuer."

    invoke-direct {v6, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 743
    :catch_0
    move-exception v4

    .line 745
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension could not be decoded."

    invoke-direct {v6, v7, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 757
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    .line 760
    .local v3, "deltaidp":Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_1
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 769
    const/4 v5, 0x0

    .line 770
    .local v5, "match":Z
    if-nez v1, :cond_4

    .line 772
    if-nez v3, :cond_3

    .line 774
    const/4 v5, 0x1

    .line 784
    :cond_3
    :goto_0
    if-nez v5, :cond_5

    .line 786
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    invoke-direct {v6, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 763
    .end local v5    # "match":Z
    :catch_1
    move-exception v4

    .line 765
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension from delta CRL could not be decoded."

    invoke-direct {v6, v7, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 779
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "match":Z
    :cond_4
    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 781
    const/4 v5, 0x1

    goto :goto_0

    .line 791
    :cond_5
    const/4 v0, 0x0

    .line 794
    .local v0, "completeKeyIdentifier":Lorg/spongycastle/asn1/ASN1Primitive;
    :try_start_2
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p1, v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_2
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 803
    const/4 v2, 0x0

    .line 806
    .local v2, "deltaKeyIdentifier":Lorg/spongycastle/asn1/ASN1Primitive;
    :try_start_3
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p0, v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 815
    if-nez v0, :cond_6

    .line 817
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL authority key identifier is null."

    invoke-direct {v6, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 797
    .end local v2    # "deltaKeyIdentifier":Lorg/spongycastle/asn1/ASN1Primitive;
    :catch_2
    move-exception v4

    .line 799
    .local v4, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from complete CRL."

    invoke-direct {v6, v7, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 809
    .end local v4    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v2    # "deltaKeyIdentifier":Lorg/spongycastle/asn1/ASN1Primitive;
    :catch_3
    move-exception v4

    .line 811
    .restart local v4    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from delta CRL."

    invoke-direct {v6, v7, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 820
    .end local v4    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :cond_6
    if-nez v2, :cond_7

    .line 822
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Delta CRL authority key identifier is null."

    invoke-direct {v6, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 825
    :cond_7
    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 827
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    invoke-direct {v6, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected static processCRLD(Ljava/security/cert/X509CRL;Lorg/spongycastle/asn1/x509/DistributionPoint;)Lorg/spongycastle/jce/provider/ReasonsMask;
    .locals 5
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "dp"    # Lorg/spongycastle/asn1/x509/DistributionPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 351
    const/4 v1, 0x0

    .line 354
    .local v1, "idp":Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 362
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 364
    new-instance v2, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V

    new-instance v3, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/jce/provider/ReasonsMask;->intersect(Lorg/spongycastle/jce/provider/ReasonsMask;)Lorg/spongycastle/jce/provider/ReasonsMask;

    move-result-object v2

    .line 372
    :goto_0
    return-object v2

    .line 357
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 367
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_2

    .line 369
    sget-object v2, Lorg/spongycastle/jce/provider/ReasonsMask;->allReasons:Lorg/spongycastle/jce/provider/ReasonsMask;

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_3

    sget-object v2, Lorg/spongycastle/jce/provider/ReasonsMask;->allReasons:Lorg/spongycastle/jce/provider/ReasonsMask;

    move-object v3, v2

    :goto_1
    if-nez v1, :cond_4

    sget-object v2, Lorg/spongycastle/jce/provider/ReasonsMask;->allReasons:Lorg/spongycastle/jce/provider/ReasonsMask;

    :goto_2
    invoke-virtual {v3, v2}, Lorg/spongycastle/jce/provider/ReasonsMask;->intersect(Lorg/spongycastle/jce/provider/ReasonsMask;)Lorg/spongycastle/jce/provider/ReasonsMask;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v2, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V

    move-object v3, v2

    goto :goto_1

    :cond_4
    new-instance v2, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V

    goto :goto_2
.end method

.method protected static processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;
    .locals 22
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p4, "paramsPKIX"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .param p5, "certPathCerts"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 448
    new-instance v13, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v13}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 451
    .local v13, "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v9

    .line 452
    .local v9, "issuerPrincipal":[B
    invoke-virtual {v13, v9}, Lorg/spongycastle/x509/X509CertStoreSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v6

    .line 465
    .local v6, "coll":Ljava/util/Collection;
    invoke-virtual/range {p4 .. p4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 466
    invoke-virtual/range {p4 .. p4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 477
    .local v3, "cert_it":Ljava/util/Iterator;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v18, "validCerts":Ljava/util/List;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v19, "validKeys":Ljava/util/List;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 482
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/cert/X509Certificate;

    .line 488
    .local v16, "signingCert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 490
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 454
    .end local v3    # "cert_it":Ljava/util/Iterator;
    .end local v6    # "coll":Ljava/util/Collection;
    .end local v9    # "issuerPrincipal":[B
    .end local v16    # "signingCert":Ljava/security/cert/X509Certificate;
    .end local v18    # "validCerts":Ljava/util/List;
    .end local v19    # "validKeys":Ljava/util/List;
    :catch_0
    move-exception v7

    .line 456
    .local v7, "e":Ljava/io/IOException;
    new-instance v20, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v21, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 468
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v9    # "issuerPrincipal":[B
    :catch_1
    move-exception v7

    .line 470
    .local v7, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v20, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v21, "Issuer certificate for CRL cannot be searched."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 496
    .end local v7    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v3    # "cert_it":Ljava/util/Iterator;
    .restart local v6    # "coll":Ljava/util/Collection;
    .restart local v16    # "signingCert":Ljava/security/cert/X509Certificate;
    .restart local v18    # "validCerts":Ljava/util/List;
    .restart local v19    # "validKeys":Ljava/util/List;
    :cond_0
    :try_start_2
    const-string v20, "PKIX"

    const-string v21, "SC"

    invoke-static/range {v20 .. v21}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v2

    .line 497
    .local v2, "builder":Ljava/security/cert/CertPathBuilder;
    new-instance v14, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v14}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V
    :try_end_2
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 498
    .end local v13    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    .local v14, "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    :try_start_3
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/spongycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 499
    invoke-virtual/range {p4 .. p4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    .line 500
    .local v17, "temp":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 501
    invoke-static/range {v17 .. v17}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-result-object v12

    check-cast v12, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    .line 512
    .local v12, "params":Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;
    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 514
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 520
    :goto_1
    invoke-virtual {v2, v12}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 521
    .local v4, "certs":Ljava/util/List;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v4, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v13, v14

    .line 536
    .end local v14    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    .restart local v13    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    goto/16 :goto_0

    .line 518
    .end local v4    # "certs":Ljava/util/List;
    .end local v13    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    .restart local v14    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->setRevocationEnabled(Z)V
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    .line 524
    .end local v12    # "params":Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;
    .end local v17    # "temp":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    :catch_2
    move-exception v7

    move-object v13, v14

    .line 526
    .end local v2    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v14    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    .local v7, "e":Ljava/security/cert/CertPathBuilderException;
    .restart local v13    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    :goto_2
    new-instance v20, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v21, "Internal error."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 528
    .end local v7    # "e":Ljava/security/cert/CertPathBuilderException;
    :catch_3
    move-exception v7

    .line 530
    .local v7, "e":Ljava/security/cert/CertPathValidatorException;
    :goto_3
    new-instance v20, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v21, "Public key of issuer certificate of CRL could not be retrieved."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 532
    .end local v7    # "e":Ljava/security/cert/CertPathValidatorException;
    :catch_4
    move-exception v7

    .line 534
    .local v7, "e":Ljava/lang/Exception;
    :goto_4
    new-instance v20, Ljava/lang/RuntimeException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 538
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v16    # "signingCert":Ljava/security/cert/X509Certificate;
    :cond_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 540
    .local v5, "checkKeys":Ljava/util/Set;
    const/4 v11, 0x0

    .line 541
    .local v11, "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_5

    .line 543
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509Certificate;

    .line 544
    .local v15, "signCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v10

    .line 546
    .local v10, "keyusage":[Z
    if-eqz v10, :cond_4

    array-length v0, v10

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    const/16 v20, 0x6

    aget-boolean v20, v10, v20

    if-nez v20, :cond_4

    .line 548
    :cond_3
    new-instance v11, Lorg/spongycastle/jce/provider/AnnotatedException;

    .end local v11    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    const-string v20, "Issuer certificate key usage extension does not permit CRL signing."

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 541
    .restart local v11    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 553
    :cond_4
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 557
    .end local v10    # "keyusage":[Z
    .end local v15    # "signCert":Ljava/security/cert/X509Certificate;
    :cond_5
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_6

    if-nez v11, :cond_6

    .line 559
    new-instance v20, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v21, "Cannot find a valid issuer certificate."

    invoke-direct/range {v20 .. v21}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 561
    :cond_6
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_7

    if-eqz v11, :cond_7

    .line 563
    throw v11

    .line 566
    :cond_7
    return-object v5

    .line 532
    .end local v5    # "checkKeys":Ljava/util/Set;
    .end local v8    # "i":I
    .end local v11    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v13    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    .restart local v2    # "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v14    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    .restart local v16    # "signingCert":Ljava/security/cert/X509Certificate;
    :catch_5
    move-exception v7

    move-object v13, v14

    .end local v14    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    .restart local v13    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    goto :goto_4

    .line 528
    .end local v13    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    .restart local v14    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    :catch_6
    move-exception v7

    move-object v13, v14

    .end local v14    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    .restart local v13    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    goto :goto_3

    .line 524
    .end local v2    # "builder":Ljava/security/cert/CertPathBuilder;
    :catch_7
    move-exception v7

    goto/16 :goto_2
.end method

.method protected static processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .locals 6
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "keys"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 574
    const/4 v3, 0x0

    .line 575
    .local v3, "lastException":Ljava/lang/Exception;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 577
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    .line 580
    .local v2, "key":Ljava/security/PublicKey;
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    return-object v2

    .line 583
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v0

    .line 587
    goto :goto_0

    .line 588
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "key":Ljava/security/PublicKey;
    :cond_0
    new-instance v4, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot verify CRL."

    invoke-direct {v4, v5, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .locals 6
    .param p0, "deltacrls"    # Ljava/util/Set;
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 596
    const/4 v3, 0x0

    .line 598
    .local v3, "lastException":Ljava/lang/Exception;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 600
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 603
    .local v0, "crl":Ljava/security/cert/X509CRL;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .end local v0    # "crl":Ljava/security/cert/X509CRL;
    :goto_1
    return-object v0

    .line 606
    .restart local v0    # "crl":Ljava/security/cert/X509CRL;
    :catch_0
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/Exception;
    move-object v3, v1

    .line 610
    goto :goto_0

    .line 612
    .end local v0    # "crl":Ljava/security/cert/X509CRL;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz v3, :cond_1

    .line 614
    new-instance v4, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot verify delta CRL."

    invoke-direct {v4, v5, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 616
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 1
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "deltacrl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lorg/spongycastle/jce/provider/CertStatus;
    .param p4, "pkixParams"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 841
    invoke-virtual {p4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 843
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V

    .line 845
    :cond_0
    return-void
.end method

.method protected static processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V
    .locals 2
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "completecrl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lorg/spongycastle/jce/provider/CertStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 854
    invoke-virtual {p3}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 856
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V

    .line 858
    :cond_0
    return-void
.end method

.method protected static processCertA(Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "paramsPKIX"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .param p2, "index"    # I
    .param p3, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p4, "verificationAlreadyPerformed"    # Z
    .param p5, "workingIssuerName"    # Ljavax/security/auth/x500/X500Principal;
    .param p6, "sign"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1461
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 1462
    .local v5, "certs":Ljava/util/List;
    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1466
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-nez p4, :cond_0

    .line 1472
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p3, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    :cond_0
    :try_start_1
    invoke-static {p1, p0, p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1504
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1508
    :try_start_2
    invoke-static {p1, p0, p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v2

    move-object v0, p1

    move-object v3, p6

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->checkCRLs(Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;)V
    :try_end_2
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1525
    :cond_1
    invoke-static {v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1527
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IssuerName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not match SubjectName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") of signing certificate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1475
    :catch_0
    move-exception v7

    .line 1477
    .local v7, "e":Ljava/security/GeneralSecurityException;
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate certificate signature."

    invoke-direct {v0, v2, v7, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1488
    .end local v7    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v7

    .line 1490
    .local v7, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1492
    .end local v7    # "e":Ljava/security/cert/CertificateExpiredException;
    :catch_2
    move-exception v7

    .line 1494
    .local v7, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1496
    .end local v7    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_3
    move-exception v7

    .line 1498
    .local v7, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate time of certificate."

    invoke-direct {v0, v2, v7, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1511
    .end local v7    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :catch_4
    move-exception v7

    .line 1513
    .restart local v7    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    move-object v6, v7

    .line 1514
    .local v6, "cause":Ljava/lang/Throwable;
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1516
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 1518
    :cond_2
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v6, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1531
    .end local v6    # "cause":Ljava/lang/Throwable;
    .end local v7    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :cond_3
    return-void
.end method

.method protected static processCertBC(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 21
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1157
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v7

    .line 1158
    .local v7, "certs":Ljava/util/List;
    move/from16 v0, p1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 1159
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    .line 1161
    .local v17, "n":I
    sub-int v15, v17, p1

    .line 1165
    .local v15, "i":I
    invoke-static {v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v19

    if-eqz v19, :cond_0

    move/from16 v0, v17

    if-lt v15, v0, :cond_2

    .line 1167
    :cond_0
    invoke-static {v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v18

    .line 1168
    .local v18, "principal":Ljavax/security/auth/x500/X500Principal;
    new-instance v4, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual/range {v18 .. v18}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 1173
    .local v4, "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    :try_start_0
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 1183
    .local v8, "dns":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 1184
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lorg/spongycastle/asn1/ASN1Sequence;)V
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1192
    const/4 v5, 0x0

    .line 1195
    .local v5, "altName":Lorg/spongycastle/asn1/x509/GeneralNames;
    :try_start_2
    sget-object v19, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v5

    .line 1203
    new-instance v19, Lorg/spongycastle/asn1/x509/X509Name;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Lorg/spongycastle/asn1/x509/X509Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    sget-object v20, Lorg/spongycastle/asn1/x509/X509Name;->EmailAddress:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v19 .. v20}, Lorg/spongycastle/asn1/x509/X509Name;->getValues(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/Vector;

    move-result-object v12

    .line 1204
    .local v12, "emails":Ljava/util/Vector;
    invoke-virtual {v12}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v9

    .local v9, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1206
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1207
    .local v10, "email":Ljava/lang/String;
    new-instance v11, Lorg/spongycastle/asn1/x509/GeneralName;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v11, v0, v10}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 1210
    .local v11, "emailAsGeneralName":Lorg/spongycastle/asn1/x509/GeneralName;
    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lorg/spongycastle/asn1/x509/GeneralName;)V

    .line 1211
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lorg/spongycastle/asn1/x509/GeneralName;)V
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1213
    :catch_0
    move-exception v13

    .line 1215
    .local v13, "ex":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject alternative email failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v13, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1175
    .end local v5    # "altName":Lorg/spongycastle/asn1/x509/GeneralNames;
    .end local v8    # "dns":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v9    # "e":Ljava/util/Enumeration;
    .end local v10    # "email":Ljava/lang/String;
    .end local v11    # "emailAsGeneralName":Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v12    # "emails":Ljava/util/Vector;
    .end local v13    # "ex":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    :catch_1
    move-exception v9

    .line 1177
    .local v9, "e":Ljava/lang/Exception;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Exception extracting subject name when checking subtrees."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1186
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "dns":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v9

    .line 1188
    .local v9, "e":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1198
    .end local v9    # "e":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    .restart local v5    # "altName":Lorg/spongycastle/asn1/x509/GeneralNames;
    :catch_3
    move-exception v9

    .line 1200
    .local v9, "e":Ljava/lang/Exception;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subject alternative name extension could not be decoded."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1219
    .local v9, "e":Ljava/util/Enumeration;
    .restart local v12    # "emails":Ljava/util/Vector;
    :cond_1
    if-eqz v5, :cond_2

    .line 1221
    const/4 v14, 0x0

    .line 1224
    .local v14, "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    :try_start_4
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v14

    .line 1231
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_1
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 1236
    :try_start_5
    aget-object v19, v14, v16

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lorg/spongycastle/asn1/x509/GeneralName;)V

    .line 1237
    aget-object v19, v14, v16

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lorg/spongycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1231
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1226
    .end local v16    # "j":I
    :catch_4
    move-exception v9

    .line 1228
    .local v9, "e":Ljava/lang/Exception;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subject alternative name contents could not be decoded."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1239
    .local v9, "e":Ljava/util/Enumeration;
    .restart local v16    # "j":I
    :catch_5
    move-exception v9

    .line 1241
    .local v9, "e":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject alternative name failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1247
    .end local v4    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v5    # "altName":Lorg/spongycastle/asn1/x509/GeneralNames;
    .end local v8    # "dns":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v9    # "e":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v12    # "emails":Ljava/util/Vector;
    .end local v14    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v16    # "j":I
    .end local v18    # "principal":Ljavax/security/auth/x500/X500Principal;
    :cond_2
    return-void
.end method

.method protected static processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 38
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "acceptablePolicies"    # Ljava/util/Set;
    .param p3, "validPolicyTree"    # Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .param p4, "policyNodes"    # [Ljava/util/List;
    .param p5, "inhibitAnyPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1258
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v20

    .line 1259
    .local v20, "certs":Ljava/util/List;
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/security/cert/X509Certificate;

    .line 1260
    .local v18, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v29

    .line 1262
    .local v29, "n":I
    sub-int v5, v29, p1

    .line 1267
    .local v5, "i":I
    const/16 v19, 0x0

    .line 1270
    .local v19, "certPolicies":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 1278
    if-eqz v19, :cond_11

    if-eqz p3, :cond_11

    .line 1283
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v23

    .line 1284
    .local v23, "e":Ljava/util/Enumeration;
    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    .line 1286
    .local v35, "pols":Ljava/util/Set;
    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1288
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v33

    .line 1289
    .local v33, "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    invoke-virtual/range {v33 .. v33}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v34

    .line 1291
    .local v34, "pOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual/range {v34 .. v34}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1293
    const-string v4, "2.5.29.32.0"

    invoke-virtual/range {v34 .. v34}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1295
    const/16 v36, 0x0

    .line 1298
    .local v36, "pq":Ljava/util/Set;
    :try_start_1
    invoke-virtual/range {v33 .. v33}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v36

    .line 1306
    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-static {v5, v0, v1, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->processCertD1i(I[Ljava/util/List;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v28

    .line 1308
    .local v28, "match":Z
    if-nez v28, :cond_0

    .line 1310
    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-static {v5, v0, v1, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->processCertD1ii(I[Ljava/util/List;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V

    goto :goto_0

    .line 1273
    .end local v23    # "e":Ljava/util/Enumeration;
    .end local v28    # "match":Z
    .end local v33    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    .end local v34    # "pOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v35    # "pols":Ljava/util/Set;
    .end local v36    # "pq":Ljava/util/Set;
    :catch_0
    move-exception v23

    .line 1275
    .local v23, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Could not read certificate policies extension from certificate."

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v10, v0, v1, v2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1300
    .local v23, "e":Ljava/util/Enumeration;
    .restart local v33    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    .restart local v34    # "pOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .restart local v35    # "pols":Ljava/util/Set;
    .restart local v36    # "pq":Ljava/util/Set;
    :catch_1
    move-exception v24

    .line 1302
    .local v24, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Policy qualifier info set could not be build."

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v10, v0, v1, v2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1315
    .end local v24    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v33    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    .end local v34    # "pOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v36    # "pq":Ljava/util/Set;
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "2.5.29.32.0"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1317
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1318
    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1341
    :goto_1
    if-gtz p5, :cond_3

    move/from16 v0, v29

    if-ge v5, v0, :cond_d

    invoke-static/range {v18 .. v18}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1343
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v23

    .line 1345
    :cond_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1347
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v33

    .line 1349
    .restart local v33    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    const-string v4, "2.5.29.32.0"

    invoke-virtual/range {v33 .. v33}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1351
    invoke-virtual/range {v33 .. v33}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v8

    .line 1352
    .local v8, "_apq":Ljava/util/Set;
    add-int/lit8 v4, v5, -0x1

    aget-object v14, p4, v4

    .line 1354
    .local v14, "_nodes":Ljava/util/List;
    const/16 v27, 0x0

    .local v27, "k":I
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_d

    .line 1356
    move/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1358
    .local v7, "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1359
    .local v15, "_policySetIter":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1361
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 1364
    .local v16, "_tmp":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_a

    move-object/from16 v9, v16

    .line 1366
    check-cast v9, Ljava/lang/String;

    .line 1377
    .end local v16    # "_tmp":Ljava/lang/Object;
    .local v9, "_policy":Ljava/lang/String;
    :goto_4
    const/4 v13, 0x0

    .line 1378
    .local v13, "_found":Z
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v12

    .line 1380
    .local v12, "_childrenIter":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1382
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1384
    .local v11, "_child":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1386
    const/4 v13, 0x1

    goto :goto_5

    .line 1322
    .end local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "_apq":Ljava/util/Set;
    .end local v9    # "_policy":Ljava/lang/String;
    .end local v11    # "_child":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v12    # "_childrenIter":Ljava/util/Iterator;
    .end local v13    # "_found":Z
    .end local v14    # "_nodes":Ljava/util/List;
    .end local v15    # "_policySetIter":Ljava/util/Iterator;
    .end local v27    # "k":I
    .end local v33    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    :cond_7
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 1323
    .local v25, "it":Ljava/util/Iterator;
    new-instance v37, Ljava/util/HashSet;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashSet;-><init>()V

    .line 1325
    .local v37, "t1":Ljava/util/Set;
    :cond_8
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1327
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    .line 1329
    .local v32, "o":Ljava/lang/Object;
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1331
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1334
    .end local v32    # "o":Ljava/lang/Object;
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1335
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1368
    .end local v25    # "it":Ljava/util/Iterator;
    .end local v37    # "t1":Ljava/util/Set;
    .restart local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .restart local v8    # "_apq":Ljava/util/Set;
    .restart local v14    # "_nodes":Ljava/util/List;
    .restart local v15    # "_policySetIter":Ljava/util/Iterator;
    .restart local v16    # "_tmp":Ljava/lang/Object;
    .restart local v27    # "k":I
    .restart local v33    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    :cond_a
    move-object/from16 v0, v16

    instance-of v4, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v4, :cond_5

    .line 1370
    check-cast v16, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v16    # "_tmp":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_policy":Ljava/lang/String;
    goto :goto_4

    .line 1390
    .restart local v12    # "_childrenIter":Ljava/util/Iterator;
    .restart local v13    # "_found":Z
    :cond_b
    if-nez v13, :cond_5

    .line 1392
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1393
    .local v6, "_newChildExpectedPolicies":Ljava/util/Set;
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1395
    new-instance v3, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1397
    .local v3, "_newChild":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7, v3}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 1398
    aget-object v4, p4, v5

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1354
    .end local v3    # "_newChild":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "_newChildExpectedPolicies":Ljava/util/Set;
    .end local v9    # "_policy":Ljava/lang/String;
    .end local v12    # "_childrenIter":Ljava/util/Iterator;
    .end local v13    # "_found":Z
    :cond_c
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 1407
    .end local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "_apq":Ljava/util/Set;
    .end local v14    # "_nodes":Ljava/util/List;
    .end local v15    # "_policySetIter":Ljava/util/Iterator;
    .end local v27    # "k":I
    .end local v33    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    :cond_d
    move-object/from16 v17, p3

    .line 1411
    .local v17, "_validPolicyTree":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    add-int/lit8 v26, v5, -0x1

    .local v26, "j":I
    :goto_7
    if-ltz v26, :cond_10

    .line 1413
    aget-object v31, p4, v26

    .line 1415
    .local v31, "nodes":Ljava/util/List;
    const/16 v27, 0x0

    .restart local v27    # "k":I
    :goto_8
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_e

    .line 1417
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1418
    .local v30, "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1420
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v17

    .line 1422
    if-nez v17, :cond_f

    .line 1411
    .end local v30    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_e
    add-int/lit8 v26, v26, -0x1

    goto :goto_7

    .line 1415
    .restart local v30    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_f
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 1433
    .end local v27    # "k":I
    .end local v30    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v31    # "nodes":Ljava/util/List;
    :cond_10
    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v22

    .line 1435
    .local v22, "criticalExtensionOids":Ljava/util/Set;
    if-eqz v22, :cond_12

    .line 1437
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    .line 1439
    .local v21, "critical":Z
    aget-object v31, p4, v5

    .line 1440
    .restart local v31    # "nodes":Ljava/util/List;
    const/16 v26, 0x0

    :goto_9
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_12

    .line 1442
    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1443
    .restart local v30    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    .line 1440
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 1448
    .end local v17    # "_validPolicyTree":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v21    # "critical":Z
    .end local v22    # "criticalExtensionOids":Ljava/util/Set;
    .end local v23    # "e":Ljava/util/Enumeration;
    .end local v26    # "j":I
    .end local v30    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v31    # "nodes":Ljava/util/List;
    .end local v35    # "pols":Ljava/util/Set;
    :cond_11
    const/16 v17, 0x0

    :cond_12
    return-object v17
.end method

.method protected static processCertE(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1128
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 1129
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1133
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 1136
    .local v1, "certPolicies":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v0, v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1144
    if-nez v1, :cond_0

    .line 1146
    const/4 p2, 0x0

    .line 1148
    :cond_0
    return-object p2

    .line 1139
    :catch_0
    move-exception v3

    .line 1141
    .local v3, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Could not read certificate policies extension from certificate."

    invoke-direct {v4, v5, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static processCertF(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXPolicyNode;I)V
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .param p3, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1115
    if-gtz p3, :cond_0

    if-nez p2, :cond_0

    .line 1117
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "No valid policy tree found when one expected."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1120
    :cond_0
    return-void
.end method

.method protected static wrapupCertA(ILjava/security/cert/X509Certificate;)I
    .locals 1
    .param p0, "explicitPolicy"    # I
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 2301
    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2303
    add-int/lit8 p0, p0, -0x1

    .line 2305
    :cond_0
    return p0
.end method

.method protected static wrapupCertB(Ljava/security/cert/CertPath;II)I
    .locals 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2314
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2315
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2320
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 2323
    .local v4, "pc":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v8, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v8}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2330
    if-eqz v4, :cond_1

    .line 2332
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 2334
    .local v5, "policyConstraints":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2336
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 2337
    .local v2, "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 2342
    :pswitch_0
    const/4 v8, 0x0

    :try_start_1
    invoke-static {v2, v8}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 2350
    .local v6, "tmpInt":I
    if-nez v6, :cond_0

    move p2, v7

    .line 2358
    .end local v2    # "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .end local v5    # "policyConstraints":Ljava/util/Enumeration;
    .end local v6    # "tmpInt":I
    .end local p2    # "explicitPolicy":I
    :cond_1
    return p2

    .line 2326
    .restart local p2    # "explicitPolicy":I
    :catch_0
    move-exception v3

    .line 2328
    .local v3, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v7, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints could not be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 2344
    .end local v3    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v2    # "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .restart local v5    # "policyConstraints":Ljava/util/Enumeration;
    :catch_1
    move-exception v3

    .line 2346
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints requireExplicitPolicy field could not be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 2337
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected static wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "pathCheckers"    # Ljava/util/List;
    .param p3, "criticalExtensions"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2368
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2369
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2371
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2372
    .local v3, "tmpIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2376
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v4, v0, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2378
    :catch_0
    move-exception v2

    .line 2380
    .local v2, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Additional certificate path checker failed."

    invoke-direct {v4, v5, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2385
    .end local v2    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2387
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate has unsupported critical extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2390
    :cond_1
    return-void
.end method

.method protected static wrapupCertG(Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 21
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "paramsPKIX"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .param p2, "userInitialPolicySet"    # Ljava/util/Set;
    .param p3, "index"    # I
    .param p4, "policyNodes"    # [Ljava/util/List;
    .param p5, "validPolicyTree"    # Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .param p6, "acceptablePolicies"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2402
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v15

    .line 2411
    .local v15, "n":I
    if-nez p5, :cond_1

    .line 2413
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2415
    new-instance v18, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v19, "Explicit policy requested but none available."

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v18

    .line 2418
    :cond_0
    const/4 v12, 0x0

    .line 2566
    .local v12, "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :goto_0
    return-object v12

    .line 2420
    .end local v12    # "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_1
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2423
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 2425
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2427
    new-instance v18, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v19, "Explicit policy requested but none available."

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v18

    .line 2432
    :cond_2
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2434
    .local v10, "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_5

    .line 2436
    aget-object v8, p4, v13

    .line 2438
    .local v8, "_nodeDepth":Ljava/util/List;
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_4

    .line 2440
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2442
    .local v7, "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    const-string v18, "2.5.29.32.0"

    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2444
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    .line 2445
    .local v6, "_iter":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2447
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2438
    .end local v6    # "_iter":Ljava/util/Iterator;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2434
    .end local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2453
    .end local v8    # "_nodeDepth":Ljava/util/List;
    .end local v14    # "k":I
    :cond_5
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2454
    .local v11, "_vpnsIter":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 2456
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2457
    .restart local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    .line 2459
    .local v9, "_validPolicy":Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    goto :goto_4

    .line 2466
    .end local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "_validPolicy":Ljava/lang/String;
    :cond_7
    if-eqz p5, :cond_a

    .line 2468
    add-int/lit8 v13, v15, -0x1

    :goto_5
    if-ltz v13, :cond_a

    .line 2470
    aget-object v17, p4, v13

    .line 2472
    .local v17, "nodes":Ljava/util/List;
    const/4 v14, 0x0

    .restart local v14    # "k":I
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_9

    .line 2474
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2475
    .local v16, "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v18

    if-nez v18, :cond_8

    .line 2477
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    .line 2472
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 2468
    .end local v16    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_9
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 2486
    .end local v10    # "_validPolicyNodeSet":Ljava/util/Set;
    .end local v11    # "_vpnsIter":Ljava/util/Iterator;
    .end local v13    # "j":I
    .end local v14    # "k":I
    .end local v17    # "nodes":Ljava/util/List;
    :cond_a
    move-object/from16 v12, p5

    .restart local v12    # "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_0

    .line 2503
    .end local v12    # "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_b
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2505
    .restart local v10    # "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_7
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_f

    .line 2507
    aget-object v8, p4, v13

    .line 2509
    .restart local v8    # "_nodeDepth":Ljava/util/List;
    const/4 v14, 0x0

    .restart local v14    # "k":I
    :goto_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_e

    .line 2511
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2513
    .restart local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    const-string v18, "2.5.29.32.0"

    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2515
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    .line 2516
    .restart local v6    # "_iter":Ljava/util/Iterator;
    :cond_c
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2518
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2519
    .local v5, "_c_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    const-string v18, "2.5.29.32.0"

    invoke-virtual {v5}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 2521
    invoke-interface {v10, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2509
    .end local v5    # "_c_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "_iter":Ljava/util/Iterator;
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 2505
    .end local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 2531
    .end local v8    # "_nodeDepth":Ljava/util/List;
    .end local v14    # "k":I
    :cond_f
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2532
    .restart local v11    # "_vpnsIter":Ljava/util/Iterator;
    :cond_10
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 2534
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2535
    .restart local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    .line 2537
    .restart local v9    # "_validPolicy":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 2539
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1, v7}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    goto :goto_a

    .line 2546
    .end local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "_validPolicy":Ljava/lang/String;
    :cond_11
    if-eqz p5, :cond_14

    .line 2548
    add-int/lit8 v13, v15, -0x1

    :goto_b
    if-ltz v13, :cond_14

    .line 2550
    aget-object v17, p4, v13

    .line 2552
    .restart local v17    # "nodes":Ljava/util/List;
    const/4 v14, 0x0

    .restart local v14    # "k":I
    :goto_c
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_13

    .line 2554
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2555
    .restart local v16    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v18

    if-nez v18, :cond_12

    .line 2557
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    .line 2552
    :cond_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 2548
    .end local v16    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_13
    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    .line 2564
    .end local v14    # "k":I
    .end local v17    # "nodes":Ljava/util/List;
    :cond_14
    move-object/from16 v12, p5

    .restart local v12    # "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_0
.end method
