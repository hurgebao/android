.class public Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;
.super Ljava/lang/Object;
.source "JcaDigestCalculatorProviderBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;
    }
.end annotation


# instance fields
.field private helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/spongycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;)Lorg/spongycastle/operator/jcajce/OperatorHelper;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    .prologue
    .line 17
    iget-object v0, p0, Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

    return-object v0
.end method
