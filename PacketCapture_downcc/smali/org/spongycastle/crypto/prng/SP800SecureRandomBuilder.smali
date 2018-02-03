.class public Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;
.super Ljava/lang/Object;
.source "SP800SecureRandomBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;,
        Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HMacDRBGProvider;,
        Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$ConfigurableDualECDRBGProvider;,
        Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$DualECDRBGProvider;,
        Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HashDRBGProvider;
    }
.end annotation


# instance fields
.field private entropyBitsRequired:I

.field private final entropySourceProvider:Lorg/spongycastle/crypto/prng/EntropySourceProvider;

.field private final random:Ljava/security/SecureRandom;

.field private securityStrength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;-><init>(Ljava/security/SecureRandom;Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 2
    .param p1, "entropySource"    # Ljava/security/SecureRandom;
    .param p2, "predictionResistant"    # Z

    .prologue
    const/16 v0, 0x100

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    .line 25
    iput v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    .line 52
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    .line 53
    new-instance v0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;-><init>(Ljava/security/SecureRandom;Z)V

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/spongycastle/crypto/prng/EntropySourceProvider;

    .line 54
    return-void
.end method
