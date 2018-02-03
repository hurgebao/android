.class public Lorg/spongycastle/cert/path/CertPathValidationException;
.super Ljava/lang/Exception;
.source "CertPathValidationException.java"


# instance fields
.field private final cause:Ljava/lang/Exception;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/spongycastle/cert/path/CertPathValidationException;->cause:Ljava/lang/Exception;

    return-object v0
.end method
