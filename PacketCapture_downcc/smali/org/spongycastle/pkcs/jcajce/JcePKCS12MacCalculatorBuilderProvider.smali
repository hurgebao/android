.class public Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilderProvider;
.super Ljava/lang/Object;
.source "JcePKCS12MacCalculatorBuilderProvider.java"

# interfaces
.implements Lorg/spongycastle/pkcs/PKCS12MacCalculatorBuilderProvider;


# instance fields
.field private helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilderProvider;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    .line 35
    return-void
.end method
