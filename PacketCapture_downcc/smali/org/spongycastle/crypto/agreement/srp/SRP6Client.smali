.class public Lorg/spongycastle/crypto/agreement/srp/SRP6Client;
.super Ljava/lang/Object;
.source "SRP6Client.java"


# instance fields
.field protected A:Ljava/math/BigInteger;

.field protected B:Ljava/math/BigInteger;

.field protected N:Ljava/math/BigInteger;

.field protected S:Ljava/math/BigInteger;

.field protected a:Ljava/math/BigInteger;

.field protected digest:Lorg/spongycastle/crypto/Digest;

.field protected g:Ljava/math/BigInteger;

.field protected random:Ljava/security/SecureRandom;

.field protected u:Ljava/math/BigInteger;

.field protected x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private calculateS()Ljava/math/BigInteger;
    .locals 6

    .prologue
    .line 92
    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->g:Ljava/math/BigInteger;

    invoke-static {v3, v4, v5}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->calculateK(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 93
    .local v1, "k":Ljava/math/BigInteger;
    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->u:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->x:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->a:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 94
    .local v0, "exp":Ljava/math/BigInteger;
    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->g:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->x:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    invoke-virtual {v3, v4, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 95
    .local v2, "tmp":Ljava/math/BigInteger;
    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->B:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    invoke-virtual {v3, v0, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "serverB"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->B:Ljava/math/BigInteger;

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->A:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->B:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->calculateU(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->u:Ljava/math/BigInteger;

    .line 80
    invoke-direct {p0}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->calculateS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->S:Ljava/math/BigInteger;

    .line 82
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->S:Ljava/math/BigInteger;

    return-object v0
.end method

.method public generateClientCredentials([B[B[B)Ljava/math/BigInteger;
    .locals 3
    .param p1, "salt"    # [B
    .param p2, "identity"    # [B
    .param p3, "password"    # [B

    .prologue
    .line 63
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->calculateX(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;[B[B[B)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->x:Ljava/math/BigInteger;

    .line 64
    invoke-virtual {p0}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->selectPrivateValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->a:Ljava/math/BigInteger;

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->g:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->a:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->A:Ljava/math/BigInteger;

    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->A:Ljava/math/BigInteger;

    return-object v0
.end method

.method public init(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p4, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    .line 49
    iput-object p2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->g:Ljava/math/BigInteger;

    .line 50
    iput-object p3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->digest:Lorg/spongycastle/crypto/Digest;

    .line 51
    iput-object p4, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->random:Ljava/security/SecureRandom;

    .line 52
    return-void
.end method

.method protected selectPrivateValue()Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->g:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->generatePrivateValue(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
