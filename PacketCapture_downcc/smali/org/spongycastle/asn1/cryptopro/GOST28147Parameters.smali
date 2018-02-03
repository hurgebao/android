.class public Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "GOST28147Parameters.java"


# instance fields
.field private iv:Lorg/spongycastle/asn1/ASN1OctetString;

.field private paramSet:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 54
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1OctetString;

    iput-object v1, p0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;->iv:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 55
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v1, p0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;->paramSet:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 33
    instance-of v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;

    if-eqz v0, :cond_0

    .line 35
    check-cast p0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;

    .line 43
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 38
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 40
    new-instance v0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 43
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEncryptionParamSet()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;->paramSet:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getIV()[B
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;->iv:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 73
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;->iv:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 74
    iget-object v1, p0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;->paramSet:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 76
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
