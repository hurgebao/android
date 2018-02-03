.class public Lorg/spongycastle/crypto/params/TweakableBlockCipherParameters;
.super Ljava/lang/Object;
.source "TweakableBlockCipherParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private final key:Lorg/spongycastle/crypto/params/KeyParameter;

.field private final tweak:[B


# virtual methods
.method public getKey()Lorg/spongycastle/crypto/params/KeyParameter;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/spongycastle/crypto/params/TweakableBlockCipherParameters;->key:Lorg/spongycastle/crypto/params/KeyParameter;

    return-object v0
.end method

.method public getTweak()[B
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/spongycastle/crypto/params/TweakableBlockCipherParameters;->tweak:[B

    return-object v0
.end method
