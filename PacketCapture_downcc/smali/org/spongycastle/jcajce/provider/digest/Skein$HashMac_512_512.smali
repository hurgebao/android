.class public Lorg/spongycastle/jcajce/provider/digest/Skein$HashMac_512_512;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;
.source "Skein.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/Skein;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashMac_512_512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x200

    .line 280
    new-instance v0, Lorg/spongycastle/crypto/macs/HMac;

    new-instance v1, Lorg/spongycastle/crypto/digests/SkeinDigest;

    invoke-direct {v1, v2, v2}, Lorg/spongycastle/crypto/digests/SkeinDigest;-><init>(II)V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/spongycastle/crypto/Mac;)V

    .line 281
    return-void
.end method
