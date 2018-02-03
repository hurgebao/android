.class public Lorg/spongycastle/crypto/params/HKDFParameters;
.super Ljava/lang/Object;
.source "HKDFParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationParameters;


# instance fields
.field private final ikm:[B

.field private final info:[B

.field private final salt:[B

.field private final skipExpand:Z


# virtual methods
.method public getIKM()[B
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->ikm:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getInfo()[B
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->info:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->salt:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public skipExtract()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->skipExpand:Z

    return v0
.end method
