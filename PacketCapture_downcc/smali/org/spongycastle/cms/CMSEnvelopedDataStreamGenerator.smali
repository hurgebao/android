.class public Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator;
.super Lorg/spongycastle/cms/CMSEnvelopedGenerator;
.source "CMSEnvelopedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;
    }
.end annotation


# instance fields
.field private _unprotectedAttributes:Lorg/spongycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/spongycastle/cms/CMSEnvelopedGenerator;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator;->_unprotectedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 54
    return-void
.end method
