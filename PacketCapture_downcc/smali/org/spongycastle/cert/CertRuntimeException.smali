.class public Lorg/spongycastle/cert/CertRuntimeException;
.super Ljava/lang/RuntimeException;
.source "CertRuntimeException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lorg/spongycastle/cert/CertRuntimeException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
