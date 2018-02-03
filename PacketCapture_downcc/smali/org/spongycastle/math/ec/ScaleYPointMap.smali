.class public Lorg/spongycastle/math/ec/ScaleYPointMap;
.super Ljava/lang/Object;
.source "ScaleYPointMap.java"

# interfaces
.implements Lorg/spongycastle/math/ec/ECPointMap;


# instance fields
.field protected final scale:Lorg/spongycastle/math/ec/ECFieldElement;


# virtual methods
.method public map(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "p"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 14
    iget-object v0, p0, Lorg/spongycastle/math/ec/ScaleYPointMap;->scale:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {p1, v0}, Lorg/spongycastle/math/ec/ECPoint;->scaleY(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
