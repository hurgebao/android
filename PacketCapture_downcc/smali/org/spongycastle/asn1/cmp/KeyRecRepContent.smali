.class public Lorg/spongycastle/asn1/cmp/KeyRecRepContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "KeyRecRepContent.java"


# instance fields
.field private caCerts:Lorg/spongycastle/asn1/ASN1Sequence;

.field private keyPairHist:Lorg/spongycastle/asn1/ASN1Sequence;

.field private newSigCert:Lorg/spongycastle/asn1/cmp/CMPCertificate;

.field private status:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;


# direct methods
.method private addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 137
    if-eqz p3, :cond_0

    .line 139
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 126
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/KeyRecRepContent;->status:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 128
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/KeyRecRepContent;->newSigCert:Lorg/spongycastle/asn1/cmp/CMPCertificate;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/KeyRecRepContent;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 129
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/KeyRecRepContent;->caCerts:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/KeyRecRepContent;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 130
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/KeyRecRepContent;->keyPairHist:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/KeyRecRepContent;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 132
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
