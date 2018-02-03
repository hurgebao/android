.class public Lorg/spongycastle/asn1/BERConstructedOctetString;
.super Lorg/spongycastle/asn1/BEROctetString;
.source "BERConstructedOctetString.java"


# instance fields
.field private octs:Ljava/util/Vector;


# direct methods
.method private generateOcts()Ljava/util/Vector;
    .locals 7

    .prologue
    .line 108
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 109
    .local v3, "vec":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 113
    add-int/lit16 v4, v1, 0x3e8

    iget-object v5, p0, Lorg/spongycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v5, v5

    if-le v4, v5, :cond_0

    .line 115
    iget-object v4, p0, Lorg/spongycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v0, v4

    .line 122
    .local v0, "end":I
    :goto_1
    sub-int v4, v0, v1

    new-array v2, v4, [B

    .line 124
    .local v2, "nStr":[B
    iget-object v4, p0, Lorg/spongycastle/asn1/BERConstructedOctetString;->string:[B

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v4, v1, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    new-instance v4, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v4, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 109
    add-int/lit16 v1, v1, 0x3e8

    goto :goto_0

    .line 119
    .end local v0    # "end":I
    .end local v2    # "nStr":[B
    :cond_0
    add-int/lit16 v0, v1, 0x3e8

    .restart local v0    # "end":I
    goto :goto_1

    .line 129
    .end local v0    # "end":I
    :cond_1
    return-object v3
.end method


# virtual methods
.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/spongycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lorg/spongycastle/asn1/BERConstructedOctetString;->generateOcts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public getOctets()[B
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/spongycastle/asn1/BERConstructedOctetString;->string:[B

    return-object v0
.end method
