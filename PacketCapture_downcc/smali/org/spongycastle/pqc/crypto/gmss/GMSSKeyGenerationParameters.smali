.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;
.super Lorg/spongycastle/crypto/KeyGenerationParameters;
.source "GMSSKeyGenerationParameters.java"


# instance fields
.field private params:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "params"    # Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 19
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->params:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    .line 20
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->params:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    return-object v0
.end method
