.class public Lorg/spongycastle/crypto/params/CramerShoupKeyGenerationParameters;
.super Lorg/spongycastle/crypto/KeyGenerationParameters;
.source "CramerShoupKeyGenerationParameters.java"


# instance fields
.field private params:Lorg/spongycastle/crypto/params/CramerShoupParameters;


# virtual methods
.method public getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupKeyGenerationParameters;->params:Lorg/spongycastle/crypto/params/CramerShoupParameters;

    return-object v0
.end method
