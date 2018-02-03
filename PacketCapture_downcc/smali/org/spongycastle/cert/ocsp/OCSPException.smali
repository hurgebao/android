.class public Lorg/spongycastle/cert/ocsp/OCSPException;
.super Ljava/lang/Exception;
.source "OCSPException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/OCSPException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
