.class public Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "PKIXAttrCertPathBuilderSpi.java"


# instance fields
.field private certPathException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    return-void
.end method

.method private build(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .locals 17
    .param p1, "attrCert"    # Lorg/spongycastle/x509/X509AttributeCertificate;
    .param p2, "tbvCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "pkixParams"    # Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;
    .param p4, "tbvPath"    # Ljava/util/List;

    .prologue
    .line 171
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 173
    const/4 v4, 0x0

    .line 300
    :cond_0
    :goto_0
    return-object v4

    .line 177
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 179
    const/4 v4, 0x0

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 184
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v14

    if-le v13, v14, :cond_3

    .line 186
    const/4 v4, 0x0

    goto :goto_0

    .line 190
    :cond_3
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    const/4 v4, 0x0

    .line 198
    .local v4, "builderResult":Ljava/security/cert/CertPathBuilderResult;
    :try_start_0
    const-string v13, "X.509"

    const-string v14, "SC"

    invoke-static {v13, v14}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 199
    .local v5, "cFact":Ljava/security/cert/CertificateFactory;
    const-string v13, "RFC3281"

    const-string v14, "SC"

    invoke-static {v13, v14}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 211
    .local v12, "validator":Ljava/security/cert/CertPathValidator;
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v13

    if-eqz v13, :cond_5

    .line 218
    :try_start_2
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 229
    .local v6, "certPath":Ljava/security/cert/CertPath;
    :try_start_3
    move-object/from16 v0, p3

    invoke-virtual {v12, v6, v0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v11

    check-cast v11, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 239
    .local v11, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_start_4
    new-instance v13, Ljava/security/cert/PKIXCertPathBuilderResult;

    invoke-virtual {v11}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v14

    invoke-virtual {v11}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v15

    invoke-virtual {v11}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v6, v14, v15, v0}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    :try_end_4
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v4, v13

    goto :goto_0

    .line 201
    .end local v5    # "cFact":Ljava/security/cert/CertificateFactory;
    .end local v6    # "certPath":Ljava/security/cert/CertPath;
    .end local v11    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .end local v12    # "validator":Ljava/security/cert/CertPathValidator;
    :catch_0
    move-exception v7

    .line 204
    .local v7, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Exception creating support classes."

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 220
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "cFact":Ljava/security/cert/CertificateFactory;
    .restart local v12    # "validator":Ljava/security/cert/CertPathValidator;
    :catch_1
    move-exception v7

    .line 222
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v13, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v14, "Certification path could not be constructed from certificate list."

    invoke-direct {v13, v14, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_5
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 291
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 293
    .local v7, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v13, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v14, "No valid certification path could be build."

    invoke-direct {v13, v14, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    .line 296
    .end local v7    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :cond_4
    if-nez v4, :cond_0

    .line 298
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 232
    .restart local v6    # "certPath":Ljava/security/cert/CertPath;
    :catch_3
    move-exception v7

    .line 234
    .local v7, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v13, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v14, "Certification path could not be validated."

    invoke-direct {v13, v14, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_6
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_2

    .line 249
    .end local v6    # "certPath":Ljava/security/cert/CertPath;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_7
    invoke-static/range {p2 .. p3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromAltNames(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    :try_end_7
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_2

    .line 257
    :try_start_8
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V
    :try_end_8
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_2

    .line 262
    .local v9, "issuers":Ljava/util/Collection;
    :try_start_9
    invoke-static/range {p2 .. p3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findIssuerCerts(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_9
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_5

    .line 270
    :try_start_a
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 272
    new-instance v13, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v14, "No issuer certificate for certificate in certification path found."

    invoke-direct {v13, v14}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 251
    .end local v9    # "issuers":Ljava/util/Collection;
    :catch_4
    move-exception v7

    .line 253
    .local v7, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v13, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v14, "No additional X.509 stores can be added from certificate locations."

    invoke-direct {v13, v14, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 264
    .end local v7    # "e":Ljava/security/cert/CertificateParsingException;
    .restart local v9    # "issuers":Ljava/util/Collection;
    :catch_5
    move-exception v7

    .line 266
    .local v7, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v13, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v14, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v13, v14, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 275
    .end local v7    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :cond_6
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 277
    .local v10, "it":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    if-nez v4, :cond_4

    .line 279
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 282
    .local v8, "issuer":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->build(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    :try_end_a
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v4

    .line 288
    goto :goto_1
.end method


# virtual methods
.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 17
    .param p1, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 47
    move-object/from16 v0, p1

    instance-of v14, v0, Ljava/security/cert/PKIXBuilderParameters;

    if-nez v14, :cond_0

    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    if-nez v14, :cond_0

    .line 50
    new-instance v14, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Parameters must be an instance of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-class v16, Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " or "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-class v16, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 58
    :cond_0
    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    if-eqz v14, :cond_1

    move-object/from16 v8, p1

    .line 60
    check-cast v8, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    .line 70
    .end local p1    # "params":Ljava/security/cert/CertPathParameters;
    .local v8, "pkixParams":Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, "certPathList":Ljava/util/List;
    invoke-virtual {v8}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getTargetConstraints()Lorg/spongycastle/util/Selector;

    move-result-object v3

    .line 76
    .local v3, "certSelect":Lorg/spongycastle/util/Selector;
    instance-of v14, v3, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    if-nez v14, :cond_2

    .line 78
    new-instance v14, Ljava/security/cert/CertPathBuilderException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TargetConstraints must be an instance of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-class v16, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " class."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 64
    .end local v2    # "certPathList":Ljava/util/List;
    .end local v3    # "certSelect":Lorg/spongycastle/util/Selector;
    .end local v8    # "pkixParams":Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;
    .restart local p1    # "params":Ljava/security/cert/CertPathParameters;
    :cond_1
    check-cast p1, Ljava/security/cert/PKIXBuilderParameters;

    .end local p1    # "params":Ljava/security/cert/CertPathParameters;
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-result-object v8

    check-cast v8, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    .restart local v8    # "pkixParams":Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;
    goto :goto_0

    .line 86
    .restart local v2    # "certPathList":Ljava/util/List;
    .restart local v3    # "certSelect":Lorg/spongycastle/util/Selector;
    :cond_2
    :try_start_0
    check-cast v3, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    .end local v3    # "certSelect":Lorg/spongycastle/util/Selector;
    invoke-virtual {v8}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getStores()Ljava/util/List;

    move-result-object v14

    invoke-static {v3, v14}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 93
    .local v13, "targets":Ljava/util/Collection;
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 95
    new-instance v14, Ljava/security/cert/CertPathBuilderException;

    const-string v15, "No attribute certificate found matching targetContraints."

    invoke-direct {v14, v15}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 88
    .end local v13    # "targets":Ljava/util/Collection;
    :catch_0
    move-exception v4

    .line 90
    .local v4, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v14, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;

    const-string v15, "Error finding target attribute certificate."

    invoke-direct {v14, v15, v4}, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 99
    .end local v4    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v13    # "targets":Ljava/util/Collection;
    :cond_3
    const/4 v10, 0x0

    .line 102
    .local v10, "result":Ljava/security/cert/CertPathBuilderResult;
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 103
    .local v12, "targetIter":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    if-nez v10, :cond_8

    .line 105
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/x509/X509AttributeCertificate;

    .line 107
    .local v1, "cert":Lorg/spongycastle/x509/X509AttributeCertificate;
    new-instance v11, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v11}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 108
    .local v11, "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    invoke-interface {v1}, Lorg/spongycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v9

    .line 109
    .local v9, "principals":[Ljava/security/Principal;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 110
    .local v6, "issuers":Ljava/util/Set;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v14, v9

    if-ge v5, v14, :cond_6

    .line 114
    :try_start_1
    aget-object v14, v9, v5

    instance-of v14, v14, Ljavax/security/auth/x500/X500Principal;

    if-eqz v14, :cond_5

    .line 116
    aget-object v14, v9, v5

    check-cast v14, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v14}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/spongycastle/x509/X509CertStoreSelector;->setSubject([B)V

    .line 118
    :cond_5
    invoke-virtual {v8}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getStores()Ljava/util/List;

    move-result-object v14

    invoke-static {v11, v14}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 119
    invoke-virtual {v8}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v14

    invoke-static {v11, v14}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 110
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 121
    :catch_1
    move-exception v4

    .line 123
    .restart local v4    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v14, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;

    const-string v15, "Public key certificate for attribute certificate cannot be searched."

    invoke-direct {v14, v15, v4}, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 127
    .end local v4    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :catch_2
    move-exception v4

    .line 129
    .local v4, "e":Ljava/io/IOException;
    new-instance v14, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;

    const-string v15, "cannot encode X500Principal."

    invoke-direct {v14, v15, v4}, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 134
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 136
    new-instance v14, Ljava/security/cert/CertPathBuilderException;

    const-string v15, "Public key certificate for attribute certificate cannot be found."

    invoke-direct {v14, v15}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 139
    :cond_7
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 140
    .local v7, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    if-nez v10, :cond_4

    .line 142
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v14, v8, v2}, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->build(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v10

    goto :goto_2

    .line 146
    .end local v1    # "cert":Lorg/spongycastle/x509/X509AttributeCertificate;
    .end local v5    # "i":I
    .end local v6    # "issuers":Ljava/util/Set;
    .end local v7    # "it":Ljava/util/Iterator;
    .end local v9    # "principals":[Ljava/security/Principal;
    .end local v11    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    :cond_8
    if-nez v10, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-eqz v14, :cond_9

    .line 148
    new-instance v14, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;

    const-string v15, "Possible certificate chain could not be validated."

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 153
    :cond_9
    if-nez v10, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-nez v14, :cond_a

    .line 155
    new-instance v14, Ljava/security/cert/CertPathBuilderException;

    const-string v15, "Unable to find certificate chain."

    invoke-direct {v14, v15}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 159
    :cond_a
    return-object v10
.end method
