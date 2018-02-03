.class public Lorg/spongycastle/asn1/tsp/TSTInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TSTInfo.java"


# instance fields
.field private accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

.field private extensions:Lorg/spongycastle/asn1/x509/Extensions;

.field private genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

.field private nonce:Lorg/spongycastle/asn1/ASN1Integer;

.field private ordering:Lorg/spongycastle/asn1/ASN1Boolean;

.field private serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

.field private tsa:Lorg/spongycastle/asn1/x509/GeneralName;

.field private tsaPolicyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 198
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 199
    .local v0, "seq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 201
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 202
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 203
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 204
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 206
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 211
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ordering:Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ordering:Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ordering:Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 216
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->nonce:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_2

    .line 218
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->nonce:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 221
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsa:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_3

    .line 223
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsa:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v3, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 226
    :cond_3
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_4

    .line 228
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-direct {v1, v3, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 231
    :cond_4
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
