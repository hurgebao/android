.class public Lorg/spongycastle/crypto/prng/SP800SecureRandom;
.super Ljava/security/SecureRandom;
.source "SP800SecureRandom.java"


# instance fields
.field private drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

.field private final drbgProvider:Lorg/spongycastle/crypto/prng/DRBGProvider;

.field private final entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

.field private final predictionResistant:Z

.field private final randomSource:Ljava/security/SecureRandom;


# virtual methods
.method public generateSeed(I)[B
    .locals 1
    .param p1, "numBytes"    # I

    .prologue
    .line 68
    new-array v0, p1, [B

    .line 70
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->nextBytes([B)V

    .line 72
    return-object v0
.end method

.method public nextBytes([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 50
    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbgProvider:Lorg/spongycastle/crypto/prng/DRBGProvider;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/prng/DRBGProvider;->get(Lorg/spongycastle/crypto/prng/EntropySource;)Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->predictionResistant:Z

    invoke-interface {v0, p1, v1, v2}, Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;->generate([B[BZ)I

    move-result v0

    if-gez v0, :cond_1

    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v1}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;->reseed([B)V

    .line 61
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->predictionResistant:Z

    invoke-interface {v0, p1, v1, v2}, Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;->generate([B[BZ)I

    .line 63
    :cond_1
    monitor-exit p0

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSeed(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 38
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->randomSource:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->randomSource:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, p2}, Ljava/security/SecureRandom;->setSeed(J)V

    .line 45
    :cond_0
    monitor-exit p0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSeed([B)V
    .locals 1
    .param p1, "seed"    # [B

    .prologue
    .line 27
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->randomSource:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->randomSource:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 33
    :cond_0
    monitor-exit p0

    .line 34
    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
