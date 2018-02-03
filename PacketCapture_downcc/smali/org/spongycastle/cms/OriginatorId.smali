.class Lorg/spongycastle/cms/OriginatorId;
.super Ljava/lang/Object;
.source "OriginatorId.java"

# interfaces
.implements Lorg/spongycastle/util/Selector;


# instance fields
.field private issuer:Lorg/spongycastle/asn1/x500/X500Name;

.field private serialNumber:Ljava/math/BigInteger;

.field private subjectKeyId:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V
    .locals 0
    .param p1, "issuer"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .param p3, "subjectKeyId"    # [B

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/cms/OriginatorId;->setIssuerAndSerial(Lorg/spongycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    .line 64
    invoke-direct {p0, p3}, Lorg/spongycastle/cms/OriginatorId;->setSubjectKeyID([B)V

    .line 65
    return-void
.end method

.method private equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIssuerAndSerial(Lorg/spongycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "issuer"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/spongycastle/cms/OriginatorId;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    .line 50
    iput-object p2, p0, Lorg/spongycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    .line 51
    return-void
.end method

.method private setSubjectKeyID([B)V
    .locals 0
    .param p1, "subjectKeyId"    # [B

    .prologue
    .line 32
    iput-object p1, p0, Lorg/spongycastle/cms/OriginatorId;->subjectKeyId:[B

    .line 33
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Lorg/spongycastle/cms/OriginatorId;

    iget-object v1, p0, Lorg/spongycastle/cms/OriginatorId;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    iget-object v2, p0, Lorg/spongycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/cms/OriginatorId;->subjectKeyId:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/cms/OriginatorId;-><init>(Lorg/spongycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 97
    instance-of v2, p1, Lorg/spongycastle/cms/OriginatorId;

    if-nez v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 102
    check-cast v0, Lorg/spongycastle/cms/OriginatorId;

    .line 104
    .local v0, "id":Lorg/spongycastle/cms/OriginatorId;
    iget-object v2, p0, Lorg/spongycastle/cms/OriginatorId;->subjectKeyId:[B

    iget-object v3, v0, Lorg/spongycastle/cms/OriginatorId;->subjectKeyId:[B

    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    iget-object v3, v0, Lorg/spongycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    invoke-direct {p0, v2, v3}, Lorg/spongycastle/cms/OriginatorId;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/cms/OriginatorId;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    iget-object v3, v0, Lorg/spongycastle/cms/OriginatorId;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-direct {p0, v2, v3}, Lorg/spongycastle/cms/OriginatorId;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lorg/spongycastle/cms/OriginatorId;->subjectKeyId:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    .line 81
    .local v0, "code":I
    iget-object v1, p0, Lorg/spongycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lorg/spongycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 86
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/cms/OriginatorId;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lorg/spongycastle/cms/OriginatorId;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x500/X500Name;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 91
    :cond_1
    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method
