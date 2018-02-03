.class public Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.super Ljavax/crypto/KeyAgreementSpi;
.source "KeyAgreementSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA1KDF;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHwithSHA1KDF;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQV;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHC;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DH;
    }
.end annotation


# static fields
.field private static final algorithms:Ljava/util/Hashtable;

.field private static final converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

.field private static final des:Ljava/util/Hashtable;

.field private static final oids:Ljava/util/Hashtable;


# instance fields
.field private agreement:Lorg/spongycastle/crypto/BasicAgreement;

.field private kaAlgorithm:Ljava/lang/String;

.field private kdf:Lorg/spongycastle/crypto/DerivationFunction;

.field private parameters:Lorg/spongycastle/crypto/params/ECDomainParameters;

.field private result:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 55
    new-instance v4, Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v4}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    .line 56
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    sput-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    .line 57
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    sput-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    .line 58
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    sput-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    .line 62
    const/16 v4, 0x40

    invoke-static {v4}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 63
    .local v3, "i64":Ljava/lang/Integer;
    const/16 v4, 0x80

    invoke-static {v4}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 64
    .local v0, "i128":Ljava/lang/Integer;
    const/16 v4, 0xc0

    invoke-static {v4}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 65
    .local v1, "i192":Ljava/lang/Integer;
    const/16 v4, 0x100

    invoke-static {v4}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 67
    .local v2, "i256":Ljava/lang/Integer;
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    const-string v5, "DESEDE"

    sget-object v6, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    const-string v5, "AES"

    sget-object v6, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    const-string v5, "DES"

    sget-object v6, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    const-string v5, "DES"

    const-string v6, "DES"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    const-string v5, "DESEDE"

    const-string v6, "DES"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DES"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DES"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DES"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;)V
    .locals 0
    .param p1, "kaAlgorithm"    # Ljava/lang/String;
    .param p2, "agreement"    # Lorg/spongycastle/crypto/BasicAgreement;
    .param p3, "kdf"    # Lorg/spongycastle/crypto/DerivationFunction;

    .prologue
    .line 104
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    .line 107
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    .line 108
    return-void
.end method

.method private bigIntToBytes(Ljava/math/BigInteger;)[B
    .locals 3
    .param p1, "r"    # Ljava/math/BigInteger;

    .prologue
    .line 97
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    sget-object v1, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lorg/spongycastle/math/ec/ECCurve;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 312
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "fullName":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initFromKey(Ljava/security/Key;)V
    .locals 9
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    instance-of v6, v6, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;

    if-eqz v6, :cond_2

    .line 269
    instance-of v6, p1, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;

    if-nez v6, :cond_0

    .line 271
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " key agreement requires "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;

    invoke-static {v8}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for initialisation"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v3, p1

    .line 275
    check-cast v3, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;

    .line 276
    .local v3, "mqvPrivKey":Lorg/spongycastle/jce/interfaces/MQVPrivateKey;
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;->getStaticPrivateKey()Ljava/security/PrivateKey;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 278
    .local v5, "staticPrivKey":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;->getEphemeralPrivateKey()Ljava/security/PrivateKey;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 281
    .local v0, "ephemPrivKey":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    const/4 v1, 0x0

    .line 282
    .local v1, "ephemPubKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;->getEphemeralPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 284
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;->getEphemeralPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    .end local v1    # "ephemPubKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    check-cast v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 288
    .restart local v1    # "ephemPubKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    :cond_1
    new-instance v2, Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-direct {v2, v5, v0, v1}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;-><init>(Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V

    .line 289
    .local v2, "localParams":Lorg/spongycastle/crypto/params/MQVPrivateParameters;
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 293
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v6, v2}, Lorg/spongycastle/crypto/BasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 308
    .end local v0    # "ephemPrivKey":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .end local v1    # "ephemPubKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .end local v2    # "localParams":Lorg/spongycastle/crypto/params/MQVPrivateParameters;
    .end local v3    # "mqvPrivKey":Lorg/spongycastle/jce/interfaces/MQVPrivateKey;
    .end local v5    # "staticPrivKey":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .end local p1    # "key":Ljava/security/Key;
    :goto_0
    return-void

    .line 297
    .restart local p1    # "key":Ljava/security/Key;
    :cond_2
    instance-of v6, p1, Ljava/security/PrivateKey;

    if-nez v6, :cond_3

    .line 299
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " key agreement requires "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lorg/spongycastle/jce/interfaces/ECPrivateKey;

    invoke-static {v8}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for initialisation"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 303
    :cond_3
    check-cast p1, Ljava/security/PrivateKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 304
    .local v4, "privKey":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 306
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v6, v4}, Lorg/spongycastle/crypto/BasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0
.end method


# virtual methods
.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 7
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lorg/spongycastle/crypto/params/ECDomainParameters;

    if-nez v4, :cond_0

    .line 117
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not initialised."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 120
    :cond_0
    if-nez p2, :cond_1

    .line 122
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " can only be between two parties."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 126
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    instance-of v4, v4, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;

    if-eqz v4, :cond_3

    .line 128
    instance-of v4, p1, Lorg/spongycastle/jce/interfaces/MQVPublicKey;

    if-nez v4, :cond_2

    .line 130
    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " key agreement requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lorg/spongycastle/jce/interfaces/MQVPublicKey;

    invoke-static {v6}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for doPhase"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    move-object v1, p1

    .line 134
    check-cast v1, Lorg/spongycastle/jce/interfaces/MQVPublicKey;

    .line 135
    .local v1, "mqvPubKey":Lorg/spongycastle/jce/interfaces/MQVPublicKey;
    invoke-interface {v1}, Lorg/spongycastle/jce/interfaces/MQVPublicKey;->getStaticKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 137
    .local v3, "staticKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    invoke-interface {v1}, Lorg/spongycastle/jce/interfaces/MQVPublicKey;->getEphemeralKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 140
    .local v0, "ephemKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    new-instance v2, Lorg/spongycastle/crypto/params/MQVPublicParameters;

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/crypto/params/MQVPublicParameters;-><init>(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V

    .line 157
    .end local v0    # "ephemKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .end local v1    # "mqvPubKey":Lorg/spongycastle/jce/interfaces/MQVPublicKey;
    .end local v3    # "staticKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .end local p1    # "key":Ljava/security/Key;
    .local v2, "pubKey":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v4, v2}, Lorg/spongycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->result:Ljava/math/BigInteger;

    .line 159
    const/4 v4, 0x0

    return-object v4

    .line 146
    .end local v2    # "pubKey":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p1    # "key":Ljava/security/Key;
    :cond_3
    instance-of v4, p1, Ljava/security/PublicKey;

    if-nez v4, :cond_4

    .line 148
    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " key agreement requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    invoke-static {v6}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for doPhase"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    :cond_4
    check-cast p1, Ljava/security/PublicKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .restart local v2    # "pubKey":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0
.end method

.method protected engineGenerateSecret([BI)I
    .locals 4
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    .line 181
    .local v0, "secret":[B
    array-length v1, p1

    sub-int/2addr v1, p2

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 183
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key agreement: need "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    array-length v1, v0

    return v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 11
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 195
    iget-object v8, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v8}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v7

    .line 196
    .local v7, "secret":[B
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "algKey":Ljava/lang/String;
    move-object v5, p1

    .line 199
    .local v5, "oidAlgorithm":Ljava/lang/String;
    sget-object v8, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 201
    sget-object v8, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    .line 204
    :cond_0
    iget-object v8, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    if-eqz v8, :cond_4

    .line 206
    sget-object v8, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 208
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown algorithm encountered: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 211
    :cond_1
    sget-object v8, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 213
    .local v3, "keySize":I
    new-instance v6, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;

    new-instance v8, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v8, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8, v3, v7}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;I[B)V

    .line 215
    .local v6, "params":Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;
    div-int/lit8 v8, v3, 0x8

    new-array v2, v8, [B

    .line 216
    .local v2, "keyBytes":[B
    iget-object v8, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    invoke-interface {v8, v6}, Lorg/spongycastle/crypto/DerivationFunction;->init(Lorg/spongycastle/crypto/DerivationParameters;)V

    .line 217
    iget-object v8, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    array-length v9, v2

    invoke-interface {v8, v2, v10, v9}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 218
    move-object v7, v2

    .line 234
    .end local v2    # "keyBytes":[B
    .end local v3    # "keySize":I
    .end local v6    # "params":Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;
    :cond_2
    :goto_0
    sget-object v8, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 236
    invoke-static {v7}, Lorg/spongycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 239
    :cond_3
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v8, v7, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v8

    .line 222
    :cond_4
    sget-object v8, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 224
    sget-object v8, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 226
    .local v4, "length":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/lit8 v8, v8, 0x8

    new-array v1, v8, [B

    .line 228
    .local v1, "key":[B
    array-length v8, v1

    invoke-static {v7, v10, v1, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    move-object v7, v1

    goto :goto_0
.end method

.method protected engineGenerateSecret()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "KDF can only be used when algorithm is known"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->initFromKey(Ljava/security/Key;)V

    .line 262
    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 248
    if-eqz p2, :cond_0

    .line 250
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No algorithm parameters supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->initFromKey(Ljava/security/Key;)V

    .line 254
    return-void
.end method
