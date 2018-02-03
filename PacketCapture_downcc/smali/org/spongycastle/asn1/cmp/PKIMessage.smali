.class public Lorg/spongycastle/asn1/cmp/PKIMessage;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PKIMessage.java"


# instance fields
.field private body:Lorg/spongycastle/asn1/cmp/PKIBody;

.field private extraCerts:Lorg/spongycastle/asn1/ASN1Sequence;

.field private header:Lorg/spongycastle/asn1/cmp/PKIHeader;

.field private protection:Lorg/spongycastle/asn1/DERBitString;


# direct methods
.method private addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 161
    if-eqz p3, :cond_0

    .line 163
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 148
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 150
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIMessage;->header:Lorg/spongycastle/asn1/cmp/PKIHeader;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 151
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIMessage;->body:Lorg/spongycastle/asn1/cmp/PKIBody;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 153
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIMessage;->protection:Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIMessage;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 154
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIMessage;->extraCerts:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIMessage;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 156
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
