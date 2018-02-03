.class public Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;
.super Ljava/lang/Object;
.source "LocalizedMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/i18n/LocalizedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FilteredArguments"
.end annotation


# instance fields
.field protected arguments:[Ljava/lang/Object;


# virtual methods
.method public getArguments()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->arguments:[Ljava/lang/Object;

    return-object v0
.end method
