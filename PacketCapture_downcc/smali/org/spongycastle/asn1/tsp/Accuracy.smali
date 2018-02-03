.class public Lorg/spongycastle/asn1/tsp/Accuracy;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "Accuracy.java"


# instance fields
.field micros:Lorg/spongycastle/asn1/ASN1Integer;

.field millis:Lorg/spongycastle/asn1/ASN1Integer;

.field seconds:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public getMicros()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->micros:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getMillis()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->millis:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSeconds()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->seconds:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 154
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 156
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->seconds:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->seconds:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 161
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->millis:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    .line 163
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->millis:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 166
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->micros:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_2

    .line 168
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->micros:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 171
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
