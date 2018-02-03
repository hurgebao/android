.class public Lorg/spongycastle/asn1/ASN1Enumerated;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "ASN1Enumerated.java"


# static fields
.field private static cache:[Lorg/spongycastle/asn1/ASN1Enumerated;


# instance fields
.field bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0xc

    new-array v0, v0, [Lorg/spongycastle/asn1/ASN1Enumerated;

    sput-object v0, Lorg/spongycastle/asn1/ASN1Enumerated;->cache:[Lorg/spongycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 80
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    .line 81
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    .line 103
    return-void
.end method

.method static fromOctetString([B)Lorg/spongycastle/asn1/ASN1Enumerated;
    .locals 4
    .param p0, "enc"    # [B

    .prologue
    .line 149
    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 151
    new-instance v0, Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>([B)V

    .line 172
    :cond_0
    :goto_0
    return-object v0

    .line 154
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 156
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ENUMERATED has zero length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_2
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v1, v2, 0xff

    .line 160
    .local v1, "value":I
    sget-object v2, Lorg/spongycastle/asn1/ASN1Enumerated;->cache:[Lorg/spongycastle/asn1/ASN1Enumerated;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 162
    new-instance v0, Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>([B)V

    goto :goto_0

    .line 165
    :cond_3
    sget-object v2, Lorg/spongycastle/asn1/ASN1Enumerated;->cache:[Lorg/spongycastle/asn1/ASN1Enumerated;

    aget-object v0, v2, v1

    .line 167
    .local v0, "possibleMatch":Lorg/spongycastle/asn1/ASN1Enumerated;
    if-nez v0, :cond_0

    .line 169
    sget-object v2, Lorg/spongycastle/asn1/ASN1Enumerated;->cache:[Lorg/spongycastle/asn1/ASN1Enumerated;

    new-instance v0, Lorg/spongycastle/asn1/ASN1Enumerated;

    .end local v0    # "possibleMatch":Lorg/spongycastle/asn1/ASN1Enumerated;
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>([B)V

    aput-object v0, v2, v1

    .restart local v0    # "possibleMatch":Lorg/spongycastle/asn1/ASN1Enumerated;
    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Enumerated;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 26
    if-eqz p0, :cond_0

    instance-of v1, p0, Lorg/spongycastle/asn1/ASN1Enumerated;

    if-eqz v1, :cond_1

    .line 28
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/ASN1Enumerated;

    .end local p0    # "obj":Ljava/lang/Object;
    move-object v1, p0

    .line 35
    :goto_0
    return-object v1

    .line 31
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, [B

    if-eqz v1, :cond_2

    .line 35
    :try_start_0
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Enumerated;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Enumerated;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal object in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .param p1, "o"    # Lorg/spongycastle/asn1/ASN1Primitive;

    .prologue
    .line 130
    instance-of v1, p1, Lorg/spongycastle/asn1/ASN1Enumerated;

    if-nez v1, :cond_0

    .line 132
    const/4 v1, 0x0

    .line 137
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 135
    check-cast v0, Lorg/spongycastle/asn1/ASN1Enumerated;

    .line 137
    .local v0, "other":Lorg/spongycastle/asn1/ASN1Enumerated;
    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    iget-object v2, v0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

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
    .line 124
    const/16 v0, 0xa

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 125
    return-void
.end method

.method encodedLength()I
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method
