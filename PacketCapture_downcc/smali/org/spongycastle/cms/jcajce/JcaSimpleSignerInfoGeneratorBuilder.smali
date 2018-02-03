.class public Lorg/spongycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;
.super Ljava/lang/Object;
.source "JcaSimpleSignerInfoGeneratorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$1;,
        Lorg/spongycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$ProviderHelper;,
        Lorg/spongycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$NamedHelper;,
        Lorg/spongycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;
    }
.end annotation


# instance fields
.field private helper:Lorg/spongycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/operator/OperatorCreationException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/spongycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;-><init>(Lorg/spongycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;Lorg/spongycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$1;)V

    iput-object v0, p0, Lorg/spongycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->helper:Lorg/spongycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;

    .line 56
    return-void
.end method
