.class public Lorg/spongycastle/asn1/DERSet;
.super Lorg/spongycastle/asn1/ASN1Set;
.source "DERSet.java"


# instance fields
.field private bodyLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Set;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DERSet;->bodyLength:I

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Set;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DERSet;->bodyLength:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 1
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1Set;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;Z)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DERSet;->bodyLength:I

    .line 37
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;Z)V
    .locals 1
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;
    .param p2, "doSort"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/asn1/ASN1Set;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;Z)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DERSet;->bodyLength:I

    .line 53
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "a"    # [Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1Set;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;Z)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DERSet;->bodyLength:I

    .line 46
    return-void
.end method

.method private getBodyLength()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget v3, p0, Lorg/spongycastle/asn1/DERSet;->bodyLength:I

    if-gez v3, :cond_1

    .line 60
    const/4 v1, 0x0

    .line 62
    .local v1, "length":I
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERSet;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 66
    .local v2, "obj":Ljava/lang/Object;
    check-cast v2, Lorg/spongycastle/asn1/ASN1Encodable;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Primitive;->toDERObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v3

    add-int/2addr v1, v3

    .line 67
    goto :goto_0

    .line 69
    :cond_0
    iput v1, p0, Lorg/spongycastle/asn1/DERSet;->bodyLength:I

    .line 72
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "length":I
    :cond_1
    iget v3, p0, Lorg/spongycastle/asn1/DERSet;->bodyLength:I

    return v3
.end method


# virtual methods
.method encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 5
    .param p1, "out"    # Lorg/spongycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1OutputStream;->getDERSubStream()Lorg/spongycastle/asn1/ASN1OutputStream;

    move-result-object v0

    .line 96
    .local v0, "dOut":Lorg/spongycastle/asn1/ASN1OutputStream;
    invoke-direct {p0}, Lorg/spongycastle/asn1/DERSet;->getBodyLength()I

    move-result v2

    .line 98
    .local v2, "length":I
    const/16 v4, 0x31

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 99
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 101
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERSet;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 105
    .local v3, "obj":Ljava/lang/Object;
    check-cast v3, Lorg/spongycastle/asn1/ASN1Encodable;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/spongycastle/asn1/DERSet;->getBodyLength()I

    move-result v0

    .line 80
    .local v0, "length":I
    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method
