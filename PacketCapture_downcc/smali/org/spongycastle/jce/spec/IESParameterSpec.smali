.class public Lorg/spongycastle/jce/spec/IESParameterSpec;
.super Ljava/lang/Object;
.source "IESParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private cipherKeySize:I

.field private derivation:[B

.field private encoding:[B

.field private macKeySize:I

.field private nonce:[B


# direct methods
.method public constructor <init>([B[BI)V
    .locals 1
    .param p1, "derivation"    # [B
    .param p2, "encoding"    # [B
    .param p3, "macKeySize"    # I

    .prologue
    .line 32
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    .line 33
    return-void
.end method

.method public constructor <init>([B[BII)V
    .locals 6
    .param p1, "derivation"    # [B
    .param p2, "encoding"    # [B
    .param p3, "macKeySize"    # I
    .param p4, "cipherKeySize"    # I

    .prologue
    .line 50
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    .line 51
    return-void
.end method

.method public constructor <init>([B[BII[B)V
    .locals 4
    .param p1, "derivation"    # [B
    .param p2, "encoding"    # [B
    .param p3, "macKeySize"    # I
    .param p4, "cipherKeySize"    # I
    .param p5, "nonce"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-eqz p1, :cond_0

    .line 71
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->derivation:[B

    .line 72
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->derivation:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    :goto_0
    if-eqz p2, :cond_1

    .line 81
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->encoding:[B

    .line 82
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->encoding:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    :goto_1
    iput p3, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->macKeySize:I

    .line 90
    iput p4, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->cipherKeySize:I

    .line 91
    invoke-static {p5}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->nonce:[B

    .line 92
    return-void

    .line 76
    :cond_0
    iput-object v3, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->derivation:[B

    goto :goto_0

    .line 86
    :cond_1
    iput-object v3, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->encoding:[B

    goto :goto_1
.end method


# virtual methods
.method public getCipherKeySize()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->cipherKeySize:I

    return v0
.end method

.method public getDerivationV()[B
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->derivation:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodingV()[B
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->encoding:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMacKeySize()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->macKeySize:I

    return v0
.end method

.method public getNonce()[B
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->nonce:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
