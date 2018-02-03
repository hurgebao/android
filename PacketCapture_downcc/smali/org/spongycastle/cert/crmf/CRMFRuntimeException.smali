.class public Lorg/spongycastle/cert/crmf/CRMFRuntimeException;
.super Ljava/lang/RuntimeException;
.source "CRMFRuntimeException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CRMFRuntimeException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
