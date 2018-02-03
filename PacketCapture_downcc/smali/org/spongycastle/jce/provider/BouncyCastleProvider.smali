.class public final Lorg/spongycastle/jce/provider/BouncyCastleProvider;
.super Ljava/security/Provider;
.source "BouncyCastleProvider.java"

# interfaces
.implements Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;


# static fields
.field private static final ASYMMETRIC_CIPHERS:[Ljava/lang/String;

.field private static final ASYMMETRIC_GENERIC:[Ljava/lang/String;

.field public static final CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

.field private static final DIGESTS:[Ljava/lang/String;

.field private static final KEYSTORES:[Ljava/lang/String;

.field private static final SYMMETRIC_CIPHERS:[Ljava/lang/String;

.field private static final SYMMETRIC_GENERIC:[Ljava/lang/String;

.field private static final SYMMETRIC_MACS:[Ljava/lang/String;

.field private static info:Ljava/lang/String;

.field private static final keyInfoConverters:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const-string v0, "BouncyCastle Security Provider v1.51"

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    .line 51
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;-><init>()V

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    .line 60
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "PBEPBKDF2"

    aput-object v1, v0, v3

    const-string v1, "PBEPKCS12"

    aput-object v1, v0, v4

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SipHash"

    aput-object v1, v0, v3

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    .line 70
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AES"

    aput-object v1, v0, v3

    const-string v1, "ARC4"

    aput-object v1, v0, v4

    const-string v1, "Blowfish"

    aput-object v1, v0, v5

    const-string v1, "Camellia"

    aput-object v1, v0, v6

    const-string v1, "CAST5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "CAST6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ChaCha"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DES"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DESede"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GOST28147"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Grainv1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Grain128"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "HC128"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "HC256"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "IDEA"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Noekeon"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "RC2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "RC5"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "RC6"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Rijndael"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Salsa20"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "SEED"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Serpent"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Shacal2"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Skipjack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "TEA"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Twofish"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Threefish"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "VMPC"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "VMPCKSA3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "XTEA"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "XSalsa20"

    aput-object v2, v0, v1

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Ljava/lang/String;

    .line 85
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "X509"

    aput-object v1, v0, v3

    const-string v1, "IES"

    aput-object v1, v0, v4

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    .line 90
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DSA"

    aput-object v1, v0, v3

    const-string v1, "DH"

    aput-object v1, v0, v4

    const-string v1, "EC"

    aput-object v1, v0, v5

    const-string v1, "RSA"

    aput-object v1, v0, v6

    const-string v1, "GOST"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ECGOST"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ElGamal"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DSTU4145"

    aput-object v2, v0, v1

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    .line 99
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GOST3411"

    aput-object v1, v0, v3

    const-string v1, "MD2"

    aput-object v1, v0, v4

    const-string v1, "MD4"

    aput-object v1, v0, v5

    const-string v1, "MD5"

    aput-object v1, v0, v6

    const-string v1, "SHA1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "RIPEMD128"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RIPEMD160"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "RIPEMD256"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RIPEMD320"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SHA224"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SHA256"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SHA384"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SHA512"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SHA3"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Skein"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "SM3"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Tiger"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Whirlpool"

    aput-object v2, v0, v1

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    .line 108
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "BC"

    aput-object v1, v0, v3

    const-string v1, "PKCS12"

    aput-object v1, v0, v4

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 120
    const-string v0, "SC"

    const-wide v2, 0x3ff828f5c28f5c29L    # 1.51

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 122
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider$1;

    invoke-direct {v0, p0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider$1;-><init>(Lorg/spongycastle/jce/provider/BouncyCastleProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/jce/provider/BouncyCastleProvider;)V
    .locals 0
    .param p0, "x0"    # Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->setup()V

    return-void
.end method

.method public static getPrivateKey(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 3
    .param p0, "privateKeyInfo"    # Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    .line 276
    .local v0, "converter":Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    if-nez v0, :cond_0

    .line 278
    const/4 v1, 0x0

    .line 281
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0}, Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePrivate(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPublicKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 3
    .param p0, "publicKeyInfo"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    .line 263
    .local v0, "converter":Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    if-nez v0, :cond_0

    .line 265
    const/4 v1, 0x0

    .line 268
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0}, Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePublic(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v1

    goto :goto_0
.end method

.method private loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;

    .prologue
    .line 194
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p2

    if-eq v2, v4, :cond_2

    .line 196
    const/4 v0, 0x0

    .line 199
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 201
    .local v3, "loader":Ljava/lang/ClassLoader;
    if-eqz v3, :cond_1

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$Mappings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 215
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    :goto_1
    if-eqz v0, :cond_0

    .line 219
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/jcajce/provider/util/AlgorithmProvider;

    invoke-virtual {v4, p0}, Lorg/spongycastle/jcajce/provider/util/AlgorithmProvider;->configure(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .restart local v3    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$Mappings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1

    .line 221
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/InternalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot create instance of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "$Mappings : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 228
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 210
    .restart local v0    # "clazz":Ljava/lang/Class;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private setup()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "org.spongycastle.jcajce.provider.digest."

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    const-string v0, "org.spongycastle.jcajce.provider.symmetric."

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 138
    const-string v0, "org.spongycastle.jcajce.provider.symmetric."

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 140
    const-string v0, "org.spongycastle.jcajce.provider.symmetric."

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 142
    const-string v0, "org.spongycastle.jcajce.provider.asymmetric."

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    const-string v0, "org.spongycastle.jcajce.provider.asymmetric."

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 146
    const-string v0, "org.spongycastle.jcajce.provider.keystore."

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    const-string v0, "X509Store.CERTIFICATE/COLLECTION"

    const-string v1, "org.spongycastle.jce.provider.X509StoreCertCollection"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/COLLECTION"

    const-string v1, "org.spongycastle.jce.provider.X509StoreAttrCertCollection"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "X509Store.CRL/COLLECTION"

    const-string v1, "org.spongycastle.jce.provider.X509StoreCRLCollection"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "X509Store.CERTIFICATEPAIR/COLLECTION"

    const-string v1, "org.spongycastle.jce.provider.X509StoreCertPairCollection"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "X509Store.CERTIFICATE/LDAP"

    const-string v1, "org.spongycastle.jce.provider.X509StoreLDAPCerts"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "X509Store.CRL/LDAP"

    const-string v1, "org.spongycastle.jce.provider.X509StoreLDAPCRLs"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/LDAP"

    const-string v1, "org.spongycastle.jce.provider.X509StoreLDAPAttrCerts"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "X509Store.CERTIFICATEPAIR/LDAP"

    const-string v1, "org.spongycastle.jce.provider.X509StoreLDAPCertPairs"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v0, "X509StreamParser.CERTIFICATE"

    const-string v1, "org.spongycastle.jce.provider.X509CertParser"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "X509StreamParser.ATTRIBUTECERTIFICATE"

    const-string v1, "org.spongycastle.jce.provider.X509AttrCertParser"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "X509StreamParser.CRL"

    const-string v1, "org.spongycastle.jce.provider.X509CRLParser"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v0, "X509StreamParser.CERTIFICATEPAIR"

    const-string v1, "org.spongycastle.jce.provider.X509CertPairParser"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "Cipher.BROKENPBEWITHMD5ANDDES"

    const-string v1, "org.spongycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "Cipher.BROKENPBEWITHSHA1ANDDES"

    const-string v1, "org.spongycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "Cipher.OLDPBEWITHSHAANDTWOFISH-CBC"

    const-string v1, "org.spongycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "CertPathValidator.RFC3281"

    const-string v1, "org.spongycastle.jce.provider.PKIXAttrCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "CertPathBuilder.RFC3281"

    const-string v1, "org.spongycastle.jce.provider.PKIXAttrCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "CertPathValidator.RFC3280"

    const-string v1, "org.spongycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "CertPathBuilder.RFC3280"

    const-string v1, "org.spongycastle.jce.provider.PKIXCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "CertPathValidator.PKIX"

    const-string v1, "org.spongycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "CertPathBuilder.PKIX"

    const-string v1, "org.spongycastle.jce.provider.PKIXCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "CertStore.Collection"

    const-string v1, "org.spongycastle.jce.provider.CertStoreCollectionSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "CertStore.LDAP"

    const-string v1, "org.spongycastle.jce.provider.X509LDAPCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "CertStore.Multi"

    const-string v1, "org.spongycastle.jce.provider.MultiCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v0, "Alg.Alias.CertStore.X509LDAP"

    const-string v1, "LDAP"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method


# virtual methods
.method public addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate provider key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method public addKeyInfoConverter(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V
    .locals 1
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "keyInfoConverter"    # Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    .prologue
    .line 255
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-void
.end method

.method public hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

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
