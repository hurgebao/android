.class public Lorg/spongycastle/asn1/esf/SignaturePolicyIdentifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SignaturePolicyIdentifier.java"


# instance fields
.field private isSignaturePolicyImplied:Z

.field private signaturePolicyId:Lorg/spongycastle/asn1/esf/SignaturePolicyId;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/esf/SignaturePolicyIdentifier;->isSignaturePolicyImplied:Z

    .line 37
    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/spongycastle/asn1/esf/SignaturePolicyIdentifier;->isSignaturePolicyImplied:Z

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    .line 73
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignaturePolicyIdentifier;->signaturePolicyId:Lorg/spongycastle/asn1/esf/SignaturePolicyId;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/esf/SignaturePolicyId;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0
.end method
