.class public Lorg/spongycastle/x509/util/LDAPStoreHelper;
.super Ljava/lang/Object;
.source "LDAPStoreHelper.java"


# static fields
.field private static LDAP_PROVIDER:Ljava/lang/String;

.field private static REFERRALS_IGNORE:Ljava/lang/String;

.field private static cacheSize:I

.field private static lifeTime:J


# instance fields
.field private cacheMap:Ljava/util/Map;

.field private params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "com.sun.jndi.ldap.LdapCtxFactory"

    sput-object v0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->LDAP_PROVIDER:Ljava/lang/String;

    .line 85
    const-string v0, "ignore"

    sput-object v0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->REFERRALS_IGNORE:Ljava/lang/String;

    .line 1032
    const/16 v0, 0x20

    sput v0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheSize:I

    .line 1034
    const-wide/32 v0, 0xea60

    sput-wide v0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->lifeTime:J

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/jce/X509LDAPCertStoreParameters;)V
    .locals 2
    .param p1, "params"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    new-instance v0, Ljava/util/HashMap;

    sget v1, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheSize:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 75
    return-void
.end method

.method private declared-synchronized addToCache(Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .param p1, "searchCriteria"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;

    .prologue
    .line 1038
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v5, v10, v11}, Ljava/sql/Date;-><init>(J)V

    .line 1039
    .local v5, "now":Ljava/sql/Date;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .local v0, "cacheEntry":Ljava/util/List;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    iget-object v9, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1044
    iget-object v9, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v9, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    :goto_0
    monitor-exit p0

    return-void

    .line 1048
    :cond_0
    :try_start_1
    iget-object v9, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    sget v10, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheSize:I

    if-lt v9, v10, :cond_3

    .line 1051
    iget-object v9, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1052
    .local v4, "it":Ljava/util/Iterator;
    invoke-virtual {v5}, Ljava/sql/Date;->getTime()J

    move-result-wide v6

    .line 1053
    .local v6, "oldest":J
    const/4 v8, 0x0

    .line 1054
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1056
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1057
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/sql/Date;

    invoke-virtual {v9}, Ljava/sql/Date;->getTime()J

    move-result-wide v2

    .line 1059
    .local v2, "current":J
    cmp-long v9, v2, v6

    if-gez v9, :cond_1

    .line 1061
    move-wide v6, v2

    .line 1062
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .local v8, "replace":Ljava/lang/Object;
    goto :goto_1

    .line 1065
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "current":J
    .end local v8    # "replace":Ljava/lang/Object;
    :cond_2
    iget-object v9, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v6    # "oldest":J
    :cond_3
    iget-object v9, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v9, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1038
    .end local v0    # "cacheEntry":Ljava/util/List;
    .end local v5    # "now":Ljava/sql/Date;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private attrCertSubjectSerialSearch(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "xselector"    # Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    .param p2, "attrs"    # [Ljava/lang/String;
    .param p3, "attrNames"    # [Ljava/lang/String;
    .param p4, "subjectAttributeNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 326
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v3, "list":Ljava/util/List;
    const/4 v7, 0x0

    .line 333
    .local v7, "subject":Ljava/lang/String;
    const/4 v5, 0x0

    .line 335
    .local v5, "serial":Ljava/lang/String;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 336
    .local v6, "serials":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 337
    .local v4, "principals":[Ljava/security/Principal;
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 340
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 342
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 348
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v4

    .line 352
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 354
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v8

    invoke-interface {v8}, Lorg/spongycastle/x509/X509AttributeCertificate;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 356
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v8

    invoke-interface {v8}, Lorg/spongycastle/x509/X509AttributeCertificate;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v4

    .line 360
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v8

    invoke-interface {v8}, Lorg/spongycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_3
    if-eqz v4, :cond_4

    .line 366
    aget-object v8, v4, v9

    instance-of v8, v8, Ljavax/security/auth/x500/X500Principal;

    if-eqz v8, :cond_6

    .line 368
    aget-object v8, v4, v9

    check-cast v8, Ljavax/security/auth/x500/X500Principal;

    const-string v9, "RFC1779"

    invoke-virtual {v8, v9}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 377
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 379
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_5
    const/4 v0, 0x0

    .line 383
    .local v0, "attrValue":Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 385
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, p4

    if-ge v1, v8, :cond_7

    .line 387
    aget-object v8, p4, v1

    invoke-direct {p0, v7, v8}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p3, v8, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 374
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_6
    aget-object v8, v4, v9

    invoke-interface {v8}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 393
    .restart local v0    # "attrValue":Ljava/lang/String;
    :cond_7
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v8

    if-lez v8, :cond_8

    iget-object v8, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v8}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 396
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 397
    .local v2, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 399
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "serial":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 400
    .restart local v5    # "serial":Ljava/lang/String;
    iget-object v8, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v8}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v5, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 403
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v8

    if-nez v8, :cond_9

    if-nez v7, :cond_9

    .line 405
    const-string v8, "*"

    invoke-direct {p0, p3, v8, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 408
    :cond_9
    return-object v3
.end method

.method private cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "xselector"    # Lorg/spongycastle/x509/X509CRLStoreSelector;
    .param p2, "attrs"    # [Ljava/lang/String;
    .param p3, "attrNames"    # [Ljava/lang/String;
    .param p4, "issuerAttributeNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 428
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v5, "list":Ljava/util/List;
    const/4 v2, 0x0

    .line 431
    .local v2, "issuer":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 432
    .local v3, "issuers":Ljava/util/Collection;
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 434
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 436
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 438
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getCertificateIssuer(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getAttrCertificateChecking()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 442
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getAttrCertificateChecking()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v7

    invoke-interface {v7}, Lorg/spongycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v6

    .line 443
    .local v6, "principals":[Ljava/security/Principal;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_3

    .line 445
    aget-object v7, v6, v1

    instance-of v7, v7, Ljavax/security/auth/x500/X500Principal;

    if-eqz v7, :cond_2

    .line 447
    aget-object v7, v6, v1

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    .end local v1    # "i":I
    .end local v6    # "principals":[Ljava/security/Principal;
    :cond_3
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 452
    .local v4, "it":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 454
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/security/auth/x500/X500Principal;

    const-string v8, "RFC1779"

    invoke-virtual {v7, v8}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 455
    const/4 v0, 0x0

    .line 457
    .local v0, "attrValue":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v7, p4

    if-ge v1, v7, :cond_4

    .line 459
    aget-object v7, p4, v1

    invoke-direct {p0, v2, v7}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p3, v7, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 465
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_5
    if-nez v2, :cond_6

    .line 467
    const-string v7, "*"

    invoke-direct {p0, p3, v7, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 470
    :cond_6
    return-object v5
.end method

.method private certSubjectSerialSearch(Lorg/spongycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "xselector"    # Lorg/spongycastle/x509/X509CertStoreSelector;
    .param p2, "attrs"    # [Ljava/lang/String;
    .param p3, "attrNames"    # [Ljava/lang/String;
    .param p4, "subjectAttributeNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v2, "list":Ljava/util/List;
    const/4 v4, 0x0

    .line 207
    .local v4, "subject":Ljava/lang/String;
    const/4 v3, 0x0

    .line 209
    .local v3, "serial":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getSubjectAsString(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/lang/String;

    move-result-object v4

    .line 211
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 213
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 217
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    const-string v6, "RFC1779"

    invoke-virtual {v5, v6}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    :cond_1
    const/4 v0, 0x0

    .line 222
    .local v0, "attrValue":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 224
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p4

    if-ge v1, v5, :cond_2

    .line 226
    aget-object v5, p4, v1

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3, v5, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v1    # "i":I
    :cond_2
    if-eqz v3, :cond_3

    iget-object v5, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v5}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 234
    move-object v0, v3

    .line 235
    iget-object v5, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v5}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v0, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    :cond_3
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    .line 241
    const-string v5, "*"

    invoke-direct {p0, p3, v5, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    :cond_4
    return-object v2
.end method

.method private connectLDAP()Ljavax/naming/directory/DirContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 100
    .local v1, "props":Ljava/util/Properties;
    const-string v2, "java.naming.factory.initial"

    sget-object v3, Lorg/spongycastle/x509/util/LDAPStoreHelper;->LDAP_PROVIDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    const-string v2, "java.naming.batchsize"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    const-string v2, "java.naming.provider.url"

    iget-object v3, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v3}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    const-string v2, "java.naming.factory.url.pkgs"

    const-string v3, "com.sun.jndi.url"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    const-string v2, "java.naming.referral"

    sget-object v3, Lorg/spongycastle/x509/util/LDAPStoreHelper;->REFERRALS_IGNORE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    const-string v2, "java.naming.security.authentication"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    new-instance v0, Ljavax/naming/directory/InitialDirContext;

    invoke-direct {v0, v1}, Ljavax/naming/directory/InitialDirContext;-><init>(Ljava/util/Hashtable;)V

    .line 110
    .local v0, "ctx":Ljavax/naming/directory/DirContext;
    return-object v0
.end method

.method private createAttributeCertificates(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;
    .locals 6
    .param p1, "list"    # Ljava/util/List;
    .param p2, "xselector"    # Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 656
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 658
    .local v1, "certSet":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 659
    .local v2, "it":Ljava/util/Iterator;
    new-instance v3, Lorg/spongycastle/jce/provider/X509AttrCertParser;

    invoke-direct {v3}, Lorg/spongycastle/jce/provider/X509AttrCertParser;-><init>()V

    .line 660
    .local v3, "parser":Lorg/spongycastle/jce/provider/X509AttrCertParser;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 664
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v5}, Lorg/spongycastle/jce/provider/X509AttrCertParser;->engineInit(Ljava/io/InputStream;)V

    .line 666
    invoke-virtual {v3}, Lorg/spongycastle/jce/provider/X509AttrCertParser;->engineRead()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/X509AttributeCertificate;

    .line 668
    .local v0, "cert":Lorg/spongycastle/x509/X509AttributeCertificate;
    invoke-virtual {p2, v0}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 670
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/spongycastle/x509/util/StreamParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 673
    .end local v0    # "cert":Lorg/spongycastle/x509/X509AttributeCertificate;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 679
    :cond_1
    return-object v1
.end method

.method private createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;
    .locals 6
    .param p1, "list"    # Ljava/util/List;
    .param p2, "xselector"    # Lorg/spongycastle/x509/X509CRLStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 575
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 577
    .local v1, "crlSet":Ljava/util/Set;
    new-instance v3, Lorg/spongycastle/jce/provider/X509CRLParser;

    invoke-direct {v3}, Lorg/spongycastle/jce/provider/X509CRLParser;-><init>()V

    .line 578
    .local v3, "parser":Lorg/spongycastle/jce/provider/X509CRLParser;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 579
    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 583
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v5}, Lorg/spongycastle/jce/provider/X509CRLParser;->engineInit(Ljava/io/InputStream;)V

    .line 585
    invoke-virtual {v3}, Lorg/spongycastle/jce/provider/X509CRLParser;->engineRead()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 586
    .local v0, "crl":Ljava/security/cert/X509CRL;
    invoke-virtual {p2, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 588
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/spongycastle/x509/util/StreamParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 591
    .end local v0    # "crl":Ljava/security/cert/X509CRL;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 597
    :cond_1
    return-object v1
.end method

.method private createCerts(Ljava/util/List;Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Set;
    .locals 6
    .param p1, "list"    # Ljava/util/List;
    .param p2, "xselector"    # Lorg/spongycastle/x509/X509CertStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 159
    .local v1, "certSet":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 160
    .local v2, "it":Ljava/util/Iterator;
    new-instance v3, Lorg/spongycastle/jce/provider/X509CertParser;

    invoke-direct {v3}, Lorg/spongycastle/jce/provider/X509CertParser;-><init>()V

    .line 161
    .local v3, "parser":Lorg/spongycastle/jce/provider/X509CertParser;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v5}, Lorg/spongycastle/jce/provider/X509CertParser;->engineInit(Ljava/io/InputStream;)V

    .line 167
    invoke-virtual {v3}, Lorg/spongycastle/jce/provider/X509CertParser;->engineRead()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 169
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {p2, v0}, Lorg/spongycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 181
    :cond_1
    return-object v1
.end method

.method private createCrossCertificatePairs(Ljava/util/List;Lorg/spongycastle/x509/X509CertPairStoreSelector;)Ljava/util/Set;
    .locals 11
    .param p1, "list"    # Ljava/util/List;
    .param p2, "xselector"    # Lorg/spongycastle/x509/X509CertPairStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 603
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 605
    .local v1, "certPairSet":Ljava/util/Set;
    const/4 v4, 0x0

    .line 606
    .local v4, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 614
    :try_start_0
    new-instance v6, Lorg/spongycastle/jce/provider/X509CertPairParser;

    invoke-direct {v6}, Lorg/spongycastle/jce/provider/X509CertPairParser;-><init>()V

    .line 615
    .local v6, "parser":Lorg/spongycastle/jce/provider/X509CertPairParser;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    check-cast v8, [B

    invoke-direct {v9, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v6, v9}, Lorg/spongycastle/jce/provider/X509CertPairParser;->engineInit(Ljava/io/InputStream;)V

    .line 617
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/X509CertPairParser;->engineRead()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/x509/X509CertificatePair;
    :try_end_0
    .catch Lorg/spongycastle/x509/util/StreamParsingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 634
    .end local v6    # "parser":Lorg/spongycastle/jce/provider/X509CertPairParser;
    .local v5, "pair":Lorg/spongycastle/x509/X509CertificatePair;
    :goto_1
    :try_start_1
    invoke-virtual {p2, v5}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 636
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 647
    .end local v5    # "pair":Lorg/spongycastle/x509/X509CertificatePair;
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 648
    goto :goto_0

    .line 619
    :catch_0
    move-exception v2

    .line 623
    .local v2, "e":Lorg/spongycastle/x509/util/StreamParsingException;
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v3, v0

    .line 624
    .local v3, "forward":[B
    add-int/lit8 v8, v4, 0x1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v7, v0

    .line 625
    .local v7, "reverse":[B
    new-instance v5, Lorg/spongycastle/x509/X509CertificatePair;

    new-instance v8, Lorg/spongycastle/asn1/x509/CertificatePair;

    new-instance v9, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v9, v3}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v9

    new-instance v10, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v10, v7}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/spongycastle/asn1/x509/CertificatePair;-><init>(Lorg/spongycastle/asn1/x509/Certificate;Lorg/spongycastle/asn1/x509/Certificate;)V

    invoke-direct {v5, v8}, Lorg/spongycastle/x509/X509CertificatePair;-><init>(Lorg/spongycastle/asn1/x509/CertificatePair;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 632
    .restart local v5    # "pair":Lorg/spongycastle/x509/X509CertificatePair;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 650
    .end local v2    # "e":Lorg/spongycastle/x509/util/StreamParsingException;
    .end local v3    # "forward":[B
    .end local v5    # "pair":Lorg/spongycastle/x509/X509CertificatePair;
    .end local v7    # "reverse":[B
    :cond_1
    return-object v1

    .line 643
    :catch_1
    move-exception v8

    goto :goto_2

    .line 639
    :catch_2
    move-exception v8

    goto :goto_2
.end method

.method private crossCertificatePairSubjectSearch(Lorg/spongycastle/x509/X509CertPairStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "xselector"    # Lorg/spongycastle/x509/X509CertPairStoreSelector;
    .param p2, "attrs"    # [Ljava/lang/String;
    .param p3, "attrNames"    # [Ljava/lang/String;
    .param p4, "subjectAttributeNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v2, "list":Ljava/util/List;
    const/4 v3, 0x0

    .line 275
    .local v3, "subject":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->getForwardSelector()Lorg/spongycastle/x509/X509CertStoreSelector;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 277
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->getForwardSelector()Lorg/spongycastle/x509/X509CertStoreSelector;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getSubjectAsString(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/lang/String;

    move-result-object v3

    .line 279
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->getCertPair()Lorg/spongycastle/x509/X509CertificatePair;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 281
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->getCertPair()Lorg/spongycastle/x509/X509CertificatePair;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/x509/X509CertificatePair;->getForward()Ljava/security/cert/X509Certificate;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 283
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->getCertPair()Lorg/spongycastle/x509/X509CertificatePair;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/x509/X509CertificatePair;->getForward()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    const-string v5, "RFC1779"

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    :cond_1
    const/4 v0, 0x0

    .line 288
    .local v0, "attrValue":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 290
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p4

    if-ge v1, v4, :cond_2

    .line 292
    aget-object v4, p4, v1

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p3, v4, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "i":I
    :cond_2
    if-nez v3, :cond_3

    .line 300
    const-string v4, "*"

    invoke-direct {p0, p3, v4, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 303
    :cond_3
    return-object v2
.end method

.method private getCertificateIssuer(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 1114
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method private getFromCache(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "searchCriteria"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1073
    iget-object v1, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1074
    .local v0, "entry":Ljava/util/List;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1075
    .local v2, "now":J
    if-eqz v0, :cond_1

    .line 1078
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/sql/Date;->getTime()J

    move-result-wide v6

    sget-wide v8, Lorg/spongycastle/x509/util/LDAPStoreHelper;->lifeTime:J

    sub-long v8, v2, v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_0

    move-object v1, v4

    .line 1084
    :goto_0
    return-object v1

    .line 1082
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 1084
    goto :goto_0
.end method

.method private getSubjectAsString(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/lang/String;
    .locals 5
    .param p1, "xselector"    # Lorg/spongycastle/x509/X509CertStoreSelector;

    .prologue
    .line 1099
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getSubjectAsBytes()[B

    move-result-object v1

    .line 1100
    .local v1, "encSubject":[B
    if-eqz v1, :cond_0

    .line 1102
    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v2, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    const-string v3, "RFC1779"

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1109
    :goto_0
    return-object v2

    .line 1105
    .end local v1    # "encSubject":[B
    :catch_0
    move-exception v0

    .line 1107
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/spongycastle/util/StoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception processing name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/util/StoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1109
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "encSubject":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "dNAttributeName"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x2c

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 115
    move-object v2, p1

    .line 116
    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, "begin":I
    if-ne v0, v6, :cond_0

    .line 120
    const-string v3, ""

    .line 151
    :goto_0
    return-object v3

    .line 122
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 124
    .local v1, "end":I
    if-ne v1, v6, :cond_1

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 128
    :cond_1
    :goto_1
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_2

    .line 130
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 131
    if-ne v1, v6, :cond_1

    .line 133
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 136
    :cond_2
    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 137
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 138
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    .line 141
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    :cond_3
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 145
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    :cond_4
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 149
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_5
    move-object v3, v2

    .line 151
    goto :goto_0
.end method

.method private search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .param p1, "attributeNames"    # [Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;
    .param p3, "attrs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 489
    const/4 v5, 0x0

    .line 490
    .local v5, "filter":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 492
    const/4 v5, 0x0

    .line 507
    :goto_0
    const-string v6, ""

    .line 508
    .local v6, "filter2":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p3

    array-length v13, v0

    if-ge v8, v13, :cond_3

    .line 510
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, p3, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "=*)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 508
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 496
    .end local v6    # "filter2":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_0
    const-string v5, ""

    .line 497
    const-string v13, "**"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 499
    const-string p2, "*"

    .line 501
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v8, v13, :cond_2

    .line 503
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, p1, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 501
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 505
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "(|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 512
    .restart local v6    # "filter2":Ljava/lang/String;
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "(|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 514
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "(&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 515
    .local v7, "filter3":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 517
    move-object v7, v6

    .line 520
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getFromCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 521
    .local v9, "list":Ljava/util/List;
    if-eqz v9, :cond_5

    move-object v10, v9

    .line 569
    .end local v9    # "list":Ljava/util/List;
    .local v10, "list":Ljava/lang/Object;
    :goto_3
    return-object v10

    .line 525
    .end local v10    # "list":Ljava/lang/Object;
    .restart local v9    # "list":Ljava/util/List;
    :cond_5
    const/4 v3, 0x0

    .line 526
    .local v3, "ctx":Ljavax/naming/directory/DirContext;
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "list":Ljava/util/List;
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .restart local v9    # "list":Ljava/util/List;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->connectLDAP()Ljavax/naming/directory/DirContext;

    move-result-object v3

    .line 532
    new-instance v2, Ljavax/naming/directory/SearchControls;

    invoke-direct {v2}, Ljavax/naming/directory/SearchControls;-><init>()V

    .line 533
    .local v2, "constraints":Ljavax/naming/directory/SearchControls;
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Ljavax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 534
    const-wide/16 v14, 0x0

    invoke-virtual {v2, v14, v15}, Ljavax/naming/directory/SearchControls;->setCountLimit(J)V

    .line 535
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljavax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v13}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getBaseDN()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13, v7, v2}, Ljavax/naming/directory/DirContext;->search(Ljava/lang/String;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object v11

    .line 538
    .local v11, "results":Ljavax/naming/NamingEnumeration;
    :cond_6
    invoke-interface {v11}, Ljavax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 540
    invoke-interface {v11}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/naming/directory/SearchResult;

    .line 541
    .local v12, "sr":Ljavax/naming/directory/SearchResult;
    invoke-virtual {v12}, Ljavax/naming/directory/SearchResult;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v13

    invoke-interface {v13}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v13

    invoke-interface {v13}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavax/naming/directory/Attribute;

    invoke-interface {v13}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v4

    .line 543
    .local v4, "enumeration":Ljavax/naming/NamingEnumeration;
    :goto_4
    invoke-interface {v4}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 545
    invoke-interface {v4}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 550
    .end local v2    # "constraints":Ljavax/naming/directory/SearchControls;
    .end local v4    # "enumeration":Ljavax/naming/NamingEnumeration;
    .end local v11    # "results":Ljavax/naming/NamingEnumeration;
    .end local v12    # "sr":Ljavax/naming/directory/SearchResult;
    :catch_0
    move-exception v13

    .line 560
    if-eqz v3, :cond_7

    .line 562
    :try_start_1
    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_7
    :goto_5
    move-object v10, v9

    .line 569
    .restart local v10    # "list":Ljava/lang/Object;
    goto :goto_3

    .line 548
    .end local v10    # "list":Ljava/lang/Object;
    .restart local v2    # "constraints":Ljavax/naming/directory/SearchControls;
    .restart local v11    # "results":Ljavax/naming/NamingEnumeration;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->addToCache(Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Ljavax/naming/NamingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 560
    if-eqz v3, :cond_7

    .line 562
    :try_start_3
    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 565
    :catch_1
    move-exception v13

    goto :goto_5

    .line 558
    .end local v2    # "constraints":Ljavax/naming/directory/SearchControls;
    .end local v11    # "results":Ljavax/naming/NamingEnumeration;
    :catchall_0
    move-exception v13

    .line 560
    if-eqz v3, :cond_9

    .line 562
    :try_start_4
    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 567
    :cond_9
    :goto_6
    throw v13

    .line 565
    :catch_2
    move-exception v13

    goto :goto_5

    :catch_3
    move-exception v14

    goto :goto_6
.end method

.method private splitString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1092
    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAACertificates(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 859
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAACertificateAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 860
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapAACertificateAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAACertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 863
    .local v5, "subjectAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 865
    .local v3, "list":Ljava/util/List;
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v4

    .line 866
    .local v4, "resultSet":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 868
    new-instance v2, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    .line 869
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    invoke-direct {p0, v2, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 871
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 874
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    :cond_0
    return-object v4
.end method

.method public getAttributeAuthorityRevocationLists(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509CRLStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 763
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAttributeAuthorityRevocationListAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapAttributeAuthorityRevocationListAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAttributeAuthorityRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 769
    .local v3, "issuerAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 771
    .local v4, "list":Ljava/util/List;
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 772
    .local v5, "resultSet":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 774
    new-instance v2, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 775
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    invoke-direct {p0, v2, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 778
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 780
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    :cond_0
    return-object v5
.end method

.method public getAttributeCertificateAttributes(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 982
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAttributeCertificateAttributeAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 983
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapAttributeCertificateAttributeAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAttributeCertificateAttributeSubjectAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 987
    .local v5, "subjectAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 989
    .local v3, "list":Ljava/util/List;
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v4

    .line 990
    .local v4, "resultSet":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 992
    new-instance v2, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    .line 993
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    invoke-direct {p0, v2, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 995
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 998
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    :cond_0
    return-object v4
.end method

.method public getAttributeCertificateRevocationLists(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509CRLStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 728
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAttributeCertificateRevocationListAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 730
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapAttributeCertificateRevocationListAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAttributeCertificateRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 735
    .local v3, "issuerAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 737
    .local v4, "list":Ljava/util/List;
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 738
    .local v5, "resultSet":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 740
    new-instance v2, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 741
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    invoke-direct {p0, v2, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 744
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 746
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    :cond_0
    return-object v5
.end method

.method public getAttributeDescriptorCertificates(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 891
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAttributeDescriptorCertificateAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapAttributeDescriptorCertificateAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAttributeDescriptorCertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 897
    .local v5, "subjectAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 899
    .local v3, "list":Ljava/util/List;
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v4

    .line 900
    .local v4, "resultSet":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 902
    new-instance v2, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    .line 903
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    invoke-direct {p0, v2, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 905
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 908
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    :cond_0
    return-object v4
.end method

.method public getAuthorityRevocationLists(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509CRLStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 695
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAuthorityRevocationListAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapAuthorityRevocationListAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAuthorityRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 701
    .local v3, "issuerAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 703
    .local v4, "list":Ljava/util/List;
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 704
    .local v5, "resultSet":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 706
    new-instance v2, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 707
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    invoke-direct {p0, v2, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 710
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 712
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    :cond_0
    return-object v5
.end method

.method public getCACertificates(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509CertStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 925
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCACertificateAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 926
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapCACertificateAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCACertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 929
    .local v5, "subjectAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->certSubjectSerialSearch(Lorg/spongycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 931
    .local v3, "list":Ljava/util/List;
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCerts(Ljava/util/List;Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v4

    .line 932
    .local v4, "resultSet":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 934
    new-instance v2, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 935
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509CertStoreSelector;
    invoke-direct {p0, v2, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->certSubjectSerialSearch(Lorg/spongycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 937
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCerts(Ljava/util/List;Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 939
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509CertStoreSelector;
    :cond_0
    return-object v4
.end method

.method public getCertificateRevocationLists(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509CRLStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 1011
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCertificateRevocationListAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1012
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapCertificateRevocationListAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCertificateRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1016
    .local v3, "issuerAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1018
    .local v4, "list":Ljava/util/List;
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 1019
    .local v5, "resultSet":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1021
    new-instance v2, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 1022
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    invoke-direct {p0, v2, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1025
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1027
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    :cond_0
    return-object v5
.end method

.method public getCrossCertificatePairs(Lorg/spongycastle/x509/X509CertPairStoreSelector;)Ljava/util/Collection;
    .locals 8
    .param p1, "selector"    # Lorg/spongycastle/x509/X509CertPairStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 793
    iget-object v7, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v7}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCrossCertificateAttribute()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v7, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v7}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapCrossCertificateAttributeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v7, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v7}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCrossCertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 797
    .local v6, "subjectAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->crossCertificatePairSubjectSearch(Lorg/spongycastle/x509/X509CertPairStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 799
    .local v4, "list":Ljava/util/List;
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCrossCertificatePairs(Ljava/util/List;Lorg/spongycastle/x509/X509CertPairStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 800
    .local v5, "resultSet":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 802
    new-instance v2, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 803
    .local v2, "emptyCertselector":Lorg/spongycastle/x509/X509CertStoreSelector;
    new-instance v3, Lorg/spongycastle/x509/X509CertPairStoreSelector;

    invoke-direct {v3}, Lorg/spongycastle/x509/X509CertPairStoreSelector;-><init>()V

    .line 805
    .local v3, "emptySelector":Lorg/spongycastle/x509/X509CertPairStoreSelector;
    invoke-virtual {v3, v2}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->setForwardSelector(Lorg/spongycastle/x509/X509CertStoreSelector;)V

    .line 806
    invoke-virtual {v3, v2}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->setReverseSelector(Lorg/spongycastle/x509/X509CertStoreSelector;)V

    .line 807
    invoke-direct {p0, v3, v1, v0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->crossCertificatePairSubjectSearch(Lorg/spongycastle/x509/X509CertPairStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 809
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCrossCertificatePairs(Ljava/util/List;Lorg/spongycastle/x509/X509CertPairStoreSelector;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 811
    .end local v2    # "emptyCertselector":Lorg/spongycastle/x509/X509CertStoreSelector;
    .end local v3    # "emptySelector":Lorg/spongycastle/x509/X509CertPairStoreSelector;
    :cond_0
    return-object v5
.end method

.method public getDeltaCertificateRevocationLists(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509CRLStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 952
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getDeltaRevocationListAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapDeltaRevocationListAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getDeltaRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 956
    .local v3, "issuerAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 958
    .local v4, "list":Ljava/util/List;
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 959
    .local v5, "resultSet":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 961
    new-instance v2, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 962
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    invoke-direct {p0, v2, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 965
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 967
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    :cond_0
    return-object v5
.end method

.method public getUserCertificates(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509CertStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 828
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getUserCertificateAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapUserCertificateAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getUserCertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 833
    .local v5, "subjectAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->certSubjectSerialSearch(Lorg/spongycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 835
    .local v3, "list":Ljava/util/List;
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCerts(Ljava/util/List;Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v4

    .line 836
    .local v4, "resultSet":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 838
    new-instance v2, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 839
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509CertStoreSelector;
    invoke-direct {p0, v2, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->certSubjectSerialSearch(Lorg/spongycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 841
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCerts(Ljava/util/List;Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 844
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509CertStoreSelector;
    :cond_0
    return-object v4
.end method
