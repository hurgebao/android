.class public Lorg/spongycastle/cert/CertException;
.super Ljava/lang/Exception;
.source "CertException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/spongycastle/cert/CertException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
