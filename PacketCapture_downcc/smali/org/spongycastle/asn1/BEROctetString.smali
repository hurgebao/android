.class public Lorg/spongycastle/asn1/BEROctetString;
.super Lorg/spongycastle/asn1/ASN1OctetString;
.source "BEROctetString.java"


# instance fields
.field private octs:[Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "string"    # [B

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 51
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 1
    .param p1, "octs"    # [Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 56
    invoke-static {p1}, Lorg/spongycastle/asn1/BEROctetString;->toBytes([Lorg/spongycastle/asn1/ASN1OctetString;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 58
    iput-object p1, p0, Lorg/spongycastle/asn1/BEROctetString;->octs:[Lorg/spongycastle/asn1/ASN1OctetString;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/asn1/BEROctetString;)[Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/asn1/BEROctetString;

    .prologue
    .line 8
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetString;->octs:[Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method static fromSequence(Lorg/spongycastle/asn1/ASN1Sequence;)Lorg/spongycastle/asn1/BEROctetString;
    .locals 5
    .param p0, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v3, v4, [Lorg/spongycastle/asn1/ASN1OctetString;

    .line 158
    .local v3, "v":[Lorg/spongycastle/asn1/ASN1OctetString;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 159
    .local v0, "e":Ljava/util/Enumeration;
    const/4 v1, 0x0

    .line 161
    .local v1, "index":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/ASN1OctetString;

    aput-object v4, v3, v1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 166
    :cond_0
    new-instance v4, Lorg/spongycastle/asn1/BEROctetString;

    invoke-direct {v4, v3}, Lorg/spongycastle/asn1/BEROctetString;-><init>([Lorg/spongycastle/asn1/ASN1OctetString;)V

    return-object v4
.end method

.method private generateOcts()Ljava/util/Vector;
    .locals 7

    .prologue
    .line 94
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 95
    .local v3, "vec":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/asn1/BEROctetString;->string:[B

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 99
    add-int/lit16 v4, v1, 0x3e8

    iget-object v5, p0, Lorg/spongycastle/asn1/BEROctetString;->string:[B

    array-length v5, v5

    if-le v4, v5, :cond_0

    .line 101
    iget-object v4, p0, Lorg/spongycastle/asn1/BEROctetString;->string:[B

    array-length v0, v4

    .line 108
    .local v0, "end":I
    :goto_1
    sub-int v4, v0, v1

    new-array v2, v4, [B

    .line 110
    .local v2, "nStr":[B
    iget-object v4, p0, Lorg/spongycastle/asn1/BEROctetString;->string:[B

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v4, v1, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    new-instance v4, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v4, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 95
    add-int/lit16 v1, v1, 0x3e8

    goto :goto_0

    .line 105
    .end local v0    # "end":I
    .end local v2    # "nStr":[B
    :cond_0
    add-int/lit16 v0, v1, 0x3e8

    .restart local v0    # "end":I
    goto :goto_1

    .line 115
    .end local v0    # "end":I
    :cond_1
    return-object v3
.end method

.method private static toBytes([Lorg/spongycastle/asn1/ASN1OctetString;)[B
    .locals 7
    .param p0, "octs"    # [Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 21
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-eq v2, v4, :cond_0

    .line 27
    :try_start_0
    aget-object v3, p0, v2

    check-cast v3, Lorg/spongycastle/asn1/DEROctetString;

    .line 29
    .local v3, "o":Lorg/spongycastle/asn1/DEROctetString;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    .end local v3    # "o":Lorg/spongycastle/asn1/DEROctetString;
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found in input should only contain DEROctetString"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 35
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 37
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception converting octets "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 41
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 3
    .param p1, "out"    # Lorg/spongycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 139
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 141
    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 146
    invoke-virtual {p0}, Lorg/spongycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 152
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 153
    return-void
.end method

.method encodedLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "length":I
    invoke-virtual {p0}, Lorg/spongycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 132
    :cond_0
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x2

    return v2
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetString;->octs:[Lorg/spongycastle/asn1/ASN1OctetString;

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lorg/spongycastle/asn1/BEROctetString;->generateOcts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/BEROctetString$1;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/BEROctetString$1;-><init>(Lorg/spongycastle/asn1/BEROctetString;)V

    goto :goto_0
.end method

.method public getOctets()[B
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetString;->string:[B

    return-object v0
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method
