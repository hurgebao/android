.class public Lorg/spongycastle/cms/jcajce/JceAlgorithmIdentifierConverter;
.super Ljava/lang/Object;
.source "JceAlgorithmIdentifierConverter.java"


# instance fields
.field private helper:Lorg/spongycastle/cms/jcajce/EnvelopedDataHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lorg/spongycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/spongycastle/cms/jcajce/DefaultJcaJceExtHelper;

    invoke-direct {v1}, Lorg/spongycastle/cms/jcajce/DefaultJcaJceExtHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/spongycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/spongycastle/cms/jcajce/JceAlgorithmIdentifierConverter;->helper:Lorg/spongycastle/cms/jcajce/EnvelopedDataHelper;

    .line 21
    return-void
.end method
