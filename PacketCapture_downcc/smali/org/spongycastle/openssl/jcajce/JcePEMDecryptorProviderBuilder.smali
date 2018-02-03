.class public Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;
.super Ljava/lang/Object;
.source "JcePEMDecryptorProviderBuilder.java"


# instance fields
.field private helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    return-void
.end method
