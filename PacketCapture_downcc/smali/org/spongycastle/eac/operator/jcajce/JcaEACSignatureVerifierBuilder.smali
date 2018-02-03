.class public Lorg/spongycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder;
.super Ljava/lang/Object;
.source "JcaEACSignatureVerifierBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder$SignatureOutputStream;
    }
.end annotation


# instance fields
.field private helper:Lorg/spongycastle/eac/operator/jcajce/EACHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/spongycastle/eac/operator/jcajce/DefaultEACHelper;

    invoke-direct {v0}, Lorg/spongycastle/eac/operator/jcajce/DefaultEACHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder;->helper:Lorg/spongycastle/eac/operator/jcajce/EACHelper;

    .line 126
    return-void
.end method
