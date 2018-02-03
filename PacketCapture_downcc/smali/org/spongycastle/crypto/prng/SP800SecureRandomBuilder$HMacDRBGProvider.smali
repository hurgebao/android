.class Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HMacDRBGProvider;
.super Ljava/lang/Object;
.source "SP800SecureRandomBuilder.java"

# interfaces
.implements Lorg/spongycastle/crypto/prng/DRBGProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HMacDRBGProvider"
.end annotation


# instance fields
.field private final hMac:Lorg/spongycastle/crypto/Mac;

.field private final nonce:[B

.field private final personalizationString:[B

.field private final securityStrength:I


# virtual methods
.method public get(Lorg/spongycastle/crypto/prng/EntropySource;)Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;
    .locals 6
    .param p1, "entropySource"    # Lorg/spongycastle/crypto/prng/EntropySource;

    .prologue
    .line 262
    new-instance v0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HMacDRBGProvider;->hMac:Lorg/spongycastle/crypto/Mac;

    iget v2, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HMacDRBGProvider;->securityStrength:I

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HMacDRBGProvider;->personalizationString:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HMacDRBGProvider;->nonce:[B

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;-><init>(Lorg/spongycastle/crypto/Mac;ILorg/spongycastle/crypto/prng/EntropySource;[B[B)V

    return-object v0
.end method
