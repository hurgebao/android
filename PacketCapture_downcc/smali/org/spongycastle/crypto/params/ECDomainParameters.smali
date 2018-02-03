.class public Lorg/spongycastle/crypto/params/ECDomainParameters;
.super Ljava/lang/Object;
.source "ECDomainParameters.java"

# interfaces
.implements Lorg/spongycastle/math/ec/ECConstants;


# instance fields
.field private G:Lorg/spongycastle/math/ec/ECPoint;

.field private curve:Lorg/spongycastle/math/ec/ECCurve;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;

.field private seed:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 6
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "G"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;

    .prologue
    .line 24
    sget-object v4, Lorg/spongycastle/crypto/params/ECDomainParameters;->ONE:Ljava/math/BigInteger;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "G"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;

    .prologue
    .line 33
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "G"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;
    .param p5, "seed"    # [B

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    .line 44
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->G:Lorg/spongycastle/math/ec/ECPoint;

    .line 45
    iput-object p3, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    .line 46
    iput-object p4, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    .line 47
    iput-object p5, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->seed:[B

    .line 48
    return-void
.end method


# virtual methods
.method public getCurve()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getG()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->G:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->seed:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
