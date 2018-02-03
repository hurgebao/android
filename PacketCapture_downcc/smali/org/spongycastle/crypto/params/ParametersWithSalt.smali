.class public Lorg/spongycastle/crypto/params/ParametersWithSalt;
.super Ljava/lang/Object;
.source "ParametersWithSalt.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lorg/spongycastle/crypto/CipherParameters;

.field private salt:[B


# virtual methods
.method public getParameters()Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithSalt;->parameters:Lorg/spongycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithSalt;->salt:[B

    return-object v0
.end method
