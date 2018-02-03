.class public Lorg/spongycastle/asn1/ocsp/TBSRequest;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TBSRequest.java"


# static fields
.field private static final V1:Lorg/spongycastle/asn1/ASN1Integer;


# instance fields
.field requestExtensions:Lorg/spongycastle/asn1/x509/Extensions;

.field requestList:Lorg/spongycastle/asn1/ASN1Sequence;

.field requestorName:Lorg/spongycastle/asn1/x509/GeneralName;

.field version:Lorg/spongycastle/asn1/ASN1Integer;

.field versionSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->V1:Lorg/spongycastle/asn1/ASN1Integer;

    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 147
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 153
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->version:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/ocsp/TBSRequest;->V1:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->versionSet:Z

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 158
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->requestorName:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_2

    .line 160
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->requestorName:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 163
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->requestList:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 165
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->requestExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_3

    .line 167
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->requestExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 170
    :cond_3
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
