.class public Lorg/spongycastle/tsp/TSPIOException;
.super Ljava/io/IOException;
.source "TSPIOException.java"


# instance fields
.field underlyingException:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/spongycastle/tsp/TSPIOException;->underlyingException:Ljava/lang/Throwable;

    return-object v0
.end method
