.class public Lorg/spongycastle/cms/CMSAbsentContent;
.super Ljava/lang/Object;
.source "CMSAbsentContent.java"

# interfaces
.implements Lorg/spongycastle/cms/CMSReadable;
.implements Lorg/spongycastle/cms/CMSTypedData;


# instance fields
.field private final type:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/cms/CMSAbsentContent;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0
    .param p1, "type"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/spongycastle/cms/CMSAbsentContent;->type:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    return-void
.end method
