.class public Lorg/spongycastle/eac/EACIOException;
.super Ljava/io/IOException;
.source "EACIOException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/spongycastle/eac/EACIOException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
