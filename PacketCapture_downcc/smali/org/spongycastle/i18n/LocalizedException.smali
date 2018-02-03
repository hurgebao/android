.class public Lorg/spongycastle/i18n/LocalizedException;
.super Ljava/lang/Exception;
.source "LocalizedException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
