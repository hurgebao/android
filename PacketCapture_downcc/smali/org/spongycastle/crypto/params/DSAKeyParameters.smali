.class public Lorg/spongycastle/crypto/params/DSAKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "DSAKeyParameters.java"


# instance fields
.field private params:Lorg/spongycastle/crypto/params/DSAParameters;


# direct methods
.method public constructor <init>(ZLorg/spongycastle/crypto/params/DSAParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/params/DSAParameters;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 14
    iput-object p2, p0, Lorg/spongycastle/crypto/params/DSAKeyParameters;->params:Lorg/spongycastle/crypto/params/DSAParameters;

    .line 15
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/spongycastle/crypto/params/DSAParameters;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DSAKeyParameters;->params:Lorg/spongycastle/crypto/params/DSAParameters;

    return-object v0
.end method
