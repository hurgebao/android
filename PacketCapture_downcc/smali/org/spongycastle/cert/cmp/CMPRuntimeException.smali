.class public Lorg/spongycastle/cert/cmp/CMPRuntimeException;
.super Ljava/lang/RuntimeException;
.source "CMPRuntimeException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/CMPRuntimeException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
