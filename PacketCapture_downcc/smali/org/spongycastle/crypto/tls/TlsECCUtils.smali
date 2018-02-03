.class public Lorg/spongycastle/crypto/tls/TlsECCUtils;
.super Ljava/lang/Object;
.source "TlsECCUtils.java"


# static fields
.field public static final EXT_ec_point_formats:Ljava/lang/Integer;

.field public static final EXT_elliptic_curves:Ljava/lang/Integer;

.field private static final curveNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/16 v3, 0xa

    .line 32
    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->EXT_elliptic_curves:Ljava/lang/Integer;

    .line 33
    invoke-static {v4}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->EXT_ec_point_formats:Ljava/lang/Integer;

    .line 35
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sect163k1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sect163r1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sect163r2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sect193r1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sect193r2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sect233k1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sect233r1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sect239k1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sect283k1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sect283r1"

    aput-object v2, v0, v1

    const-string v1, "sect409k1"

    aput-object v1, v0, v3

    const-string v1, "sect409r1"

    aput-object v1, v0, v4

    const/16 v1, 0xc

    const-string v2, "sect571k1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sect571r1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "secp160k1"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "secp160r1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "secp160r2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "secp192k1"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "secp192r1"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "secp224k1"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "secp224r1"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "secp256k1"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "secp256r1"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "secp384r1"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "secp521r1"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "brainpoolP256r1"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "brainpoolP384r1"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "brainpoolP512r1"

    aput-object v2, v0, v1

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->curveNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateECDHBasicAgreement(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;)[B
    .locals 3
    .param p0, "publicKey"    # Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .param p1, "privateKey"    # Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .prologue
    .line 441
    new-instance v1, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;

    invoke-direct {v1}, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;-><init>()V

    .line 442
    .local v1, "basicAgreement":Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;
    invoke-virtual {v1, p1}, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 443
    invoke-virtual {v1, p0}, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;->calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    .line 450
    .local v0, "agreementValue":Ljava/math/BigInteger;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;->getFieldSize()I

    move-result v2

    invoke-static {v2, v0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v2

    return-object v2
.end method

.method private static checkNamedCurve([II)V
    .locals 2
    .param p0, "namedCurves"    # [I
    .param p1, "namedCurve"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 595
    :cond_0
    return-void
.end method

.method public static deserializeECFieldElement(I[B)Ljava/math/BigInteger;
    .locals 3
    .param p0, "fieldSize"    # I
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    add-int/lit8 v1, p0, 0x7

    div-int/lit8 v0, v1, 0x8

    .line 371
    .local v0, "requiredLength":I
    array-length v1, p1

    if-eq v1, v0, :cond_0

    .line 373
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 375
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static deserializeECPoint([SLorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECPoint;
    .locals 4
    .param p0, "ecPointFormats"    # [S
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2f

    .line 380
    if-eqz p2, :cond_0

    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 382
    :cond_0
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 386
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p2, v1

    packed-switch v1, :pswitch_data_0

    .line 414
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 391
    :pswitch_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/ECAlgorithms;->isF2mCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    const/4 v0, 0x2

    .line 417
    .local v0, "actualFormat":S
    :goto_0
    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v1

    if-nez v1, :cond_4

    .line 419
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 395
    .end local v0    # "actualFormat":S
    :cond_2
    invoke-static {p1}, Lorg/spongycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    const/4 v0, 0x1

    .restart local v0    # "actualFormat":S
    goto :goto_0

    .line 401
    .end local v0    # "actualFormat":S
    :cond_3
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 407
    :pswitch_1
    const/4 v0, 0x0

    .line 408
    .restart local v0    # "actualFormat":S
    goto :goto_0

    .line 422
    :cond_4
    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 386
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static deserializeECPublicKey([SLorg/spongycastle/crypto/params/ECDomainParameters;[B)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .locals 4
    .param p0, "ecPointFormats"    # [S
    .param p1, "curve_params"    # Lorg/spongycastle/crypto/params/ECDomainParameters;
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->deserializeECPoint([SLorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 431
    .local v0, "Y":Lorg/spongycastle/math/ec/ECPoint;
    new-instance v2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-direct {v2, v0, p1}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 433
    .end local v0    # "Y":Lorg/spongycastle/math/ec/ECPoint;
    :catch_0
    move-exception v1

    .line 435
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2
.end method

.method public static generateECKeyPair(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ECDomainParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 2
    .param p0, "random"    # Ljava/security/SecureRandom;
    .param p1, "ecParams"    # Lorg/spongycastle/crypto/params/ECDomainParameters;

    .prologue
    .line 455
    new-instance v0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    .line 456
    .local v0, "keyPairGenerator":Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;
    new-instance v1, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    invoke-direct {v1, p1, p0}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 457
    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    return-object v1
.end method

.method public static generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;[SLorg/spongycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .locals 3
    .param p0, "random"    # Ljava/security/SecureRandom;
    .param p1, "ecPointFormats"    # [S
    .param p2, "ecParams"    # Lorg/spongycastle/crypto/params/ECDomainParameters;
    .param p3, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-static {p0, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->generateECKeyPair(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ECDomainParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 465
    .local v1, "kp":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 466
    .local v0, "ecPublicKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {p1, v2, p3}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECPoint([SLorg/spongycastle/math/ec/ECPoint;Ljava/io/OutputStream;)V

    .line 468
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    return-object v2
.end method

.method public static getNameOfNamedCurve(I)Ljava/lang/String;
    .locals 2
    .param p0, "namedCurve"    # I

    .prologue
    .line 145
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->isSupportedNamedCurve(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->curveNames:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getParametersForNamedCurve(I)Lorg/spongycastle/crypto/params/ECDomainParameters;
    .locals 8
    .param p0, "namedCurve"    # I

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->getNameOfNamedCurve(I)Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "curveName":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-object v0

    .line 158
    :cond_1
    invoke-static {v6}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v7

    .line 159
    .local v7, "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    if-nez v7, :cond_2

    .line 161
    invoke-static {v6}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v7

    .line 162
    if-eqz v7, :cond_0

    .line 169
    :cond_2
    new-instance v0, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0
.end method

.method public static getSupportedEllipticCurvesExtension(Ljava/util/Hashtable;)[I
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsECCUtils;->EXT_elliptic_curves:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 55
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readSupportedEllipticCurvesExtension([B)[I

    move-result-object v1

    goto :goto_0
.end method

.method public static getSupportedPointFormatsExtension(Ljava/util/Hashtable;)[S
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsECCUtils;->EXT_ec_point_formats:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 61
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readSupportedPointFormatsExtension([B)[S

    move-result-object v1

    goto :goto_0
.end method

.method public static isCompressionPreferred([SS)Z
    .locals 4
    .param p0, "ecPointFormats"    # [S
    .param p1, "compressionFormat"    # S

    .prologue
    const/4 v2, 0x0

    .line 316
    if-nez p0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v2

    .line 320
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 322
    aget-short v0, p0, v1

    .line 323
    .local v0, "ecPointFormat":S
    if-eqz v0, :cond_0

    .line 327
    if-ne v0, p1, :cond_2

    .line 329
    const/4 v2, 0x1

    goto :goto_0

    .line 320
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isECCCipherSuite(I)Z
    .locals 1
    .param p0, "cipherSuite"    # I

    .prologue
    .line 191
    sparse-switch p0, :sswitch_data_0

    .line 298
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 295
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 191
    nop

    :sswitch_data_0
    .sparse-switch
        0xc001 -> :sswitch_0
        0xc002 -> :sswitch_0
        0xc003 -> :sswitch_0
        0xc004 -> :sswitch_0
        0xc005 -> :sswitch_0
        0xc006 -> :sswitch_0
        0xc007 -> :sswitch_0
        0xc008 -> :sswitch_0
        0xc009 -> :sswitch_0
        0xc00a -> :sswitch_0
        0xc00b -> :sswitch_0
        0xc00c -> :sswitch_0
        0xc00d -> :sswitch_0
        0xc00e -> :sswitch_0
        0xc00f -> :sswitch_0
        0xc010 -> :sswitch_0
        0xc011 -> :sswitch_0
        0xc012 -> :sswitch_0
        0xc013 -> :sswitch_0
        0xc014 -> :sswitch_0
        0xc015 -> :sswitch_0
        0xc016 -> :sswitch_0
        0xc017 -> :sswitch_0
        0xc018 -> :sswitch_0
        0xc019 -> :sswitch_0
        0xc023 -> :sswitch_0
        0xc024 -> :sswitch_0
        0xc025 -> :sswitch_0
        0xc026 -> :sswitch_0
        0xc027 -> :sswitch_0
        0xc028 -> :sswitch_0
        0xc029 -> :sswitch_0
        0xc02a -> :sswitch_0
        0xc02b -> :sswitch_0
        0xc02c -> :sswitch_0
        0xc02d -> :sswitch_0
        0xc02e -> :sswitch_0
        0xc02f -> :sswitch_0
        0xc030 -> :sswitch_0
        0xc031 -> :sswitch_0
        0xc032 -> :sswitch_0
        0xc033 -> :sswitch_0
        0xc034 -> :sswitch_0
        0xc035 -> :sswitch_0
        0xc036 -> :sswitch_0
        0xc037 -> :sswitch_0
        0xc038 -> :sswitch_0
        0xc039 -> :sswitch_0
        0xc03a -> :sswitch_0
        0xc03b -> :sswitch_0
        0xc072 -> :sswitch_0
        0xc073 -> :sswitch_0
        0xc074 -> :sswitch_0
        0xc075 -> :sswitch_0
        0xc076 -> :sswitch_0
        0xc077 -> :sswitch_0
        0xc078 -> :sswitch_0
        0xc079 -> :sswitch_0
        0xc086 -> :sswitch_0
        0xc087 -> :sswitch_0
        0xc088 -> :sswitch_0
        0xc089 -> :sswitch_0
        0xc08a -> :sswitch_0
        0xc08b -> :sswitch_0
        0xc08c -> :sswitch_0
        0xc08d -> :sswitch_0
        0xc09a -> :sswitch_0
        0xc09b -> :sswitch_0
        0xcc13 -> :sswitch_0
        0xcc14 -> :sswitch_0
        0xe412 -> :sswitch_0
        0xe413 -> :sswitch_0
        0xe414 -> :sswitch_0
        0xe415 -> :sswitch_0
        0xe418 -> :sswitch_0
        0xe419 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportedNamedCurve(I)Z
    .locals 1
    .param p0, "namedCurve"    # I

    .prologue
    .line 311
    if-lez p0, :cond_0

    sget-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->curveNames:[Ljava/lang/String;

    array-length v0, v0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readECExponent(ILjava/io/InputStream;)I
    .locals 4
    .param p0, "fieldSize"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    .line 480
    .local v0, "K":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    .line 482
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 483
    .local v1, "k":I
    if-lez v1, :cond_0

    if-ge v1, p0, :cond_0

    .line 485
    return v1

    .line 488
    .end local v1    # "k":I
    :cond_0
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2
.end method

.method public static readECFieldElement(ILjava/io/InputStream;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "fieldSize"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->deserializeECFieldElement(I[B)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static readECParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static readECParameters([I[SLjava/io/InputStream;)Lorg/spongycastle/crypto/params/ECDomainParameters;
    .locals 26
    .param p0, "namedCurves"    # [I
    .param p1, "ecPointFormats"    # [S
    .param p2, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    :try_start_0
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v23

    .line 509
    .local v23, "curveType":S
    packed-switch v23, :pswitch_data_0

    .line 575
    new-instance v8, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0x2f

    invoke-direct {v8, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v23    # "curveType":S
    :catch_0
    move-exception v24

    .line 580
    .local v24, "e":Ljava/lang/RuntimeException;
    new-instance v8, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0x2f

    invoke-direct {v8, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v8

    .line 513
    .end local v24    # "e":Ljava/lang/RuntimeException;
    .restart local v23    # "curveType":S
    :pswitch_0
    const v8, 0xff01

    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->checkNamedCurve([II)V

    .line 515
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v3

    .line 516
    .local v3, "prime_p":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    move-object/from16 v0, p2

    invoke-static {v8, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECFieldElement(ILjava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v4

    .line 517
    .local v4, "a":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    move-object/from16 v0, p2

    invoke-static {v8, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECFieldElement(ILjava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v5

    .line 518
    .local v5, "b":Ljava/math/BigInteger;
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v21

    .line 519
    .local v21, "baseEncoding":[B
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v6

    .line 520
    .local v6, "order":Ljava/math/BigInteger;
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v7

    .line 521
    .local v7, "cofactor":Ljava/math/BigInteger;
    new-instance v2, Lorg/spongycastle/math/ec/ECCurve$Fp;

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 522
    .local v2, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->deserializeECPoint([SLorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v20

    .line 523
    .local v20, "base":Lorg/spongycastle/math/ec/ECPoint;
    new-instance v8, Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-object/from16 v0, v20

    invoke-direct {v8, v2, v0, v6, v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 572
    .end local v2    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .end local v3    # "prime_p":Ljava/math/BigInteger;
    .end local v4    # "a":Ljava/math/BigInteger;
    .end local v5    # "b":Ljava/math/BigInteger;
    .end local v6    # "order":Ljava/math/BigInteger;
    .end local v7    # "cofactor":Ljava/math/BigInteger;
    .end local v20    # "base":Lorg/spongycastle/math/ec/ECPoint;
    .end local v21    # "baseEncoding":[B
    :goto_0
    return-object v8

    .line 527
    :pswitch_1
    const v8, 0xff02

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->checkNamedCurve([II)V

    .line 529
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v9

    .line 530
    .local v9, "m":I
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v22

    .line 531
    .local v22, "basis":S
    invoke-static/range {v22 .. v22}, Lorg/spongycastle/crypto/tls/ECBasisType;->isValid(S)Z

    move-result v8

    if-nez v8, :cond_0

    .line 533
    new-instance v8, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0x2f

    invoke-direct {v8, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v8

    .line 536
    :cond_0
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECExponent(ILjava/io/InputStream;)I

    move-result v10

    .local v10, "k1":I
    const/4 v11, -0x1

    .local v11, "k2":I
    const/4 v12, -0x1

    .line 537
    .local v12, "k3":I
    const/4 v8, 0x2

    move/from16 v0, v22

    if-ne v0, v8, :cond_1

    .line 539
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECExponent(ILjava/io/InputStream;)I

    move-result v11

    .line 540
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECExponent(ILjava/io/InputStream;)I

    move-result v12

    .line 543
    :cond_1
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECFieldElement(ILjava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v4

    .line 544
    .restart local v4    # "a":Ljava/math/BigInteger;
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECFieldElement(ILjava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v5

    .line 545
    .restart local v5    # "b":Ljava/math/BigInteger;
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v21

    .line 546
    .restart local v21    # "baseEncoding":[B
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v6

    .line 547
    .restart local v6    # "order":Ljava/math/BigInteger;
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v7

    .line 549
    .restart local v7    # "cofactor":Ljava/math/BigInteger;
    const/4 v8, 0x2

    move/from16 v0, v22

    if-ne v0, v8, :cond_2

    new-instance v8, Lorg/spongycastle/math/ec/ECCurve$F2m;

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    invoke-direct/range {v8 .. v16}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v2, v8

    .line 553
    .restart local v2    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->deserializeECPoint([SLorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v20

    .line 555
    .restart local v20    # "base":Lorg/spongycastle/math/ec/ECPoint;
    new-instance v8, Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-object/from16 v0, v20

    invoke-direct {v8, v2, v0, v6, v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 549
    .end local v2    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .end local v20    # "base":Lorg/spongycastle/math/ec/ECPoint;
    :cond_2
    new-instance v13, Lorg/spongycastle/math/ec/ECCurve$F2m;

    move v14, v9

    move v15, v10

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-direct/range {v13 .. v19}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v2, v13

    goto :goto_1

    .line 559
    .end local v4    # "a":Ljava/math/BigInteger;
    .end local v5    # "b":Ljava/math/BigInteger;
    .end local v6    # "order":Ljava/math/BigInteger;
    .end local v7    # "cofactor":Ljava/math/BigInteger;
    .end local v9    # "m":I
    .end local v10    # "k1":I
    .end local v11    # "k2":I
    .end local v12    # "k3":I
    .end local v21    # "baseEncoding":[B
    .end local v22    # "basis":S
    :pswitch_2
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v25

    .line 560
    .local v25, "namedCurve":I
    invoke-static/range {v25 .. v25}, Lorg/spongycastle/crypto/tls/NamedCurve;->refersToASpecificNamedCurve(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 567
    new-instance v8, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0x2f

    invoke-direct {v8, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v8

    .line 570
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->checkNamedCurve([II)V

    .line 572
    invoke-static/range {v25 .. v25}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->getParametersForNamedCurve(I)Lorg/spongycastle/crypto/params/ECDomainParameters;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static readSupportedEllipticCurvesExtension([B)[I
    .locals 5
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 94
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'extensionData\' cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 99
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    .line 100
    .local v1, "length":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_2

    .line 102
    :cond_1
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 105
    :cond_2
    div-int/lit8 v3, v1, 0x2

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16Array(ILjava/io/InputStream;)[I

    move-result-object v2

    .line 107
    .local v2, "namedCurves":[I
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 109
    return-object v2
.end method

.method public static readSupportedPointFormatsExtension([B)[S
    .locals 5
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    if-nez p0, :cond_0

    .line 116
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'extensionData\' cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 121
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    .line 122
    .local v2, "length":S
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 124
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 127
    :cond_1
    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8Array(ILjava/io/InputStream;)[S

    move-result-object v1

    .line 129
    .local v1, "ecPointFormats":[S
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 131
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v3

    if-nez v3, :cond_2

    .line 137
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2f

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 140
    :cond_2
    return-object v1
.end method

.method public static serializeECPoint([SLorg/spongycastle/math/ec/ECPoint;)[B
    .locals 3
    .param p0, "ecPointFormats"    # [S
    .param p1, "point"    # Lorg/spongycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 350
    .local v1, "curve":Lorg/spongycastle/math/ec/ECCurve;
    const/4 v0, 0x0

    .line 351
    .local v0, "compressed":Z
    invoke-static {v1}, Lorg/spongycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->isCompressionPreferred([SS)Z

    move-result v0

    .line 359
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v2

    return-object v2

    .line 355
    :cond_1
    invoke-static {v1}, Lorg/spongycastle/math/ec/ECAlgorithms;->isF2mCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->isCompressionPreferred([SS)Z

    move-result v0

    goto :goto_0
.end method

.method public static validateECPublicKey(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .locals 0
    .param p0, "key"    # Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    return-object p0
.end method

.method public static writeECExponent(ILjava/io/OutputStream;)V
    .locals 4
    .param p0, "k"    # I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    int-to-long v2, p0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 600
    .local v0, "K":Ljava/math/BigInteger;
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 601
    return-void
.end method

.method public static writeECFieldElement(Lorg/spongycastle/math/ec/ECFieldElement;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 606
    return-void
.end method

.method public static writeECParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-static {p0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 616
    return-void
.end method

.method public static writeECPoint([SLorg/spongycastle/math/ec/ECPoint;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "ecPointFormats"    # [S
    .param p1, "point"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->serializeECPoint([SLorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 672
    return-void
.end method

.method public static writeExplicitECParameters([SLorg/spongycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)V
    .locals 9
    .param p0, "ecPointFormats"    # [S
    .param p1, "ecParameters"    # Lorg/spongycastle/crypto/params/ECDomainParameters;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 621
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 623
    .local v0, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-static {v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 625
    invoke-static {v6, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 627
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v4

    invoke-interface {v4}, Lorg/spongycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 662
    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECFieldElement(Lorg/spongycastle/math/ec/ECFieldElement;Ljava/io/OutputStream;)V

    .line 663
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECFieldElement(Lorg/spongycastle/math/ec/ECFieldElement;Ljava/io/OutputStream;)V

    .line 664
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-static {p0, v4}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->serializeECPoint([SLorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v4

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 665
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 666
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 667
    return-void

    .line 629
    :cond_0
    invoke-static {v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->isF2mCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 631
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/math/field/PolynomialExtensionField;

    .line 632
    .local v2, "field":Lorg/spongycastle/math/field/PolynomialExtensionField;
    invoke-interface {v2}, Lorg/spongycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lorg/spongycastle/math/field/Polynomial;

    move-result-object v4

    invoke-interface {v4}, Lorg/spongycastle/math/field/Polynomial;->getExponentsPresent()[I

    move-result-object v1

    .line 634
    .local v1, "exponents":[I
    invoke-static {v7, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 636
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget v3, v1, v4

    .line 637
    .local v3, "m":I
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 638
    invoke-static {v3, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 640
    array-length v4, v1

    if-ne v4, v8, :cond_1

    .line 642
    invoke-static {v6, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 643
    aget v4, v1, v6

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECExponent(ILjava/io/OutputStream;)V

    goto :goto_0

    .line 645
    :cond_1
    array-length v4, v1

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 647
    invoke-static {v7, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 648
    aget v4, v1, v6

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECExponent(ILjava/io/OutputStream;)V

    .line 649
    aget v4, v1, v7

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECExponent(ILjava/io/OutputStream;)V

    .line 650
    aget v4, v1, v8

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECExponent(ILjava/io/OutputStream;)V

    goto :goto_0

    .line 654
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Only trinomial and pentomial curves are supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 659
    .end local v1    # "exponents":[I
    .end local v2    # "field":Lorg/spongycastle/math/field/PolynomialExtensionField;
    .end local v3    # "m":I
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "\'ecParameters\' not a known curve type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static writeNamedECParameters(ILjava/io/OutputStream;)V
    .locals 2
    .param p0, "namedCurve"    # I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/NamedCurve;->refersToASpecificNamedCurve(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 686
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 687
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 688
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 689
    return-void
.end method
