.class public Lorg/spongycastle/asn1/ocsp/CertStatus;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertStatus.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private tagNo:I

.field private value:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/ocsp/CertStatus;->tagNo:I

    .line 24
    sget-object v0, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/CertStatus;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 25
    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 103
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget v2, p0, Lorg/spongycastle/asn1/ocsp/CertStatus;->tagNo:I

    iget-object v3, p0, Lorg/spongycastle/asn1/ocsp/CertStatus;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
