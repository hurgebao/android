.class public Lorg/spongycastle/asn1/crmf/CertReqMsg;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertReqMsg.java"


# instance fields
.field private certReq:Lorg/spongycastle/asn1/crmf/CertRequest;

.field private pop:Lorg/spongycastle/asn1/crmf/ProofOfPossession;

.field private regInfo:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;
    .param p2, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 140
    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {p1, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 130
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/spongycastle/asn1/crmf/CertRequest;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 132
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->pop:Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 133
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 135
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
