.class public Lorg/spongycastle/jcajce/provider/digest/Skein$SkeinMac_512_128;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;
.source "Skein.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/Skein;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkeinMac_512_128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 472
    new-instance v0, Lorg/spongycastle/crypto/macs/SkeinMac;

    const/16 v1, 0x200

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/macs/SkeinMac;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/spongycastle/crypto/Mac;)V

    .line 473
    return-void
.end method
