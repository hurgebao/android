.class public abstract Lorg/spongycastle/asn1/ASN1Object;
.super Ljava/lang/Object;
.source "ASN1Object.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 70
    if-ne p0, p1, :cond_0

    .line 72
    const/4 v1, 0x1

    .line 82
    :goto_0
    return v1

    .line 75
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez v1, :cond_1

    .line 77
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 80
    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    .line 82
    .local v0, "other":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 22
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 24
    .local v0, "aOut":Lorg/spongycastle/asn1/ASN1OutputStream;
    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    const-string v2, "DER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/spongycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 45
    .local v1, "dOut":Lorg/spongycastle/asn1/DEROutputStream;
    invoke-virtual {v1, p0}, Lorg/spongycastle/asn1/DEROutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 59
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dOut":Lorg/spongycastle/asn1/DEROutputStream;
    :goto_0
    return-object v2

    .line 49
    :cond_0
    const-string v2, "DL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    .restart local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/spongycastle/asn1/DLOutputStream;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 54
    .local v1, "dOut":Lorg/spongycastle/asn1/DLOutputStream;
    invoke-virtual {v1, p0}, Lorg/spongycastle/asn1/DLOutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 56
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_0

    .line 59
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dOut":Lorg/spongycastle/asn1/DLOutputStream;
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v0

    return v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public abstract toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
.end method
