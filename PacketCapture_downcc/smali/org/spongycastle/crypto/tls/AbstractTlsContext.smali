.class abstract Lorg/spongycastle/crypto/tls/AbstractTlsContext;
.super Ljava/lang/Object;
.source "AbstractTlsContext.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsContext;


# static fields
.field private static counter:J


# instance fields
.field private clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field private nonceRandom:Lorg/spongycastle/crypto/prng/RandomGenerator;

.field private secureRandom:Ljava/security/SecureRandom;

.field private securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

.field private serverVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    invoke-static {}, Lorg/spongycastle/util/Times;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->counter:J

    return-void
.end method


# virtual methods
.method public getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getNonceRandomGenerator()Lorg/spongycastle/crypto/prng/RandomGenerator;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->nonceRandom:Lorg/spongycastle/crypto/prng/RandomGenerator;

    return-object v0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    return-object v0
.end method

.method public getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->serverVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method setClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0
    .param p1, "clientVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 63
    return-void
.end method

.method setServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0
    .param p1, "serverVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->serverVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 73
    return-void
.end method
