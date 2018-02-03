.class Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;
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
    name = "CTRDRBGProvider"
.end annotation


# instance fields
.field private final blockCipher:Lorg/spongycastle/crypto/BlockCipher;

.field private final keySizeInBits:I

.field private final nonce:[B

.field private final personalizationString:[B

.field private final securityStrength:I


# virtual methods
.method public get(Lorg/spongycastle/crypto/prng/EntropySource;)Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;
    .locals 7
    .param p1, "entropySource"    # Lorg/spongycastle/crypto/prng/EntropySource;

    .prologue
    .line 287
    new-instance v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->blockCipher:Lorg/spongycastle/crypto/BlockCipher;

    iget v2, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->keySizeInBits:I

    iget v3, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->securityStrength:I

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->personalizationString:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->nonce:[B

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;-><init>(Lorg/spongycastle/crypto/BlockCipher;IILorg/spongycastle/crypto/prng/EntropySource;[B[B)V

    return-object v0
.end method
