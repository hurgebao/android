.class public Lorg/spongycastle/cert/bc/BcX509ExtensionUtils;
.super Lorg/spongycastle/cert/X509ExtensionUtils;
.source "BcX509ExtensionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/cert/bc/BcX509ExtensionUtils$1;,
        Lorg/spongycastle/cert/bc/BcX509ExtensionUtils$SHA1DigestCalculator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lorg/spongycastle/cert/bc/BcX509ExtensionUtils$SHA1DigestCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/bc/BcX509ExtensionUtils$SHA1DigestCalculator;-><init>(Lorg/spongycastle/cert/bc/BcX509ExtensionUtils$1;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/cert/X509ExtensionUtils;-><init>(Lorg/spongycastle/operator/DigestCalculator;)V

    .line 28
    return-void
.end method
