.class public Lorg/spongycastle/asn1/cmp/Challenge;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "Challenge.java"


# instance fields
.field private challenge:Lorg/spongycastle/asn1/ASN1OctetString;

.field private owf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private witness:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method private addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;
    .param p2, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 115
    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p1, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 106
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/Challenge;->owf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/cmp/Challenge;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 107
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/Challenge;->witness:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 108
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/Challenge;->challenge:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 110
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
