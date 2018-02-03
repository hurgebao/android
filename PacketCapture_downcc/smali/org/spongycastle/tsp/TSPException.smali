.class public Lorg/spongycastle/tsp/TSPException;
.super Ljava/lang/Exception;
.source "TSPException.java"


# instance fields
.field underlyingException:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/spongycastle/tsp/TSPException;->underlyingException:Ljava/lang/Throwable;

    return-object v0
.end method
