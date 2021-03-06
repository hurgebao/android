.class public Lorg/spongycastle/asn1/sec/ECPrivateKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ECPrivateKey.java"


# instance fields
.field private seq:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "key"    # Ljava/math/BigInteger;
    .param p2, "parameters"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/asn1/sec/ECPrivateKey;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 7
    .param p1, "key"    # Ljava/math/BigInteger;
    .param p2, "publicKey"    # Lorg/spongycastle/asn1/DERBitString;
    .param p3, "parameters"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    const/4 v6, 0x1

    .line 74
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 75
    invoke-static {p1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 77
    .local v0, "bytes":[B
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 79
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v4, 0x1

    invoke-direct {v2, v4, v5}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 80
    new-instance v2, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 82
    if-eqz p3, :cond_0

    .line 84
    new-instance v2, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    invoke-direct {v2, v6, v3, p3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 87
    :cond_0
    if-eqz p2, :cond_1

    .line 89
    new-instance v2, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-direct {v2, v6, v6, p2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 92
    :cond_1
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lorg/spongycastle/asn1/sec/ECPrivateKey;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 93
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/spongycastle/asn1/sec/ECPrivateKey;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 32
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/sec/ECPrivateKey;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 37
    instance-of v0, p0, Lorg/spongycastle/asn1/sec/ECPrivateKey;

    if-eqz v0, :cond_0

    .line 39
    check-cast p0, Lorg/spongycastle/asn1/sec/ECPrivateKey;

    .line 47
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 42
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 44
    new-instance v0, Lorg/spongycastle/asn1/sec/ECPrivateKey;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/sec/ECPrivateKey;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 47
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private getObjectInTag(I)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4
    .param p1, "tagNo"    # I

    .prologue
    .line 114
    iget-object v3, p0, Lorg/spongycastle/asn1/sec/ECPrivateKey;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 116
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    .line 120
    .local v1, "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v3, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 122
    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 123
    .local v2, "tag":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 125
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Primitive;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 129
    .end local v1    # "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    .end local v2    # "tag":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getKey()Ljava/math/BigInteger;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 97
    iget-object v1, p0, Lorg/spongycastle/asn1/sec/ECPrivateKey;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    .line 99
    .local v0, "octs":Lorg/spongycastle/asn1/ASN1OctetString;
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public getPublicKey()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/sec/ECPrivateKey;->getObjectInTag(I)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/spongycastle/asn1/sec/ECPrivateKey;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
