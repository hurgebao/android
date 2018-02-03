.class public Lorg/spongycastle/asn1/DLSequence;
.super Lorg/spongycastle/asn1/ASN1Sequence;
.source "DLSequence.java"


# instance fields
.field private bodyLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Sequence;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DLSequence;->bodyLength:I

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DLSequence;->bodyLength:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 1
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DLSequence;->bodyLength:I

    .line 37
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
    .line 51
    iget v3, p0, Lorg/spongycastle/asn1/DLSequence;->bodyLength:I

    if-gez v3, :cond_1

    .line 53
    const/4 v1, 0x0

    .line 55
    .local v1, "length":I
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DLSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 59
    .local v2, "obj":Ljava/lang/Object;
    check-cast v2, Lorg/spongycastle/asn1/ASN1Encodable;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Primitive;->toDLObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v3

    add-int/2addr v1, v3

    .line 60
    goto :goto_0

    .line 62
    :cond_0
    iput v1, p0, Lorg/spongycastle/asn1/DLSequence;->bodyLength:I

    .line 65
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "length":I
    :cond_1
    iget v3, p0, Lorg/spongycastle/asn1/DLSequence;->bodyLength:I

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
    .line 88
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1OutputStream;->getDLSubStream()Lorg/spongycastle/asn1/ASN1OutputStream;

    move-result-object v0

    .line 89
    .local v0, "dOut":Lorg/spongycastle/asn1/ASN1OutputStream;
    invoke-direct {p0}, Lorg/spongycastle/asn1/DLSequence;->getBodyLength()I

    move-result v2

    .line 91
    .local v2, "length":I
    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 92
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 94
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DLSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 98
    .local v3, "obj":Ljava/lang/Object;
    check-cast v3, Lorg/spongycastle/asn1/ASN1Encodable;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 100
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
    .line 71
    invoke-direct {p0}, Lorg/spongycastle/asn1/DLSequence;->getBodyLength()I

    move-result v0

    .line 73
    .local v0, "length":I
    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method
