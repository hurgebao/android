.class public Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;
.super Ljava/lang/Object;
.source "JcaX509CRLConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;
    }
.end annotation


# instance fields
.field private helper:Lorg/spongycastle/cert/jcajce/CertHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lorg/spongycastle/cert/jcajce/DefaultCertHelper;

    invoke-direct {v0}, Lorg/spongycastle/cert/jcajce/DefaultCertHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;->helper:Lorg/spongycastle/cert/jcajce/CertHelper;

    .line 27
    new-instance v0, Lorg/spongycastle/cert/jcajce/DefaultCertHelper;

    invoke-direct {v0}, Lorg/spongycastle/cert/jcajce/DefaultCertHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;->helper:Lorg/spongycastle/cert/jcajce/CertHelper;

    .line 28
    return-void
.end method
