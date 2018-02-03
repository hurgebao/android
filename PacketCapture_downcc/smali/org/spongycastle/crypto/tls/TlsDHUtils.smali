.class public Lorg/spongycastle/crypto/tls/TlsDHUtils;
.super Ljava/lang/Object;
.source "TlsDHUtils.java"


# static fields
.field static final ONE:Ljava/math/BigInteger;

.field static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ONE:Ljava/math/BigInteger;

    .line 21
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsDHUtils;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDHBasicAgreement(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;)[B
    .locals 3
    .param p0, "publicKey"    # Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    .param p1, "privateKey"    # Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .prologue
    .line 30
    new-instance v1, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;

    invoke-direct {v1}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;-><init>()V

    .line 31
    .local v1, "basicAgreement":Lorg/spongycastle/crypto/agreement/DHBasicAgreement;
    invoke-virtual {v1, p1}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 32
    invoke-virtual {v1, p0}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    .line 38
    .local v0, "agreementValue":Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v2

    return-object v2
.end method

.method public static generateDHKeyPair(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 2
    .param p0, "random"    # Ljava/security/SecureRandom;
    .param p1, "dhParams"    # Lorg/spongycastle/crypto/params/DHParameters;

    .prologue
    .line 43
    new-instance v0, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    .line 44
    .local v0, "dhGen":Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;
    new-instance v1, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    invoke-direct {v1, p0, p1}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 45
    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    return-object v1
.end method

.method public static generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;
    .locals 3
    .param p0, "random"    # Ljava/security/SecureRandom;
    .param p1, "dhParams"    # Lorg/spongycastle/crypto/params/DHParameters;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->generateDHKeyPair(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 53
    .local v1, "kp":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 54
    .local v0, "dh_public":Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->writeDHParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 56
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    return-object v2
.end method

.method public static generateEphemeralServerKeyExchange(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;
    .locals 4
    .param p0, "random"    # Ljava/security/SecureRandom;
    .param p1, "dhParams"    # Lorg/spongycastle/crypto/params/DHParameters;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->generateDHKeyPair(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 64
    .local v1, "kp":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 65
    .local v0, "dhPublicKey":Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    new-instance v2, Lorg/spongycastle/crypto/tls/ServerDHParams;

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/tls/ServerDHParams;-><init>(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)V

    .line 66
    .local v2, "params":Lorg/spongycastle/crypto/tls/ServerDHParams;
    invoke-virtual {v2, p2}, Lorg/spongycastle/crypto/tls/ServerDHParams;->encode(Ljava/io/OutputStream;)V

    .line 68
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    return-object v3
.end method

.method public static readDHParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static validateDHPublicKey(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    .locals 6
    .param p0, "key"    # Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2f

    .line 73
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    .line 74
    .local v0, "Y":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v3

    .line 75
    .local v3, "params":Lorg/spongycastle/crypto/params/DHParameters;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 76
    .local v2, "p":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 78
    .local v1, "g":Ljava/math/BigInteger;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 80
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 82
    :cond_0
    sget-object v4, Lorg/spongycastle/crypto/tls/TlsDHUtils;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_1

    sget-object v4, Lorg/spongycastle/crypto/tls/TlsDHUtils;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_2

    .line 84
    :cond_1
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 86
    :cond_2
    sget-object v4, Lorg/spongycastle/crypto/tls/TlsDHUtils;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_3

    sget-object v4, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_4

    .line 88
    :cond_3
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 93
    :cond_4
    return-object p0
.end method

.method public static writeDHParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 104
    return-void
.end method
