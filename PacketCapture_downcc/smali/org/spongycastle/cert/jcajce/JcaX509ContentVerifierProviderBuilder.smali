.class public Lorg/spongycastle/cert/jcajce/JcaX509ContentVerifierProviderBuilder;
.super Ljava/lang/Object;
.source "JcaX509ContentVerifierProviderBuilder.java"

# interfaces
.implements Lorg/spongycastle/cert/X509ContentVerifierProviderBuilder;


# instance fields
.field private builder:Lorg/spongycastle/operator/jcajce/JcaContentVerifierProviderBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lorg/spongycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {v0}, Lorg/spongycastle/operator/jcajce/JcaContentVerifierProviderBuilder;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaX509ContentVerifierProviderBuilder;->builder:Lorg/spongycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    return-void
.end method
