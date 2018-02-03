.class public Lorg/spongycastle/cms/SignerInformation;
.super Ljava/lang/Object;
.source "SignerInformation.java"


# instance fields
.field private info:Lorg/spongycastle/asn1/cms/SignerInfo;

.field private sid:Lorg/spongycastle/cms/SignerId;


# virtual methods
.method public getSID()Lorg/spongycastle/cms/SignerId;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->sid:Lorg/spongycastle/cms/SignerId;

    return-object v0
.end method

.method public toASN1Structure()Lorg/spongycastle/asn1/cms/SignerInfo;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->info:Lorg/spongycastle/asn1/cms/SignerInfo;

    return-object v0
.end method
