.class public Lorg/spongycastle/cert/cmp/CMPException;
.super Ljava/lang/Exception;
.source "CMPException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/CMPException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
