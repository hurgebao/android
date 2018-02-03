.class public Lorg/spongycastle/crypto/params/DHParameters;
.super Ljava/lang/Object;
.source "DHParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private j:Ljava/math/BigInteger;

.field private l:I

.field private m:I

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private validation:Lorg/spongycastle/crypto/params/DHValidationParameters;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;

    .prologue
    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 8
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "l"    # I

    .prologue
    const/4 v6, 0x0

    .line 53
    invoke-static {p4}, Lorg/spongycastle/crypto/params/DHParameters;->getDefaultMParam(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lorg/spongycastle/crypto/params/DHValidationParameters;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lorg/spongycastle/crypto/params/DHValidationParameters;)V
    .locals 6
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "m"    # I
    .param p5, "l"    # I
    .param p6, "j"    # Ljava/math/BigInteger;
    .param p7, "validation"    # Lorg/spongycastle/crypto/params/DHValidationParameters;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-eqz p5, :cond_1

    .line 87
    const-wide/16 v2, 0x2

    add-int/lit8 v1, p5, -0x1

    int-to-long v4, v1

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 88
    .local v0, "bigL":Ljava/math/BigInteger;
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "when l value specified, it must satisfy 2^(l-1) <= p"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    if-ge p5, p4, :cond_1

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "when l value specified, it may not be less than m value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    .end local v0    # "bigL":Ljava/math/BigInteger;
    :cond_1
    iput-object p2, p0, Lorg/spongycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    .line 99
    iput-object p1, p0, Lorg/spongycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    .line 100
    iput-object p3, p0, Lorg/spongycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    .line 101
    iput p4, p0, Lorg/spongycastle/crypto/params/DHParameters;->m:I

    .line 102
    iput p5, p0, Lorg/spongycastle/crypto/params/DHParameters;->l:I

    .line 103
    iput-object p6, p0, Lorg/spongycastle/crypto/params/DHParameters;->j:Ljava/math/BigInteger;

    .line 104
    iput-object p7, p0, Lorg/spongycastle/crypto/params/DHParameters;->validation:Lorg/spongycastle/crypto/params/DHValidationParameters;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHValidationParameters;)V
    .locals 8
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "j"    # Ljava/math/BigInteger;
    .param p5, "validation"    # Lorg/spongycastle/crypto/params/DHValidationParameters;

    .prologue
    .line 73
    const/16 v4, 0xa0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lorg/spongycastle/crypto/params/DHValidationParameters;)V

    .line 74
    return-void
.end method

.method private static getDefaultMParam(I)I
    .locals 1
    .param p0, "lParam"    # I

    .prologue
    const/16 v0, 0xa0

    .line 24
    if-nez p0, :cond_0

    .line 29
    .end local p0    # "lParam":I
    :goto_0
    return v0

    .restart local p0    # "lParam":I
    :cond_0
    if-ge p0, v0, :cond_1

    .end local p0    # "lParam":I
    :goto_1
    move v0, p0

    goto :goto_0

    .restart local p0    # "lParam":I
    :cond_1
    move p0, v0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 160
    instance-of v2, p1, Lorg/spongycastle/crypto/params/DHParameters;

    if-nez v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 165
    check-cast v0, Lorg/spongycastle/crypto/params/DHParameters;

    .line 167
    .local v0, "pm":Lorg/spongycastle/crypto/params/DHParameters;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 169
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    :cond_2
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getL()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/spongycastle/crypto/params/DHParameters;->l:I

    return v0
.end method

.method public getM()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lorg/spongycastle/crypto/params/DHParameters;->m:I

    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
