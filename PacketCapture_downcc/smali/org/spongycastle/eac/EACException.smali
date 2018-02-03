.class public Lorg/spongycastle/eac/EACException;
.super Ljava/lang/Exception;
.source "EACException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/spongycastle/eac/EACException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
