.class public Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;
.super Ljava/lang/Object;
.source "BasicEntropySourceProvider.java"

# interfaces
.implements Lorg/spongycastle/crypto/prng/EntropySourceProvider;


# instance fields
.field private final _predictionResistant:Z

.field private final _sr:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "isPredictionResistant"    # Z

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;->_sr:Ljava/security/SecureRandom;

    .line 23
    iput-boolean p2, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;->_predictionResistant:Z

    .line 24
    return-void
.end method

.method static synthetic access$100(Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;)Ljava/security/SecureRandom;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;

    .prologue
    .line 8
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;->_sr:Ljava/security/SecureRandom;

    return-object v0
.end method
