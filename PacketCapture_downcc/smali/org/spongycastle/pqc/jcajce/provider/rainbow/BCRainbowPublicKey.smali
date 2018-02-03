.class public Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;
.super Ljava/lang/Object;
.source "BCRainbowPublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private coeffquadratic:[[S

.field private coeffscalar:[S

.field private coeffsingular:[[S

.field private docLength:I


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 0
    .param p1, "docLength"    # I
    .param p2, "coeffQuadratic"    # [[S
    .param p3, "coeffSingular"    # [[S
    .param p4, "coeffScalar"    # [S

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->docLength:I

    .line 57
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffquadratic:[[S

    .line 58
    iput-object p3, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffsingular:[[S

    .line 59
    iput-object p4, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffscalar:[S

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;)V
    .locals 4
    .param p1, "params"    # Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    .prologue
    .line 76
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getDocLength()I

    move-result v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffQuadratic()[[S

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffSingular()[[S

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffScalar()[S

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;-><init>(I[[S[[S[S)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;)V
    .locals 4
    .param p1, "keySpec"    # Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;

    .prologue
    .line 69
    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->getDocLength()I

    move-result v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->getCoeffQuadratic()[[S

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->getCoeffSingular()[[S

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->getCoeffScalar()[S

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;-><init>(I[[S[[S[S)V

    .line 71
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 127
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    if-nez v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 131
    check-cast v0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    .line 133
    .local v0, "otherKey":Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;
    iget v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->docLength:I

    invoke-virtual {v0}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->getDocLength()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffquadratic:[[S

    invoke-virtual {v0}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->getCoeffQuadratic()[[S

    move-result-object v3

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[S[[S)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffsingular:[[S

    invoke-virtual {v0}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->getCoeffSingular()[[S

    move-result-object v3

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[S[[S)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffscalar:[S

    invoke-virtual {v0}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->getCoeffScalar()[S

    move-result-object v3

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "Rainbow"

    return-object v0
.end method

.method public getCoeffQuadratic()[[S
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffquadratic:[[S

    return-object v0
.end method

.method public getCoeffScalar()[S
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffscalar:[S

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([S)[S

    move-result-object v0

    return-object v0
.end method

.method public getCoeffSingular()[[S
    .locals 3

    .prologue
    .line 100
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffsingular:[[S

    array-length v2, v2

    new-array v0, v2, [[S

    .line 102
    .local v0, "copy":[[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffsingular:[[S

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 104
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffsingular:[[S

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([S)[S

    move-result-object v2

    aput-object v2, v0, v1

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-object v0
.end method

.method public getDocLength()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->docLength:I

    return v0
.end method

.method public getEncoded()[B
    .locals 6

    .prologue
    .line 165
    new-instance v1, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;

    iget v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->docLength:I

    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffquadratic:[[S

    iget-object v4, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffsingular:[[S

    iget-object v5, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffscalar:[S

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;-><init>(I[[S[[S[S)V

    .line 166
    .local v1, "key":Lorg/spongycastle/pqc/asn1/RainbowPublicKey;
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->rainbow:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 168
    .local v0, "algorithmIdentifier":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    invoke-static {v0, v1}, Lorg/spongycastle/pqc/jcajce/provider/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v2

    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 141
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->docLength:I

    .line 143
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffquadratic:[[S

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->hashCode([[S)I

    move-result v2

    add-int v0, v1, v2

    .line 144
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffsingular:[[S

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->hashCode([[S)I

    move-result v2

    add-int v0, v1, v2

    .line 145
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffscalar:[S

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->hashCode([S)I

    move-result v2

    add-int v0, v1, v2

    .line 147
    return v0
.end method
