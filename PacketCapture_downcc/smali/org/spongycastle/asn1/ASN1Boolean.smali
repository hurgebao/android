.class public Lorg/spongycastle/asn1/ASN1Boolean;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "ASN1Boolean.java"


# static fields
.field public static final FALSE:Lorg/spongycastle/asn1/ASN1Boolean;

.field private static final FALSE_VALUE:[B

.field public static final TRUE:Lorg/spongycastle/asn1/ASN1Boolean;

.field private static final TRUE_VALUE:[B


# instance fields
.field private value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-array v0, v3, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    sput-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    .line 24
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    .line 28
    new-instance v0, Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->FALSE:Lorg/spongycastle/asn1/ASN1Boolean;

    .line 29
    new-instance v0, Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->TRUE:Lorg/spongycastle/asn1/ASN1Boolean;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 136
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 137
    if-eqz p1, :cond_0

    sget-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    :goto_0
    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->value:[B

    .line 138
    return-void

    .line 137
    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    goto :goto_0
.end method

.method constructor <init>([B)V
    .locals 3
    .param p1, "value"    # [B

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 111
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    aget-byte v0, p1, v2

    if-nez v0, :cond_1

    .line 118
    sget-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->value:[B

    .line 128
    :goto_0
    return-void

    .line 120
    :cond_1
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    .line 122
    sget-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->value:[B

    goto :goto_0

    .line 126
    :cond_2
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->value:[B

    goto :goto_0
.end method

.method static fromOctetString([B)Lorg/spongycastle/asn1/ASN1Boolean;
    .locals 3
    .param p0, "value"    # [B

    .prologue
    const/4 v2, 0x0

    .line 186
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BOOLEAN value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    aget-byte v0, p0, v2

    if-nez v0, :cond_1

    .line 193
    sget-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->FALSE:Lorg/spongycastle/asn1/ASN1Boolean;

    .line 201
    :goto_0
    return-object v0

    .line 195
    :cond_1
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    .line 197
    sget-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->TRUE:Lorg/spongycastle/asn1/ASN1Boolean;

    goto :goto_0

    .line 201
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>([B)V

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Boolean;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 41
    if-eqz p0, :cond_0

    instance-of v2, p0, Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v2, :cond_1

    .line 43
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/ASN1Boolean;

    .end local p0    # "obj":Ljava/lang/Object;
    move-object v2, p0

    .line 51
    .local v1, "enc":[B
    :goto_0
    return-object v2

    .line 46
    .end local v1    # "enc":[B
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, [B

    if-eqz v2, :cond_2

    .line 48
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    move-object v1, p0

    check-cast v1, [B

    .line 51
    .restart local v1    # "enc":[B
    :try_start_0
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Boolean;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct boolean from byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "enc":[B
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal object in getInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;
    .locals 2
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 98
    .local v0, "o":Lorg/spongycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v1

    .line 104
    .end local v0    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    :goto_0
    return-object v1

    .restart local v0    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_1
    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    .end local v0    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Boolean;->fromOctetString([B)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance(Z)Lorg/spongycastle/asn1/ASN1Boolean;
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 69
    if-eqz p0, :cond_0

    sget-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->TRUE:Lorg/spongycastle/asn1/ASN1Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->FALSE:Lorg/spongycastle/asn1/ASN1Boolean;

    goto :goto_0
.end method


# virtual methods
.method protected asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .param p1, "o"    # Lorg/spongycastle/asn1/ASN1Primitive;

    .prologue
    const/4 v0, 0x0

    .line 165
    instance-of v1, p1, Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Boolean;->value:[B

    aget-byte v1, v1, v0

    check-cast p1, Lorg/spongycastle/asn1/ASN1Boolean;

    .end local p1    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    iget-object v2, p1, Lorg/spongycastle/asn1/ASN1Boolean;->value:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 170
    :cond_0
    return v0
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
    .line 159
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Boolean;->value:[B

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 160
    return-void
.end method

.method encodedLength()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x3

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public isTrue()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Boolean;->value:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FALSE"

    goto :goto_0
.end method
