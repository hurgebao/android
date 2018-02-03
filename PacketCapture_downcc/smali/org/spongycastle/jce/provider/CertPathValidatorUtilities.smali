.class public Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;
.super Ljava/lang/Object;
.source "CertPathValidatorUtilities.java"


# static fields
.field protected static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field protected static final BASIC_CONSTRAINTS:Ljava/lang/String;

.field protected static final CERTIFICATE_POLICIES:Ljava/lang/String;

.field protected static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field protected static final CRL_NUMBER:Ljava/lang/String;

.field protected static final CRL_UTIL:Lorg/spongycastle/jce/provider/PKIXCRLUtil;

.field protected static final DELTA_CRL_INDICATOR:Ljava/lang/String;

.field protected static final FRESHEST_CRL:Ljava/lang/String;

.field protected static final INHIBIT_ANY_POLICY:Ljava/lang/String;

.field protected static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final KEY_USAGE:Ljava/lang/String;

.field protected static final NAME_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_MAPPINGS:Ljava/lang/String;

.field protected static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/PKIXCRLUtil;-><init>()V

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->CRL_UTIL:Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    .line 81
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->certificatePolicies:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 82
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->basicConstraints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 83
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->policyMappings:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 84
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->subjectAlternativeName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 85
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->nameConstraints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 86
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->keyUsage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 87
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 88
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 89
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 90
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->policyConstraints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 91
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->freshestCRL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 92
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 93
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 97
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->cRLNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 105
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

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addAdditionalStoreFromLocation(Ljava/lang/String;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 7
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "pkixParams"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;

    .prologue
    .line 655
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isAdditionalLocationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 659
    :try_start_0
    const-string v4, "ldap://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 664
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 666
    const/4 v0, 0x0

    .line 667
    .local v0, "base":Ljava/lang/String;
    const/4 v3, 0x0

    .line 668
    .local v3, "url":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 670
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 672
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ldap://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 680
    :goto_0
    new-instance v4, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    invoke-direct {v4, v3, v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->build()Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    move-result-object v2

    .line 682
    .local v2, "params":Lorg/spongycastle/jce/X509LDAPCertStoreParameters;
    const-string v4, "CERTIFICATE/LDAP"

    const-string v5, "SC"

    invoke-static {v4, v2, v5}, Lorg/spongycastle/x509/X509Store;->getInstance(Ljava/lang/String;Lorg/spongycastle/x509/X509StoreParameters;Ljava/lang/String;)Lorg/spongycastle/x509/X509Store;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->addAdditionalStore(Lorg/spongycastle/util/Store;)V

    .line 684
    const-string v4, "CRL/LDAP"

    const-string v5, "SC"

    invoke-static {v4, v2, v5}, Lorg/spongycastle/x509/X509Store;->getInstance(Ljava/lang/String;Lorg/spongycastle/x509/X509StoreParameters;Ljava/lang/String;)Lorg/spongycastle/x509/X509Store;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->addAdditionalStore(Lorg/spongycastle/util/Store;)V

    .line 686
    const-string v4, "ATTRIBUTECERTIFICATE/LDAP"

    const-string v5, "SC"

    invoke-static {v4, v2, v5}, Lorg/spongycastle/x509/X509Store;->getInstance(Ljava/lang/String;Lorg/spongycastle/x509/X509StoreParameters;Ljava/lang/String;)Lorg/spongycastle/x509/X509Store;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->addAdditionalStore(Lorg/spongycastle/util/Store;)V

    .line 688
    const-string v4, "CERTIFICATEPAIR/LDAP"

    const-string v5, "SC"

    invoke-static {v4, v2, v5}, Lorg/spongycastle/x509/X509Store;->getInstance(Ljava/lang/String;Lorg/spongycastle/x509/X509StoreParameters;Ljava/lang/String;)Lorg/spongycastle/x509/X509Store;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->addAdditionalStore(Lorg/spongycastle/util/Store;)V

    .line 698
    .end local v0    # "base":Ljava/lang/String;
    .end local v2    # "params":Lorg/spongycastle/jce/X509LDAPCertStoreParameters;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    return-void

    .line 677
    .restart local v0    # "base":Ljava/lang/String;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ldap://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 692
    .end local v0    # "base":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 695
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception adding X.509 stores."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected static addAdditionalStoresFromAltNames(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 5
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "pkixParams"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 246
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 247
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 251
    .local v1, "list":Ljava/util/List;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 255
    .local v2, "temp":Ljava/lang/String;
    invoke-static {v2, p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoreFromLocation(Ljava/lang/String;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    goto :goto_0

    .line 259
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;
    .end local v2    # "temp":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected static addAdditionalStoresFromCRLDistributionPoint(Lorg/spongycastle/asn1/x509/CRLDistPoint;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 9
    .param p0, "crldp"    # Lorg/spongycastle/asn1/x509/CRLDistPoint;
    .param p1, "pkixParams"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 787
    if-eqz p0, :cond_2

    .line 789
    const/4 v1, 0x0

    .line 792
    .local v1, "dps":[Lorg/spongycastle/asn1/x509/DistributionPoint;
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/spongycastle/asn1/x509/DistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 799
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v1

    if-ge v4, v7, :cond_2

    .line 801
    aget-object v7, v1, v4

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    .line 803
    .local v0, "dpn":Lorg/spongycastle/asn1/x509/DistributionPointName;
    if-eqz v0, :cond_1

    .line 805
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v7

    if-nez v7, :cond_1

    .line 807
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 810
    .local v3, "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v7, v3

    if-ge v5, v7, :cond_1

    .line 812
    aget-object v7, v3, v5

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_0

    .line 814
    aget-object v7, v3, v5

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v6

    .line 816
    .local v6, "location":Ljava/lang/String;
    invoke-static {v6, p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoreFromLocation(Ljava/lang/String;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 810
    .end local v6    # "location":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 794
    .end local v0    # "dpn":Lorg/spongycastle/asn1/x509/DistributionPointName;
    .end local v3    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v4    # "i":I
    .end local v5    # "j":I
    :catch_0
    move-exception v2

    .line 796
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v8, "Distribution points could not be read."

    invoke-direct {v7, v8, v2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 799
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "dpn":Lorg/spongycastle/asn1/x509/DistributionPointName;
    .restart local v4    # "i":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 825
    .end local v0    # "dpn":Lorg/spongycastle/asn1/x509/DistributionPointName;
    .end local v1    # "dps":[Lorg/spongycastle/asn1/x509/DistributionPoint;
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method protected static findCertificates(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 7
    .param p0, "certSelect"    # Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    .param p1, "certStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 759
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 760
    .local v1, "certs":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 762
    .local v3, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 764
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 766
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lorg/spongycastle/x509/X509Store;

    if-eqz v5, :cond_0

    move-object v0, v4

    .line 768
    check-cast v0, Lorg/spongycastle/x509/X509Store;

    .line 771
    .local v0, "certStore":Lorg/spongycastle/x509/X509Store;
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/spongycastle/x509/X509Store;->getMatches(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/spongycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 773
    :catch_0
    move-exception v2

    .line 775
    .local v2, "e":Lorg/spongycastle/util/StoreException;
    new-instance v5, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v6, "Problem while picking certificates from X.509 store."

    invoke-direct {v5, v6, v2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 780
    .end local v0    # "certStore":Lorg/spongycastle/x509/X509Store;
    .end local v2    # "e":Lorg/spongycastle/util/StoreException;
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method protected static findCertificates(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 7
    .param p0, "certSelect"    # Lorg/spongycastle/x509/X509CertStoreSelector;
    .param p1, "certStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 716
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 717
    .local v1, "certs":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 719
    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 721
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 723
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lorg/spongycastle/x509/X509Store;

    if-eqz v5, :cond_0

    move-object v0, v4

    .line 725
    check-cast v0, Lorg/spongycastle/x509/X509Store;

    .line 728
    .local v0, "certStore":Lorg/spongycastle/x509/X509Store;
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/spongycastle/x509/X509Store;->getMatches(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/spongycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 730
    :catch_0
    move-exception v2

    .line 732
    .local v2, "e":Lorg/spongycastle/util/StoreException;
    new-instance v5, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v6, "Problem while picking certificates from X.509 store."

    invoke-direct {v5, v6, v2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .end local v0    # "certStore":Lorg/spongycastle/x509/X509Store;
    .end local v2    # "e":Lorg/spongycastle/util/StoreException;
    :cond_0
    move-object v0, v4

    .line 738
    check-cast v0, Ljava/security/cert/CertStore;

    .line 742
    .local v0, "certStore":Ljava/security/cert/CertStore;
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 744
    :catch_1
    move-exception v2

    .line 746
    .local v2, "e":Ljava/security/cert/CertStoreException;
    new-instance v5, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v6, "Problem while picking certificates from certificate store."

    invoke-direct {v5, v6, v2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 752
    .end local v0    # "certStore":Ljava/security/cert/CertStore;
    .end local v2    # "e":Ljava/security/cert/CertStoreException;
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method protected static findIssuerCerts(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;)Ljava/util/Collection;
    .locals 9
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "pkixParams"    # Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1373
    new-instance v0, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v0}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 1374
    .local v0, "certSelect":Lorg/spongycastle/x509/X509CertStoreSelector;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1377
    .local v1, "certs":Ljava/util/Set;
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/spongycastle/x509/X509CertStoreSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1389
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    .local v6, "matches":Ljava/util/List;
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1392
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1393
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1395
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 1402
    .local v5, "iter":Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 1403
    .local v4, "issuer":Ljava/security/cert/X509Certificate;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1405
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "issuer":Ljava/security/cert/X509Certificate;
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1408
    .restart local v4    # "issuer":Ljava/security/cert/X509Certificate;
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1379
    .end local v4    # "issuer":Ljava/security/cert/X509Certificate;
    .end local v5    # "iter":Ljava/util/Iterator;
    .end local v6    # "matches":Ljava/util/List;
    :catch_0
    move-exception v3

    .line 1381
    .local v3, "ex":Ljava/io/IOException;
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v8, "Subject criteria for certificate selector to find issuer certificate could not be set."

    invoke-direct {v7, v8, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1397
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1399
    .local v2, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v8, "Issuer certificate cannot be searched."

    invoke-direct {v7, v8, v2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1410
    .end local v2    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v4    # "issuer":Ljava/security/cert/X509Certificate;
    .restart local v5    # "iter":Ljava/util/Iterator;
    .restart local v6    # "matches":Ljava/util/List;
    :cond_0
    return-object v1
.end method

.method protected static findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    .locals 10
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v6, 0x0

    .line 159
    .local v6, "trust":Ljava/security/cert/TrustAnchor;
    const/4 v7, 0x0

    .line 160
    .local v7, "trustPublicKey":Ljava/security/PublicKey;
    const/4 v4, 0x0

    .line 162
    .local v4, "invalidKeyEx":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 163
    .local v2, "certSelectX509":Ljava/security/cert/X509CertSelector;
    invoke-static {p0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 167
    .local v1, "certIssuer":Ljavax/security/auth/x500/X500Principal;
    :try_start_0
    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 175
    .local v5, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v6, :cond_5

    .line 177
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "trust":Ljava/security/cert/TrustAnchor;
    check-cast v6, Ljava/security/cert/TrustAnchor;

    .line 178
    .restart local v6    # "trust":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 180
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 182
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .line 214
    :goto_1
    if-eqz v7, :cond_0

    .line 218
    :try_start_1
    invoke-static {p0, v7, p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v3

    .line 222
    .local v3, "ex":Ljava/lang/Exception;
    move-object v4, v3

    .line 223
    const/4 v6, 0x0

    .line 224
    const/4 v7, 0x0

    .line 225
    goto :goto_0

    .line 169
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v5    # "iter":Ljava/util/Iterator;
    :catch_1
    move-exception v3

    .line 171
    .local v3, "ex":Ljava/io/IOException;
    new-instance v8, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v9, "Cannot set subject search criteria for trust anchor."

    invoke-direct {v8, v9, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 186
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v5    # "iter":Ljava/util/Iterator;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 194
    :try_start_2
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "caName":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 197
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    goto :goto_1

    .line 201
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 204
    .end local v0    # "caName":Ljavax/security/auth/x500/X500Principal;
    :catch_2
    move-exception v3

    .line 206
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x0

    .line 207
    goto :goto_1

    .line 211
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 229
    :cond_5
    if-nez v6, :cond_6

    if-eqz v4, :cond_6

    .line 231
    new-instance v8, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v9, "TrustAnchor found but certificate validation failed."

    invoke-direct {v8, v9, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 234
    :cond_6
    return-object v6
.end method

.method protected static getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 5
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 354
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 356
    .local v0, "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    .line 358
    .local v2, "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 360
    .end local v0    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v2    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Subject public key cannot be decoded."

    invoke-direct {v3, v4, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static getCRLIssuersFromDistributionPoint(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 8
    .param p0, "dp"    # Lorg/spongycastle/asn1/x509/DistributionPoint;
    .param p1, "issuerPrincipals"    # Ljava/util/Collection;
    .param p2, "selector"    # Ljava/security/cert/X509CRLSelector;
    .param p3, "pkixParams"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 853
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 855
    .local v3, "issuers":Ljava/util/List;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 857
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 859
    .local v2, "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_3

    .line 861
    aget-object v6, v2, v5

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 865
    :try_start_0
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    aget-object v7, v2, v5

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-interface {v7}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 870
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v6, v7, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 883
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v5    # "j":I
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v6

    if-nez v6, :cond_2

    .line 885
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL issuer is omitted from distribution point but no distributionPoint field present."

    invoke-direct {v6, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 889
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 891
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/security/auth/x500/X500Principal;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 938
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 939
    .restart local v4    # "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 943
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 945
    :catch_1
    move-exception v1

    .line 947
    .local v1, "ex":Ljava/io/IOException;
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Cannot decode CRL issuer information."

    invoke-direct {v6, v7, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 951
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_4
    return-void
.end method

.method protected static getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V
    .locals 10
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "crl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lorg/spongycastle/jce/provider/CertStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 973
    const/4 v1, 0x0

    .line 978
    .local v1, "crl_entry":Ljava/security/cert/X509CRLEntry;
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/jce/provider/X509CRLObject;->isIndirectCRL(Ljava/security/cert/X509CRL;)Z
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 985
    .local v4, "isIndirect":Z
    if-eqz v4, :cond_6

    .line 987
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    .line 989
    if-nez v1, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 980
    .end local v4    # "isIndirect":Z
    :catch_0
    move-exception v3

    .line 982
    .local v3, "exception":Ljava/security/cert/CRLException;
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Failed check for indirect CRL."

    invoke-direct {v6, v7, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 994
    .end local v3    # "exception":Ljava/security/cert/CRLException;
    .restart local v4    # "isIndirect":Z
    :cond_1
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 996
    .local v0, "certIssuer":Ljavax/security/auth/x500/X500Principal;
    if-nez v0, :cond_2

    .line 998
    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 1001
    :cond_2
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1020
    .end local v0    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    :cond_3
    const/4 v5, 0x0

    .line 1021
    .local v5, "reasonCode":Lorg/spongycastle/asn1/ASN1Enumerated;
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1025
    :try_start_1
    sget-object v6, Lorg/spongycastle/asn1/x509/X509Extension;->reasonCode:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Enumerated;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 1040
    :cond_4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 1049
    :cond_5
    if-eqz v5, :cond_7

    .line 1051
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-virtual {p3, v6}, Lorg/spongycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1058
    :goto_1
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {p3, v6}, Lorg/spongycastle/jce/provider/CertStatus;->setRevocationDate(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 1006
    .end local v5    # "reasonCode":Lorg/spongycastle/asn1/ASN1Enumerated;
    :cond_6
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1012
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    .line 1014
    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 1030
    .restart local v5    # "reasonCode":Lorg/spongycastle/asn1/ASN1Enumerated;
    :catch_1
    move-exception v2

    .line 1032
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Reason code CRL entry extension could not be decoded."

    invoke-direct {v6, v7, v2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1056
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Lorg/spongycastle/jce/provider/CertStatus;->setCertStatus(I)V

    goto :goto_1
.end method

.method protected static getCompleteCRLs(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lorg/spongycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;
    .locals 11
    .param p0, "dp"    # Lorg/spongycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "currentDate"    # Ljava/util/Date;
    .param p3, "paramsPKIX"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1178
    new-instance v3, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v3}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 1181
    .local v3, "crlselect":Lorg/spongycastle/x509/X509CRLStoreSelector;
    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1182
    .local v5, "issuers":Ljava/util/Set;
    instance-of v7, p1, Lorg/spongycastle/x509/X509AttributeCertificate;

    if-eqz v7, :cond_1

    .line 1184
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/x509/X509AttributeCertificate;

    move-object v7, v0

    invoke-interface {v7}, Lorg/spongycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1191
    :goto_0
    invoke-static {p0, v5, v3, p3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getCRLIssuersFromDistributionPoint(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    instance-of v7, p1, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_2

    move-object v7, p1

    .line 1200
    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v7}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 1208
    :cond_0
    :goto_1
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setCompleteCRLEnabled(Z)V

    .line 1210
    sget-object v7, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->CRL_UTIL:Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    invoke-virtual {v7, v3, p3, p2}, Lorg/spongycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lorg/spongycastle/x509/X509CRLStoreSelector;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v2

    .line 1212
    .local v2, "crls":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1214
    instance-of v7, p1, Lorg/spongycastle/x509/X509AttributeCertificate;

    if-eqz v7, :cond_3

    move-object v1, p1

    .line 1216
    check-cast v1, Lorg/spongycastle/x509/X509AttributeCertificate;

    .line 1218
    .local v1, "aCert":Lorg/spongycastle/x509/X509AttributeCertificate;
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No CRLs found for issuer \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Lorg/spongycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v9

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1189
    .end local v1    # "aCert":Lorg/spongycastle/x509/X509AttributeCertificate;
    .end local v2    # "crls":Ljava/util/Set;
    :cond_1
    :try_start_1
    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1193
    .end local v5    # "issuers":Ljava/util/Set;
    :catch_0
    move-exception v4

    .line 1195
    .local v4, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v8, "Could not get issuer information from distribution point."

    invoke-direct {v7, v8, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1202
    .end local v4    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v5    # "issuers":Ljava/util/Set;
    :cond_2
    instance-of v7, p1, Lorg/spongycastle/x509/X509AttributeCertificate;

    if-eqz v7, :cond_0

    move-object v7, p1

    .line 1204
    check-cast v7, Lorg/spongycastle/x509/X509AttributeCertificate;

    invoke-virtual {v3, v7}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setAttrCertificateChecking(Lorg/spongycastle/x509/X509AttributeCertificate;)V

    goto :goto_1

    .restart local v2    # "crls":Ljava/util/Set;
    :cond_3
    move-object v6, p1

    .line 1222
    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 1224
    .local v6, "xCert":Ljava/security/cert/X509Certificate;
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No CRLs found for issuer \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1227
    .end local v6    # "xCert":Ljava/security/cert/X509Certificate;
    :cond_4
    return-object v2
.end method

.method protected static getDeltaCRLs(Ljava/util/Date;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;
    .locals 12
    .param p0, "currentDate"    # Ljava/util/Date;
    .param p1, "paramsPKIX"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .param p2, "completeCRL"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1077
    new-instance v2, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 1082
    .local v2, "deltaSelect":Lorg/spongycastle/x509/X509CRLStoreSelector;
    :try_start_0
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/spongycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    const/4 v0, 0x0

    .line 1093
    .local v0, "completeCRLNumber":Ljava/math/BigInteger;
    :try_start_1
    sget-object v9, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    invoke-static {p2, v9}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 1095
    .local v3, "derObject":Lorg/spongycastle/asn1/ASN1Primitive;
    if-eqz v3, :cond_0

    .line 1097
    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1107
    :cond_0
    const/4 v5, 0x0

    .line 1110
    .local v5, "idp":[B
    :try_start_2
    sget-object v9, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 1121
    if-nez v0, :cond_2

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v2, v9}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 1124
    invoke-virtual {v2, v5}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setIssuingDistributionPoint([B)V

    .line 1125
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setIssuingDistributionPointEnabled(Z)V

    .line 1128
    invoke-virtual {v2, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setMaxBaseCRLNumber(Ljava/math/BigInteger;)V

    .line 1131
    sget-object v9, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->CRL_UTIL:Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    invoke-virtual {v9, v2, p1, p0}, Lorg/spongycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lorg/spongycastle/x509/X509CRLStoreSelector;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v8

    .line 1133
    .local v8, "temp":Ljava/util/Set;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1135
    .local v7, "result":Ljava/util/Set;
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1137
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRL;

    .line 1139
    .local v1, "crl":Ljava/security/cert/X509CRL;
    invoke-static {v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isDeltaCRL(Ljava/security/cert/X509CRL;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1141
    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1085
    .end local v0    # "completeCRLNumber":Ljava/math/BigInteger;
    .end local v1    # "crl":Ljava/security/cert/X509CRL;
    .end local v3    # "derObject":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v5    # "idp":[B
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v7    # "result":Ljava/util/Set;
    .end local v8    # "temp":Ljava/util/Set;
    :catch_0
    move-exception v4

    .line 1087
    .local v4, "e":Ljava/io/IOException;
    new-instance v9, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v10, "Cannot extract issuer from CRL."

    invoke-direct {v9, v10, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1100
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "completeCRLNumber":Ljava/math/BigInteger;
    :catch_1
    move-exception v4

    .line 1102
    .local v4, "e":Ljava/lang/Exception;
    new-instance v9, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v10, "CRL number extension could not be extracted from CRL."

    invoke-direct {v9, v10, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1112
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "derObject":Lorg/spongycastle/asn1/ASN1Primitive;
    .restart local v5    # "idp":[B
    :catch_2
    move-exception v4

    .line 1114
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v9, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v10, "Issuing distribution point extension value could not be read."

    invoke-direct {v9, v10, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1121
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_0

    .line 1145
    .restart local v6    # "it":Ljava/util/Iterator;
    .restart local v7    # "result":Ljava/util/Set;
    .restart local v8    # "temp":Ljava/util/Set;
    :cond_3
    return-object v7
.end method

.method protected static getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;
    .locals 2
    .param p0, "cert"    # Ljava/lang/Object;

    .prologue
    .line 270
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 272
    check-cast p0, Ljava/security/cert/X509Certificate;

    .end local p0    # "cert":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    .restart local p0    # "cert":Ljava/lang/Object;
    :cond_0
    check-cast p0, Lorg/spongycastle/x509/X509AttributeCertificate;

    .end local p0    # "cert":Ljava/lang/Object;
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    goto :goto_0
.end method

.method protected static getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2
    .param p0, "ext"    # Ljava/security/cert/X509Extension;
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 316
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 318
    const/4 v1, 0x0

    .line 321
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getObject(Ljava/lang/String;[B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    goto :goto_0
.end method

.method protected static getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;
    .locals 1
    .param p0, "crl"    # Ljava/security/cert/X509CRL;

    .prologue
    .line 345
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected static getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;
    .locals 14
    .param p0, "certs"    # Ljava/util/List;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1318
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 1319
    .local v0, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .line 1320
    .local v9, "pubKey":Ljava/security/PublicKey;
    instance-of v10, v9, Ljava/security/interfaces/DSAPublicKey;

    if-nez v10, :cond_1

    move-object v2, v9

    .line 1349
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    move-object v2, v9

    .line 1324
    check-cast v2, Ljava/security/interfaces/DSAPublicKey;

    .line 1325
    .local v2, "dsaPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v10

    if-nez v10, :cond_0

    .line 1329
    add-int/lit8 v5, p1, 0x1

    .local v5, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_4

    .line 1331
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 1332
    .local v7, "parentCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .line 1333
    instance-of v10, v9, Ljava/security/interfaces/DSAPublicKey;

    if-nez v10, :cond_2

    .line 1335
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "DSA parameters cannot be inherited from previous certificate."

    invoke-direct {v10, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    move-object v8, v9

    .line 1338
    check-cast v8, Ljava/security/interfaces/DSAPublicKey;

    .line 1339
    .local v8, "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v8}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v10

    if-nez v10, :cond_3

    .line 1329
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1343
    :cond_3
    invoke-interface {v8}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    .line 1344
    .local v1, "dsaParams":Ljava/security/interfaces/DSAParams;
    new-instance v3, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v10

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v11

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v12

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v3, v10, v11, v12, v13}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1348
    .local v3, "dsaPubKeySpec":Ljava/security/spec/DSAPublicKeySpec;
    :try_start_0
    const-string v10, "DSA"

    const-string v11, "SC"

    invoke-static {v10, v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 1349
    .local v6, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v6, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1351
    .end local v6    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v4

    .line 1353
    .local v4, "exception":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1356
    .end local v1    # "dsaParams":Ljava/security/interfaces/DSAParams;
    .end local v3    # "dsaPubKeySpec":Ljava/security/spec/DSAPublicKeySpec;
    .end local v4    # "exception":Ljava/lang/Exception;
    .end local v7    # "parentCert":Ljava/security/cert/X509Certificate;
    .end local v8    # "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    :cond_4
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "DSA parameters cannot be inherited from previous certificate."

    invoke-direct {v10, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private static getObject(Ljava/lang/String;[B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6
    .param p0, "oid"    # Ljava/lang/String;
    .param p1, "ext"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 331
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 332
    .local v0, "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1OctetString;

    .line 334
    .local v2, "octs":Lorg/spongycastle/asn1/ASN1OctetString;
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    .end local v0    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 335
    .restart local v0    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 337
    .end local v0    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v2    # "octs":Lorg/spongycastle/asn1/ASN1OctetString;
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/spongycastle/jce/provider/AnnotatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception processing extension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static final getQualifierSet(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .locals 7
    .param p0, "qualifiers"    # Lorg/spongycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 376
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 378
    .local v4, "pq":Ljava/util/Set;
    if-nez p0, :cond_1

    .line 404
    :cond_0
    return-object v4

    .line 383
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 384
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 386
    .local v0, "aOut":Lorg/spongycastle/asn1/ASN1OutputStream;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 388
    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 392
    :try_start_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 394
    new-instance v5, Ljava/security/cert/PolicyQualifierInfo;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    .line 396
    :catch_0
    move-exception v3

    .line 398
    .local v3, "ex":Ljava/io/IOException;
    new-instance v5, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Policy qualifier info cannot be decoded."

    invoke-direct {v5, v6, v3}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "cert"    # Ljava/lang/Object;

    .prologue
    .line 956
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 958
    check-cast p0, Ljava/security/cert/X509Certificate;

    .end local p0    # "cert":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    .line 962
    :goto_0
    return-object v0

    .restart local p0    # "cert":Ljava/lang/Object;
    :cond_0
    check-cast p0, Lorg/spongycastle/x509/X509AttributeCertificate;

    .end local p0    # "cert":Ljava/lang/Object;
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 294
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected static getValidCertDateFromValidityModel(Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;
    .locals 5
    .param p0, "paramsPKIX"    # Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1234
    invoke-virtual {p0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1237
    if-gtz p2, :cond_0

    .line 1239
    invoke-static {p0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v3

    .line 1290
    :goto_0
    return-object v3

    .line 1244
    :cond_0
    add-int/lit8 v3, p2, -0x1

    if-nez v3, :cond_3

    .line 1246
    const/4 v0, 0x0

    .line 1249
    .local v0, "dateOfCertgen":Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    sget-object v4, Lorg/spongycastle/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_dateOfCertGen:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 1250
    .local v2, "extBytes":[B
    if-eqz v2, :cond_1

    .line 1252
    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1265
    :cond_1
    if-eqz v0, :cond_2

    .line 1269
    :try_start_1
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    goto :goto_0

    .line 1255
    .end local v2    # "extBytes":[B
    :catch_0
    move-exception v1

    .line 1257
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "Date of cert gen extension could not be read."

    invoke-direct {v3, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1260
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1262
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "Date of cert gen extension could not be read."

    invoke-direct {v3, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1271
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "extBytes":[B
    :catch_2
    move-exception v1

    .line 1273
    .local v1, "e":Ljava/text/ParseException;
    new-instance v3, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "Date from date of cert gen extension could not be parsed."

    invoke-direct {v3, v4, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1278
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_2
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    goto :goto_0

    .line 1283
    .end local v0    # "dateOfCertgen":Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .end local v2    # "extBytes":[B
    :cond_3
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    goto :goto_0

    .line 1290
    :cond_4
    invoke-static {p0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v3

    goto :goto_0
.end method

.method protected static getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;
    .locals 1
    .param p0, "paramsPKIX"    # Ljava/security/cert/PKIXParameters;

    .prologue
    .line 282
    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 284
    .local v0, "validDate":Ljava/util/Date;
    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/util/Date;

    .end local v0    # "validDate":Ljava/util/Date;
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 289
    .restart local v0    # "validDate":Ljava/util/Date;
    :cond_0
    return-object v0
.end method

.method protected static isAnyPolicy(Ljava/util/Set;)Z
    .locals 1
    .param p0, "policySet"    # Ljava/util/Set;

    .prologue
    .line 649
    if-eqz p0, :cond_0

    const-string v0, "2.5.29.32.0"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDeltaCRL(Ljava/security/cert/X509CRL;)Z
    .locals 2
    .param p0, "crl"    # Ljava/security/cert/X509CRL;

    .prologue
    .line 1150
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 1152
    .local v0, "critical":Ljava/util/Set;
    if-nez v0, :cond_0

    .line 1154
    const/4 v1, 0x0

    .line 1157
    :goto_0
    return v1

    :cond_0
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected static isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 299
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static processCertD1i(I[Ljava/util/List;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z
    .locals 11
    .param p0, "index"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "pOid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "pq"    # Ljava/util/Set;

    .prologue
    const/4 v7, 0x0

    .line 461
    add-int/lit8 v1, p0, -0x1

    aget-object v10, p1, v1

    .line 463
    .local v10, "policyNodeVec":Ljava/util/List;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 465
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 466
    .local v4, "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v8

    .line 468
    .local v8, "expectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 471
    .local v3, "childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    move v2, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 480
    .local v0, "child":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 481
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    const/4 v7, 0x1

    .line 487
    .end local v0    # "child":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "childExpectedPolicies":Ljava/util/Set;
    .end local v4    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "expectedPolicies":Ljava/util/Set;
    :cond_0
    return v7

    .line 463
    .restart local v4    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .restart local v8    # "expectedPolicies":Ljava/util/Set;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method protected static processCertD1ii(I[Ljava/util/List;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V
    .locals 10
    .param p0, "index"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "_poid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "_pq"    # Ljava/util/Set;

    .prologue
    .line 496
    add-int/lit8 v1, p0, -0x1

    aget-object v9, p1, v1

    .line 498
    .local v9, "policyNodeVec":Ljava/util/List;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_0

    .line 500
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 502
    .local v4, "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    const-string v1, "2.5.29.32.0"

    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 505
    .local v3, "_childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move v2, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 514
    .local v0, "_child":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 515
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    .end local v0    # "_child":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "_childExpectedPolicies":Ljava/util/Set;
    .end local v4    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_0
    return-void

    .line 498
    .restart local v4    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method protected static removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 4
    .param p0, "validPolicyTree"    # Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "_node"    # Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .prologue
    const/4 v2, 0x0

    .line 412
    invoke-virtual {p2}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 414
    .local v0, "_parent":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    if-nez p0, :cond_0

    move-object p0, v2

    .line 433
    .end local p0    # "validPolicyTree":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :goto_0
    return-object p0

    .line 419
    .restart local p0    # "validPolicyTree":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_0
    if-nez v0, :cond_2

    .line 421
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 423
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, p1, v1

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object p0, v2

    .line 426
    goto :goto_0

    .line 430
    .end local v1    # "j":I
    :cond_2
    invoke-virtual {v0, p2}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->removeChild(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 431
    invoke-static {p1, p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    goto :goto_0
.end method

.method private static removePolicyNodeRecurse([Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V
    .locals 3
    .param p0, "policyNodes"    # [Ljava/util/List;
    .param p1, "_node"    # Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .prologue
    .line 441
    invoke-virtual {p1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getDepth()I

    move-result v2

    aget-object v2, p0, v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {p1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    invoke-virtual {p1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v1

    .line 446
    .local v1, "_iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 449
    .local v0, "_child":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-static {p0, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    goto :goto_0

    .line 452
    .end local v0    # "_child":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v1    # "_iter":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected static verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 1417
    if-nez p2, :cond_0

    .line 1419
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 1425
    :goto_0
    return-void

    .line 1423
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    goto :goto_0
.end method
