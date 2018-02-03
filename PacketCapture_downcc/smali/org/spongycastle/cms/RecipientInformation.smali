.class public abstract Lorg/spongycastle/cms/RecipientInformation;
.super Ljava/lang/Object;
.source "RecipientInformation.java"


# instance fields
.field protected rid:Lorg/spongycastle/cms/RecipientId;


# virtual methods
.method public getRID()Lorg/spongycastle/cms/RecipientId;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/spongycastle/cms/RecipientInformation;->rid:Lorg/spongycastle/cms/RecipientId;

    return-object v0
.end method
