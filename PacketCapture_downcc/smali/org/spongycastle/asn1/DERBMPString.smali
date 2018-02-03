.class public Lorg/spongycastle/asn1/DERBMPString;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "DERBMPString.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# instance fields
.field private string:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/DERBMPString;->string:[C

    .line 102
    return-void
.end method

.method constructor <init>([C)V
    .locals 0
    .param p1, "string"    # [C

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/spongycastle/asn1/DERBMPString;->string:[C

    .line 92
    return-void
.end method


# virtual methods
.method protected asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .param p1, "o"    # Lorg/spongycastle/asn1/ASN1Primitive;

    .prologue
    .line 122
    instance-of v1, p1, Lorg/spongycastle/asn1/DERBMPString;

    if-nez v1, :cond_0

    .line 124
    const/4 v1, 0x0

    .line 129
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 127
    check-cast v0, Lorg/spongycastle/asn1/DERBMPString;

    .line 129
    .local v0, "s":Lorg/spongycastle/asn1/DERBMPString;
    iget-object v1, p0, Lorg/spongycastle/asn1/DERBMPString;->string:[C

    iget-object v2, v0, Lorg/spongycastle/asn1/DERBMPString;->string:[C

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->areEqual([C[C)Z

    move-result v1

    goto :goto_0
.end method

.method encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 3
    .param p1, "out"    # Lorg/spongycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    const/16 v2, 0x1e

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 147
    iget-object v2, p0, Lorg/spongycastle/asn1/DERBMPString;->string:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 149
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/DERBMPString;->string:[C

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 151
    iget-object v2, p0, Lorg/spongycastle/asn1/DERBMPString;->string:[C

    aget-char v0, v2, v1

    .line 153
    .local v0, "c":C
    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 154
    int-to-byte v2, v0

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "c":C
    :cond_0
    return-void
.end method

.method encodedLength()I
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/spongycastle/asn1/DERBMPString;->string:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERBMPString;->string:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/spongycastle/asn1/DERBMPString;->string:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/spongycastle/asn1/DERBMPString;->string:[C

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
