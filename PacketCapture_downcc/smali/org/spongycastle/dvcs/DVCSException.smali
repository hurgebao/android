.class public Lorg/spongycastle/dvcs/DVCSException;
.super Ljava/lang/Exception;
.source "DVCSException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/spongycastle/dvcs/DVCSException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
