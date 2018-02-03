.class public Lorg/spongycastle/cert/X509ExtensionUtils;
.super Ljava/lang/Object;
.source "X509ExtensionUtils.java"


# instance fields
.field private calculator:Lorg/spongycastle/operator/DigestCalculator;


# direct methods
.method public constructor <init>(Lorg/spongycastle/operator/DigestCalculator;)V
    .locals 0
    .param p1, "calculator"    # Lorg/spongycastle/operator/DigestCalculator;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/spongycastle/cert/X509ExtensionUtils;->calculator:Lorg/spongycastle/operator/DigestCalculator;

    .line 29
    return-void
.end method
