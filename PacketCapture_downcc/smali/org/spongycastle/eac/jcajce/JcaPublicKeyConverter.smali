.class public Lorg/spongycastle/eac/jcajce/JcaPublicKeyConverter;
.super Ljava/lang/Object;
.source "JcaPublicKeyConverter.java"


# instance fields
.field private helper:Lorg/spongycastle/eac/jcajce/EACHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/spongycastle/eac/jcajce/DefaultEACHelper;

    invoke-direct {v0}, Lorg/spongycastle/eac/jcajce/DefaultEACHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/eac/jcajce/JcaPublicKeyConverter;->helper:Lorg/spongycastle/eac/jcajce/EACHelper;

    return-void
.end method
