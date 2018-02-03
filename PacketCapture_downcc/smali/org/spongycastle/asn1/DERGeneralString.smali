.class public Lorg/spongycastle/asn1/DERGeneralString;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "DERGeneralString.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# instance fields
.field private string:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "string"    # [B

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/spongycastle/asn1/DERGeneralString;->string:[B

    .line 57
    return-void
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .param p1, "o"    # Lorg/spongycastle/asn1/ASN1Primitive;

    .prologue
    .line 102
    instance-of v1, p1, Lorg/spongycastle/asn1/DERGeneralString;

    if-nez v1, :cond_0

    .line 104
    const/4 v1, 0x0

    .line 108
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 106
    check-cast v0, Lorg/spongycastle/asn1/DERGeneralString;

    .line 108
    .local v0, "s":Lorg/spongycastle/asn1/DERGeneralString;
    iget-object v1, p0, Lorg/spongycastle/asn1/DERGeneralString;->string:[B

    iget-object v2, v0, Lorg/spongycastle/asn1/DERGeneralString;->string:[B

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .param p1, "out"    # Lorg/spongycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/16 v0, 0x1b

    iget-object v1, p0, Lorg/spongycastle/asn1/DERGeneralString;->string:[B

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 93
    return-void
.end method

.method encodedLength()I
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/DERGeneralString;->string:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERGeneralString;->string:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/spongycastle/asn1/DERGeneralString;->string:[B

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/DERGeneralString;->string:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERGeneralString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
