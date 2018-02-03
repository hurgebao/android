.class public Lorg/spongycastle/crypto/params/RC2Parameters;
.super Ljava/lang/Object;
.source "RC2Parameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private bits:I

.field private key:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "bits"    # I

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/params/RC2Parameters;->key:[B

    .line 22
    iput p2, p0, Lorg/spongycastle/crypto/params/RC2Parameters;->bits:I

    .line 24
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RC2Parameters;->key:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    return-void
.end method


# virtual methods
.method public getEffectiveKeyBits()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lorg/spongycastle/crypto/params/RC2Parameters;->bits:I

    return v0
.end method

.method public getKey()[B
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RC2Parameters;->key:[B

    return-object v0
.end method
