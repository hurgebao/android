.class public Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
.super Lorg/spongycastle/crypto/params/ECKeyParameters;
.source "ECPublicKeyParameters.java"


# instance fields
.field Q:Lorg/spongycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V
    .locals 1
    .param p1, "Q"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "params"    # Lorg/spongycastle/crypto/params/ECDomainParameters;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/crypto/params/ECKeyParameters;-><init>(ZLorg/spongycastle/crypto/params/ECDomainParameters;)V

    .line 15
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->Q:Lorg/spongycastle/math/ec/ECPoint;

    .line 16
    return-void
.end method


# virtual methods
.method public getQ()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->Q:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method
