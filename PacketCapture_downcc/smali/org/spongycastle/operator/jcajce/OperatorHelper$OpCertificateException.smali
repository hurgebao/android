.class Lorg/spongycastle/operator/jcajce/OperatorHelper$OpCertificateException;
.super Ljava/security/cert/CertificateException;
.source "OperatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/operator/jcajce/OperatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpCertificateException"
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lorg/spongycastle/operator/jcajce/OperatorHelper$OpCertificateException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
