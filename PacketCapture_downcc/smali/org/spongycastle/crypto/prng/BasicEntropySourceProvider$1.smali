.class Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;
.super Ljava/lang/Object;
.source "BasicEntropySourceProvider.java"

# interfaces
.implements Lorg/spongycastle/crypto/prng/EntropySource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;

.field final synthetic val$bitsRequired:I


# virtual methods
.method public entropySize()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;->val$bitsRequired:I

    return v0
.end method

.method public getEntropy()[B
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;->this$0:Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;

    invoke-static {v0}, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;->access$100(Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;)Ljava/security/SecureRandom;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;->val$bitsRequired:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    return-object v0
.end method
