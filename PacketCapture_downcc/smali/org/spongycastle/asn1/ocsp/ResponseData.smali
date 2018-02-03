.class public Lorg/spongycastle/asn1/ocsp/ResponseData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ResponseData.java"


# static fields
.field private static final V1:Lorg/spongycastle/asn1/ASN1Integer;


# instance fields
.field private producedAt:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private responderID:Lorg/spongycastle/asn1/ocsp/ResponderID;

.field private responseExtensions:Lorg/spongycastle/asn1/x509/Extensions;

.field private responses:Lorg/spongycastle/asn1/ASN1Sequence;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;

.field private versionPresent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/spongycastle/asn1/ocsp/ResponseData;->V1:Lorg/spongycastle/asn1/ASN1Integer;

    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 164
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 166
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-boolean v1, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->versionPresent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/ocsp/ResponseData;->V1:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 171
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responderID:Lorg/spongycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 172
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->producedAt:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 173
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responses:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 174
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_2

    .line 176
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 179
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
