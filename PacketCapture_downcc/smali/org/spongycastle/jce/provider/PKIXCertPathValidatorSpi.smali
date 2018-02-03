.class public Lorg/spongycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 47
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 43
    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/security/cert/PKIXParameters;

    if-nez v4, :cond_0

    .line 45
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parameters must be a "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v7, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " instance."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50
    :cond_0
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    if-eqz v4, :cond_1

    move-object/from16 v21, p2

    .line 52
    check-cast v21, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    .line 58
    .end local p2    # "params":Ljava/security/cert/CertPathParameters;
    .local v21, "paramsPKIX":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    :goto_0
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v4

    if-nez v4, :cond_2

    .line 60
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    .end local v21    # "paramsPKIX":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .restart local p2    # "params":Ljava/security/cert/CertPathParameters;
    :cond_1
    check-cast p2, Ljava/security/cert/PKIXParameters;

    .end local p2    # "params":Ljava/security/cert/CertPathParameters;
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-result-object v21

    .restart local v21    # "paramsPKIX":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v29

    .line 72
    .local v29, "certs":Ljava/util/List;
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v39

    .line 74
    .local v39, "n":I
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 76
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Certification path is empty."

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 87
    :cond_3
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v22

    .line 95
    .local v22, "userInitialPolicySet":Ljava/util/Set;
    :try_start_0
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v43

    .line 103
    .local v43, "trust":Ljava/security/cert/TrustAnchor;
    if-nez v43, :cond_4

    .line 105
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Trust anchor for certification path not found."

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 98
    .end local v43    # "trust":Ljava/security/cert/TrustAnchor;
    :catch_0
    move-exception v32

    .line 100
    .local v32, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 112
    .end local v32    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v43    # "trust":Ljava/security/cert/TrustAnchor;
    :cond_4
    const/4 v9, 0x0

    .line 123
    .local v9, "index":I
    add-int/lit8 v4, v39, 0x1

    new-array v0, v4, [Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 124
    .local v18, "policyNodes":[Ljava/util/List;
    const/16 v37, 0x0

    .local v37, "j":I
    :goto_1
    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v37

    if-ge v0, v4, :cond_5

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v18, v37

    .line 124
    add-int/lit8 v37, v37, 0x1

    goto :goto_1

    .line 129
    :cond_5
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 131
    .local v6, "policySet":Ljava/util/Set;
    const-string v4, "2.5.29.32.0"

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v3, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const-string v9, "2.5.29.32.0"

    .end local v9    # "index":I
    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 136
    .local v3, "validPolicyTree":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    const/4 v4, 0x0

    aget-object v4, v18, v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v40, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct/range {v40 .. v40}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    .line 146
    .local v40, "nameConstraintValidator":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v16, "acceptablePolicies":Ljava/util/Set;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 150
    const/16 v34, 0x0

    .line 162
    .local v34, "explicitPolicy":I
    :goto_2
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isAnyPolicyInhibited()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 164
    const/16 v19, 0x0

    .line 176
    .local v19, "inhibitAnyPolicy":I
    :goto_3
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isPolicyMappingInhibited()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 178
    const/16 v42, 0x0

    .line 191
    .local v42, "policyMapping":I
    :goto_4
    invoke-virtual/range {v43 .. v43}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v13

    .line 194
    .local v13, "sign":Ljava/security/cert/X509Certificate;
    if-eqz v13, :cond_9

    .line 196
    :try_start_1
    invoke-static {v13}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    .line 197
    .local v12, "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 211
    .local v10, "workingPublicKey":Ljava/security/PublicKey;
    :goto_5
    const/16 v44, 0x0

    .line 214
    .local v44, "workingAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_2
    invoke-static {v10}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v44

    .line 221
    invoke-virtual/range {v44 .. v44}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v45

    .line 222
    .local v45, "workingPublicKeyAlgorithm":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual/range {v44 .. v44}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v46

    .line 227
    .local v46, "workingPublicKeyParameters":Lorg/spongycastle/asn1/ASN1Encodable;
    move/from16 v38, v39

    .line 233
    .local v38, "maxPathLength":I
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lorg/spongycastle/util/Selector;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lorg/spongycastle/util/Selector;

    move-result-object v5

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-interface {v5, v4}, Lorg/spongycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 236
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Target certificate in certification path does not match targetConstraints."

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v8}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 154
    .end local v10    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v12    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .end local v13    # "sign":Ljava/security/cert/X509Certificate;
    .end local v19    # "inhibitAnyPolicy":I
    .end local v34    # "explicitPolicy":I
    .end local v38    # "maxPathLength":I
    .end local v42    # "policyMapping":I
    .end local v44    # "workingAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v45    # "workingPublicKeyAlgorithm":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v46    # "workingPublicKeyParameters":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_6
    add-int/lit8 v34, v39, 0x1

    .restart local v34    # "explicitPolicy":I
    goto :goto_2

    .line 168
    :cond_7
    add-int/lit8 v19, v39, 0x1

    .restart local v19    # "inhibitAnyPolicy":I
    goto :goto_3

    .line 182
    :cond_8
    add-int/lit8 v42, v39, 0x1

    .restart local v42    # "policyMapping":I
    goto :goto_4

    .line 201
    .restart local v13    # "sign":Ljava/security/cert/X509Certificate;
    :cond_9
    :try_start_3
    new-instance v12, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual/range {v43 .. v43}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 202
    .restart local v12    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {v43 .. v43}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    .restart local v10    # "workingPublicKey":Ljava/security/PublicKey;
    goto :goto_5

    .line 205
    .end local v10    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v12    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    :catch_1
    move-exception v33

    .line 207
    .local v33, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Subject of trust anchor could not be (re)encoded."

    const/4 v7, -0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v7}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 216
    .end local v33    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "workingPublicKey":Ljava/security/PublicKey;
    .restart local v12    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .restart local v44    # "workingAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    :catch_2
    move-exception v32

    .line 218
    .local v32, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Algorithm identifier of public key of trust anchor could not be read."

    const/4 v7, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v7}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 243
    .end local v32    # "e":Ljava/security/cert/CertPathValidatorException;
    .restart local v38    # "maxPathLength":I
    .restart local v45    # "workingPublicKeyAlgorithm":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .restart local v46    # "workingPublicKeyParameters":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_a
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v41

    .line 244
    .local v41, "pathCheckers":Ljava/util/List;
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .line 245
    .local v28, "certIter":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 247
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    goto :goto_6

    .line 250
    :cond_b
    const/16 v27, 0x0

    .line 252
    .local v27, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v9, v4, -0x1

    .restart local v9    # "index":I
    :goto_7
    if-ltz v9, :cond_10

    .line 259
    sub-int v35, v39, v9

    .line 267
    .local v35, "i":I
    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "cert":Ljava/security/cert/X509Certificate;
    check-cast v27, Ljava/security/cert/X509Certificate;

    .line 268
    .restart local v27    # "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v9, v4, :cond_c

    const/4 v11, 0x1

    .local v11, "verificationAlreadyPerformed":Z
    :goto_8
    move-object/from16 v7, p1

    move-object/from16 v8, v21

    .line 274
    invoke-static/range {v7 .. v13}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V

    .line 277
    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-static {v0, v9, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXNameConstraintValidator;)V

    move-object/from16 v14, p1

    move v15, v9

    move-object/from16 v17, v3

    .line 279
    invoke-static/range {v14 .. v19}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v3

    .line 282
    move-object/from16 v0, p1

    invoke-static {v0, v9, v3}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v3

    .line 284
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v9, v3, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXPolicyNode;I)V

    .line 290
    move/from16 v0, v35

    move/from16 v1, v39

    if-eq v0, v1, :cond_e

    .line 292
    if-eqz v27, :cond_d

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 294
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Version 1 certificates can\'t be used as CA ones."

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 268
    .end local v11    # "verificationAlreadyPerformed":Z
    :cond_c
    const/4 v11, 0x0

    goto :goto_8

    .line 298
    .restart local v11    # "verificationAlreadyPerformed":Z
    :cond_d
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    .line 300
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v42

    invoke-static {v0, v9, v1, v3, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;I)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v3

    .line 303
    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-static {v0, v9, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXNameConstraintValidator;)V

    .line 306
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v9, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v34

    .line 307
    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-static {v0, v9, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v42

    .line 308
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v9, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v19

    .line 313
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v9, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v34

    .line 314
    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-static {v0, v9, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v42

    .line 317
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v9, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v19

    .line 320
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    .line 323
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v9, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v38

    .line 326
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v9, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v38

    .line 329
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    .line 331
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v30

    .line 332
    .local v30, "criticalExtensions":Ljava/util/Set;
    if-eqz v30, :cond_f

    .line 334
    new-instance v31, Ljava/util/HashSet;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 337
    .end local v30    # "criticalExtensions":Ljava/util/Set;
    .local v31, "criticalExtensions":Ljava/util/Set;
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 338
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 339
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 340
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 341
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 342
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 343
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 344
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 345
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 346
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v30, v31

    .line 354
    .end local v31    # "criticalExtensions":Ljava/util/Set;
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    :goto_9
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v41

    invoke-static {v0, v9, v1, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    .line 357
    move-object/from16 v13, v27

    .line 360
    invoke-static {v13}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    .line 365
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v9}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v10

    .line 372
    invoke-static {v10}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v44

    .line 374
    invoke-virtual/range {v44 .. v44}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v45

    .line 376
    invoke-virtual/range {v44 .. v44}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v46

    .line 252
    .end local v30    # "criticalExtensions":Ljava/util/Set;
    :cond_e
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_7

    .line 350
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    :cond_f
    new-instance v30, Ljava/util/HashSet;

    .end local v30    # "criticalExtensions":Ljava/util/Set;
    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    goto :goto_9

    .line 367
    :catch_3
    move-exception v32

    .line 369
    .restart local v32    # "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Next working key could not be retrieved."

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 384
    .end local v11    # "verificationAlreadyPerformed":Z
    .end local v30    # "criticalExtensions":Ljava/util/Set;
    .end local v32    # "e":Ljava/security/cert/CertPathValidatorException;
    .end local v35    # "i":I
    :cond_10
    move/from16 v0, v34

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v34

    .line 386
    add-int/lit8 v4, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v4, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v34

    .line 395
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v30

    .line 397
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    if-eqz v30, :cond_12

    .line 399
    new-instance v31, Ljava/util/HashSet;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 401
    .end local v30    # "criticalExtensions":Ljava/util/Set;
    .restart local v31    # "criticalExtensions":Ljava/util/Set;
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 402
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 403
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 404
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 405
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 406
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 407
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 408
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 409
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 410
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 411
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v30, v31

    .line 418
    .end local v31    # "criticalExtensions":Ljava/util/Set;
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    :goto_a
    add-int/lit8 v4, v9, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move-object/from16 v2, v30

    invoke-static {v0, v4, v1, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    .line 420
    add-int/lit8 v23, v9, 0x1

    move-object/from16 v20, p1

    move-object/from16 v24, v18

    move-object/from16 v25, v3

    move-object/from16 v26, v16

    invoke-static/range {v20 .. v26}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v36

    .line 423
    .local v36, "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    if-gtz v34, :cond_11

    if-eqz v36, :cond_13

    .line 425
    :cond_11
    new-instance v4, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, v43

    move-object/from16 v1, v36

    invoke-direct {v4, v0, v1, v5}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v4

    .line 415
    .end local v36    # "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_12
    new-instance v30, Ljava/util/HashSet;

    .end local v30    # "criticalExtensions":Ljava/util/Set;
    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    goto :goto_a

    .line 428
    .restart local v36    # "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_13
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Path processing failed on policy."

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method
