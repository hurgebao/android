.class public Lorg/spongycastle/crypto/engines/SerpentEngine;
.super Ljava/lang/Object;
.source "SerpentEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# instance fields
.field private X0:I

.field private X1:I

.field private X2:I

.field private X3:I

.field private encrypting:Z

.field private wKey:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private LT()V
    .locals 6

    .prologue
    .line 758
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    const/16 v5, 0xd

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v0

    .line 759
    .local v0, "x0":I
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v2

    .line 760
    .local v2, "x2":I
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v4, v0

    xor-int v1, v4, v2

    .line 761
    .local v1, "x1":I
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v4, v2

    shl-int/lit8 v5, v0, 0x3

    xor-int v3, v4, v5

    .line 763
    .local v3, "x3":I
    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v4

    iput v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 764
    const/4 v4, 0x7

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v4

    iput v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 765
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v4, v0

    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v4, v5

    const/4 v5, 0x5

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v4

    iput v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 766
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v4, v2

    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    shl-int/lit8 v5, v5, 0x7

    xor-int/2addr v4, v5

    const/16 v5, 0x16

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v4

    iput v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 767
    return-void
.end method

.method private bytesToWord([BI)I
    .locals 2
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I

    .prologue
    .line 264
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private decryptBlock([BI[BI)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 352
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 353
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 354
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 356
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    .line 357
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 358
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    .line 359
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x78

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x79

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 360
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    .line 361
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x74

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x75

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x76

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x77

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 362
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    .line 363
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x70

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x71

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x72

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x73

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 364
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    .line 365
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 366
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    .line 367
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x68

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x69

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 368
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    .line 369
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x64

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x65

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x66

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x67

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 370
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    .line 371
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x60

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x61

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x62

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x63

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 372
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    .line 373
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 374
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    .line 375
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x58

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x59

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 376
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    .line 377
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x54

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x55

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x56

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x57

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 378
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    .line 379
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x50

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x51

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x52

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x53

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 380
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    .line 381
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 382
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    .line 383
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x48

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x49

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 384
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    .line 385
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x44

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x45

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x46

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x47

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 386
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    .line 387
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x40

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x41

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x42

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x43

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 388
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    .line 389
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 390
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    .line 391
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x38

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x39

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 392
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    .line 393
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x34

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x35

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x36

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x37

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 394
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    .line 395
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x30

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x31

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x32

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x33

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 396
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    .line 397
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 398
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    .line 399
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x28

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x29

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 400
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    .line 401
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x24

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x25

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x26

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x27

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 402
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    .line 403
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x20

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x21

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x22

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x23

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 404
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    .line 405
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 406
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    .line 407
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x18

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x19

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 408
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    .line 409
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x14

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x16

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x17

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 410
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    .line 411
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x10

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x12

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x13

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 412
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    .line 413
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xc

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xe

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xf

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 414
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    .line 415
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 416
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    .line 417
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 418
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    .line 420
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, p3, p4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 421
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 422
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 423
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 424
    return-void
.end method

.method private encryptBlock([BI[BI)V
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 293
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 294
    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 295
    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 296
    add-int/lit8 v0, p2, 0xc

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 298
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 299
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 300
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 301
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0xe

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 302
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x12

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 303
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x16

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 304
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x18

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x19

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x1a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x1b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 305
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x1c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x1e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x1f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 306
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x20

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x21

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x22

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 307
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x24

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x25

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x26

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x27

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 308
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x28

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x29

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x2a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 309
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x2c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x2e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 310
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x30

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x31

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x32

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x33

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 311
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x34

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x35

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x36

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x37

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 312
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x38

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x39

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x3a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x3b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 313
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x3c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x3e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x3f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 314
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x40

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x41

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x42

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x43

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 315
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x44

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x45

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x46

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x47

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 316
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x48

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x49

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x4a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x4b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 317
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x4c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x4e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x4f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 318
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x50

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x51

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x52

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x53

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 319
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x54

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x55

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x56

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x57

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 320
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x58

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x59

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x5a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x5b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 321
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x5c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x5e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x5f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 322
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x60

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x61

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x62

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x63

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 323
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x64

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x65

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x66

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x67

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 324
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x68

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x69

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x6a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x6b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 325
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x6c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x6e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x6f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 326
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x70

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x71

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x72

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x73

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 327
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x74

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x75

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x76

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x77

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 328
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x78

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x79

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x7a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x7b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 329
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x7c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x7e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x7f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 331
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, p3, p4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 332
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 333
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 334
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 335
    return-void
.end method

.method private ib0(IIII)V
    .locals 7
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 470
    xor-int/lit8 v0, p1, -0x1

    .line 471
    .local v0, "t1":I
    xor-int v1, p1, p2

    .line 472
    .local v1, "t2":I
    or-int v5, v0, v1

    xor-int v2, p4, v5

    .line 473
    .local v2, "t4":I
    xor-int v3, p3, v2

    .line 474
    .local v3, "t5":I
    xor-int v5, v1, v3

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 475
    and-int v5, p4, v1

    xor-int v4, v0, v5

    .line 476
    .local v4, "t8":I
    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    and-int/2addr v5, v4

    xor-int/2addr v5, v2

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 477
    and-int v5, p1, v2

    iget v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    or-int/2addr v6, v3

    xor-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 478
    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int v6, v3, v4

    xor-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 479
    return-void
.end method

.method private ib1(IIII)V
    .locals 8
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 502
    xor-int v0, p2, p4

    .line 503
    .local v0, "t1":I
    and-int v7, p2, v0

    xor-int v3, p1, v7

    .line 504
    .local v3, "t3":I
    xor-int v4, v0, v3

    .line 505
    .local v4, "t4":I
    xor-int v7, p3, v4

    iput v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 506
    and-int v7, v0, v3

    xor-int v5, p2, v7

    .line 507
    .local v5, "t7":I
    iget v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    or-int v6, v7, v5

    .line 508
    .local v6, "t8":I
    xor-int v7, v3, v6

    iput v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 509
    iget v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/lit8 v1, v7, -0x1

    .line 510
    .local v1, "t10":I
    iget v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int v2, v7, v5

    .line 511
    .local v2, "t11":I
    xor-int v7, v1, v2

    iput v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 512
    or-int v7, v1, v2

    xor-int/2addr v7, v4

    iput v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 513
    return-void
.end method

.method private ib2(IIII)V
    .locals 12
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 537
    xor-int v0, p2, p4

    .line 538
    .local v0, "t1":I
    xor-int/lit8 v3, v0, -0x1

    .line 539
    .local v3, "t2":I
    xor-int v4, p1, p3

    .line 540
    .local v4, "t3":I
    xor-int v5, p3, v0

    .line 541
    .local v5, "t4":I
    and-int v6, p2, v5

    .line 542
    .local v6, "t5":I
    xor-int v10, v4, v6

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 543
    or-int v7, p1, v3

    .line 544
    .local v7, "t7":I
    xor-int v8, p4, v7

    .line 545
    .local v8, "t8":I
    or-int v9, v4, v8

    .line 546
    .local v9, "t9":I
    xor-int v10, v0, v9

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 547
    xor-int/lit8 v1, v5, -0x1

    .line 548
    .local v1, "t11":I
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v11, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    or-int v2, v10, v11

    .line 549
    .local v2, "t12":I
    xor-int v10, v1, v2

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 550
    and-int v10, p4, v1

    xor-int v11, v4, v2

    xor-int/2addr v10, v11

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 551
    return-void
.end method

.method private ib3(IIII)V
    .locals 12
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 579
    or-int v0, p1, p2

    .line 580
    .local v0, "t1":I
    xor-int v3, p2, p3

    .line 581
    .local v3, "t2":I
    and-int v4, p2, v3

    .line 582
    .local v4, "t3":I
    xor-int v5, p1, v4

    .line 583
    .local v5, "t4":I
    xor-int v6, p3, v5

    .line 584
    .local v6, "t5":I
    or-int v7, p4, v5

    .line 585
    .local v7, "t6":I
    xor-int v10, v3, v7

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 586
    or-int v8, v3, v7

    .line 587
    .local v8, "t8":I
    xor-int v9, p4, v8

    .line 588
    .local v9, "t9":I
    xor-int v10, v6, v9

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 589
    xor-int v1, v0, v9

    .line 590
    .local v1, "t11":I
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    and-int v2, v10, v1

    .line 591
    .local v2, "t12":I
    xor-int v10, v5, v2

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 592
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget v11, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v11, v1

    xor-int/2addr v10, v11

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 593
    return-void
.end method

.method private ib4(IIII)V
    .locals 11
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 620
    or-int v0, p3, p4

    .line 621
    .local v0, "t1":I
    and-int v3, p1, v0

    .line 622
    .local v3, "t2":I
    xor-int v4, p2, v3

    .line 623
    .local v4, "t3":I
    and-int v5, p1, v4

    .line 624
    .local v5, "t4":I
    xor-int v6, p3, v5

    .line 625
    .local v6, "t5":I
    xor-int v9, p4, v6

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 626
    xor-int/lit8 v7, p1, -0x1

    .line 627
    .local v7, "t7":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    and-int v8, v6, v9

    .line 628
    .local v8, "t8":I
    xor-int v9, v4, v8

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 629
    iget v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    or-int v1, v9, v7

    .line 630
    .local v1, "t10":I
    xor-int v2, p4, v1

    .line 631
    .local v2, "t11":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v9, v2

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 632
    and-int v9, v4, v2

    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v10, v7

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 633
    return-void
.end method

.method private ib5(IIII)V
    .locals 11
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 661
    xor-int/lit8 v0, p3, -0x1

    .line 662
    .local v0, "t1":I
    and-int v3, p2, v0

    .line 663
    .local v3, "t2":I
    xor-int v4, p4, v3

    .line 664
    .local v4, "t3":I
    and-int v5, p1, v4

    .line 665
    .local v5, "t4":I
    xor-int v6, p2, v0

    .line 666
    .local v6, "t5":I
    xor-int v9, v5, v6

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 667
    iget v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    or-int v7, p2, v9

    .line 668
    .local v7, "t7":I
    and-int v8, p1, v7

    .line 669
    .local v8, "t8":I
    xor-int v9, v4, v8

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 670
    or-int v1, p1, p4

    .line 671
    .local v1, "t10":I
    xor-int v2, v0, v7

    .line 672
    .local v2, "t11":I
    xor-int v9, v1, v2

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 673
    and-int v9, p2, v1

    xor-int v10, p1, p3

    or-int/2addr v10, v5

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 674
    return-void
.end method

.method private ib6(IIII)V
    .locals 11
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 701
    xor-int/lit8 v0, p1, -0x1

    .line 702
    .local v0, "t1":I
    xor-int v2, p1, p2

    .line 703
    .local v2, "t2":I
    xor-int v3, p3, v2

    .line 704
    .local v3, "t3":I
    or-int v4, p3, v0

    .line 705
    .local v4, "t4":I
    xor-int v5, p4, v4

    .line 706
    .local v5, "t5":I
    xor-int v9, v3, v5

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 707
    and-int v6, v3, v5

    .line 708
    .local v6, "t7":I
    xor-int v7, v2, v6

    .line 709
    .local v7, "t8":I
    or-int v8, p2, v7

    .line 710
    .local v8, "t9":I
    xor-int v9, v5, v8

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 711
    iget v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    or-int v1, p2, v9

    .line 712
    .local v1, "t11":I
    xor-int v9, v7, v1

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 713
    and-int v9, p4, v0

    xor-int v10, v3, v1

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 714
    return-void
.end method

.method private ib7(IIII)V
    .locals 8
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 742
    and-int v5, p1, p2

    or-int v0, p3, v5

    .line 743
    .local v0, "t3":I
    or-int v5, p1, p2

    and-int v1, p4, v5

    .line 744
    .local v1, "t4":I
    xor-int v5, v0, v1

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 745
    xor-int/lit8 v2, p4, -0x1

    .line 746
    .local v2, "t6":I
    xor-int v3, p2, v1

    .line 747
    .local v3, "t7":I
    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v5, v2

    or-int v4, v3, v5

    .line 748
    .local v4, "t9":I
    xor-int v5, p1, v4

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 749
    xor-int v5, p3, v3

    iget v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    or-int/2addr v6, p4

    xor-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 750
    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v5, v0

    iget v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    and-int/2addr v7, p1

    xor-int/2addr v6, v7

    xor-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 751
    return-void
.end method

.method private inverseLT()V
    .locals 6

    .prologue
    .line 774
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v5, 0x16

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v4

    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v4, v5

    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    shl-int/lit8 v5, v5, 0x7

    xor-int v2, v4, v5

    .line 775
    .local v2, "x2":I
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    const/4 v5, 0x5

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v4

    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v4, v5

    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int v0, v4, v5

    .line 776
    .local v0, "x0":I
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/4 v5, 0x7

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v3

    .line 777
    .local v3, "x3":I
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v1

    .line 778
    .local v1, "x1":I
    xor-int v4, v3, v2

    shl-int/lit8 v5, v0, 0x3

    xor-int/2addr v4, v5

    iput v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 779
    xor-int v4, v1, v0

    xor-int/2addr v4, v2

    iput v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 780
    const/4 v4, 0x3

    invoke-direct {p0, v2, v4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v4

    iput v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 781
    const/16 v4, 0xd

    invoke-direct {p0, v0, v4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v4

    iput v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 782
    return-void
.end method

.method private makeWorkingKey([B)[I
    .locals 11
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 127
    const/16 v7, 0x10

    new-array v2, v7, [I

    .line 128
    .local v2, "kPad":[I
    const/4 v5, 0x0

    .line 129
    .local v5, "off":I
    const/4 v3, 0x0

    .line 131
    .local v3, "length":I
    array-length v7, p1

    add-int/lit8 v5, v7, -0x4

    move v4, v3

    .end local v3    # "length":I
    .local v4, "length":I
    :goto_0
    if-lez v5, :cond_0

    .line 133
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "length":I
    .restart local v3    # "length":I
    invoke-direct {p0, p1, v5}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v7

    aput v7, v2, v4

    .line 131
    add-int/lit8 v5, v5, -0x4

    move v4, v3

    .end local v3    # "length":I
    .restart local v4    # "length":I
    goto :goto_0

    .line 136
    :cond_0
    if-nez v5, :cond_2

    .line 138
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "length":I
    .restart local v3    # "length":I
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v7

    aput v7, v2, v4

    .line 139
    const/16 v7, 0x8

    if-ge v3, v7, :cond_1

    .line 141
    const/4 v7, 0x1

    aput v7, v2, v3

    .line 152
    :cond_1
    const/16 v0, 0x84

    .line 153
    .local v0, "amount":I
    new-array v6, v0, [I

    .line 158
    .local v6, "w":[I
    const/16 v1, 0x8

    .local v1, "i":I
    :goto_1
    const/16 v7, 0x10

    if-ge v1, v7, :cond_3

    .line 160
    add-int/lit8 v7, v1, -0x8

    aget v7, v2, v7

    add-int/lit8 v8, v1, -0x5

    aget v8, v2, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x3

    aget v8, v2, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x1

    aget v8, v2, v8

    xor-int/2addr v7, v8

    const v8, -0x61c88647

    xor-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x8

    xor-int/2addr v7, v8

    const/16 v8, 0xb

    invoke-direct {p0, v7, v8}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v7

    aput v7, v2, v1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    .end local v0    # "amount":I
    .end local v1    # "i":I
    .end local v3    # "length":I
    .end local v6    # "w":[I
    .restart local v4    # "length":I
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "key must be a multiple of 4 bytes"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 163
    .end local v4    # "length":I
    .restart local v0    # "amount":I
    .restart local v1    # "i":I
    .restart local v3    # "length":I
    .restart local v6    # "w":[I
    :cond_3
    const/16 v7, 0x8

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v2, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    const/16 v1, 0x8

    :goto_2
    if-ge v1, v0, :cond_4

    .line 170
    add-int/lit8 v7, v1, -0x8

    aget v7, v6, v7

    add-int/lit8 v8, v1, -0x5

    aget v8, v6, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x3

    aget v8, v6, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x1

    aget v8, v6, v8

    xor-int/2addr v7, v8

    const v8, -0x61c88647

    xor-int/2addr v7, v8

    xor-int/2addr v7, v1

    const/16 v8, 0xb

    invoke-direct {p0, v7, v8}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v7

    aput v7, v6, v1

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 176
    :cond_4
    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, 0x2

    aget v9, v6, v9

    const/4 v10, 0x3

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 177
    const/4 v7, 0x0

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/4 v7, 0x2

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/4 v7, 0x3

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 178
    const/4 v7, 0x4

    aget v7, v6, v7

    const/4 v8, 0x5

    aget v8, v6, v8

    const/4 v9, 0x6

    aget v9, v6, v9

    const/4 v10, 0x7

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 179
    const/4 v7, 0x4

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/4 v7, 0x5

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/4 v7, 0x6

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/4 v7, 0x7

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 180
    const/16 v7, 0x8

    aget v7, v6, v7

    const/16 v8, 0x9

    aget v8, v6, v8

    const/16 v9, 0xa

    aget v9, v6, v9

    const/16 v10, 0xb

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 181
    const/16 v7, 0x8

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x9

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0xa

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0xb

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 182
    const/16 v7, 0xc

    aget v7, v6, v7

    const/16 v8, 0xd

    aget v8, v6, v8

    const/16 v9, 0xe

    aget v9, v6, v9

    const/16 v10, 0xf

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 183
    const/16 v7, 0xc

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0xd

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0xe

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0xf

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 184
    const/16 v7, 0x10

    aget v7, v6, v7

    const/16 v8, 0x11

    aget v8, v6, v8

    const/16 v9, 0x12

    aget v9, v6, v9

    const/16 v10, 0x13

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 185
    const/16 v7, 0x10

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x11

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x12

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x13

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 186
    const/16 v7, 0x14

    aget v7, v6, v7

    const/16 v8, 0x15

    aget v8, v6, v8

    const/16 v9, 0x16

    aget v9, v6, v9

    const/16 v10, 0x17

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 187
    const/16 v7, 0x14

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x15

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x16

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x17

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 188
    const/16 v7, 0x18

    aget v7, v6, v7

    const/16 v8, 0x19

    aget v8, v6, v8

    const/16 v9, 0x1a

    aget v9, v6, v9

    const/16 v10, 0x1b

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    .line 189
    const/16 v7, 0x18

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x19

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x1a

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x1b

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 190
    const/16 v7, 0x1c

    aget v7, v6, v7

    const/16 v8, 0x1d

    aget v8, v6, v8

    const/16 v9, 0x1e

    aget v9, v6, v9

    const/16 v10, 0x1f

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    .line 191
    const/16 v7, 0x1c

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x1d

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x1e

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x1f

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 192
    const/16 v7, 0x20

    aget v7, v6, v7

    const/16 v8, 0x21

    aget v8, v6, v8

    const/16 v9, 0x22

    aget v9, v6, v9

    const/16 v10, 0x23

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 193
    const/16 v7, 0x20

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x21

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x22

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x23

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 194
    const/16 v7, 0x24

    aget v7, v6, v7

    const/16 v8, 0x25

    aget v8, v6, v8

    const/16 v9, 0x26

    aget v9, v6, v9

    const/16 v10, 0x27

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 195
    const/16 v7, 0x24

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x25

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x26

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x27

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 196
    const/16 v7, 0x28

    aget v7, v6, v7

    const/16 v8, 0x29

    aget v8, v6, v8

    const/16 v9, 0x2a

    aget v9, v6, v9

    const/16 v10, 0x2b

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 197
    const/16 v7, 0x28

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x29

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x2a

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x2b

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 198
    const/16 v7, 0x2c

    aget v7, v6, v7

    const/16 v8, 0x2d

    aget v8, v6, v8

    const/16 v9, 0x2e

    aget v9, v6, v9

    const/16 v10, 0x2f

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 199
    const/16 v7, 0x2c

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x2d

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x2e

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x2f

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 200
    const/16 v7, 0x30

    aget v7, v6, v7

    const/16 v8, 0x31

    aget v8, v6, v8

    const/16 v9, 0x32

    aget v9, v6, v9

    const/16 v10, 0x33

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 201
    const/16 v7, 0x30

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x31

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x32

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x33

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 202
    const/16 v7, 0x34

    aget v7, v6, v7

    const/16 v8, 0x35

    aget v8, v6, v8

    const/16 v9, 0x36

    aget v9, v6, v9

    const/16 v10, 0x37

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 203
    const/16 v7, 0x34

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x35

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x36

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x37

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 204
    const/16 v7, 0x38

    aget v7, v6, v7

    const/16 v8, 0x39

    aget v8, v6, v8

    const/16 v9, 0x3a

    aget v9, v6, v9

    const/16 v10, 0x3b

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    .line 205
    const/16 v7, 0x38

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x39

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x3a

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x3b

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 206
    const/16 v7, 0x3c

    aget v7, v6, v7

    const/16 v8, 0x3d

    aget v8, v6, v8

    const/16 v9, 0x3e

    aget v9, v6, v9

    const/16 v10, 0x3f

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    .line 207
    const/16 v7, 0x3c

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x3d

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x3e

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x3f

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 208
    const/16 v7, 0x40

    aget v7, v6, v7

    const/16 v8, 0x41

    aget v8, v6, v8

    const/16 v9, 0x42

    aget v9, v6, v9

    const/16 v10, 0x43

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 209
    const/16 v7, 0x40

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x41

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x42

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x43

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 210
    const/16 v7, 0x44

    aget v7, v6, v7

    const/16 v8, 0x45

    aget v8, v6, v8

    const/16 v9, 0x46

    aget v9, v6, v9

    const/16 v10, 0x47

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 211
    const/16 v7, 0x44

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x45

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x46

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x47

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 212
    const/16 v7, 0x48

    aget v7, v6, v7

    const/16 v8, 0x49

    aget v8, v6, v8

    const/16 v9, 0x4a

    aget v9, v6, v9

    const/16 v10, 0x4b

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 213
    const/16 v7, 0x48

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x49

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x4a

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x4b

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 214
    const/16 v7, 0x4c

    aget v7, v6, v7

    const/16 v8, 0x4d

    aget v8, v6, v8

    const/16 v9, 0x4e

    aget v9, v6, v9

    const/16 v10, 0x4f

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 215
    const/16 v7, 0x4c

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x4d

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x4e

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x4f

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 216
    const/16 v7, 0x50

    aget v7, v6, v7

    const/16 v8, 0x51

    aget v8, v6, v8

    const/16 v9, 0x52

    aget v9, v6, v9

    const/16 v10, 0x53

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 217
    const/16 v7, 0x50

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x51

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x52

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x53

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 218
    const/16 v7, 0x54

    aget v7, v6, v7

    const/16 v8, 0x55

    aget v8, v6, v8

    const/16 v9, 0x56

    aget v9, v6, v9

    const/16 v10, 0x57

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 219
    const/16 v7, 0x54

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x55

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x56

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x57

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 220
    const/16 v7, 0x58

    aget v7, v6, v7

    const/16 v8, 0x59

    aget v8, v6, v8

    const/16 v9, 0x5a

    aget v9, v6, v9

    const/16 v10, 0x5b

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    .line 221
    const/16 v7, 0x58

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x59

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x5a

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x5b

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 222
    const/16 v7, 0x5c

    aget v7, v6, v7

    const/16 v8, 0x5d

    aget v8, v6, v8

    const/16 v9, 0x5e

    aget v9, v6, v9

    const/16 v10, 0x5f

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    .line 223
    const/16 v7, 0x5c

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x5d

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x5e

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x5f

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 224
    const/16 v7, 0x60

    aget v7, v6, v7

    const/16 v8, 0x61

    aget v8, v6, v8

    const/16 v9, 0x62

    aget v9, v6, v9

    const/16 v10, 0x63

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 225
    const/16 v7, 0x60

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x61

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x62

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x63

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 226
    const/16 v7, 0x64

    aget v7, v6, v7

    const/16 v8, 0x65

    aget v8, v6, v8

    const/16 v9, 0x66

    aget v9, v6, v9

    const/16 v10, 0x67

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 227
    const/16 v7, 0x64

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x65

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x66

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x67

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 228
    const/16 v7, 0x68

    aget v7, v6, v7

    const/16 v8, 0x69

    aget v8, v6, v8

    const/16 v9, 0x6a

    aget v9, v6, v9

    const/16 v10, 0x6b

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 229
    const/16 v7, 0x68

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x69

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x6a

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x6b

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 230
    const/16 v7, 0x6c

    aget v7, v6, v7

    const/16 v8, 0x6d

    aget v8, v6, v8

    const/16 v9, 0x6e

    aget v9, v6, v9

    const/16 v10, 0x6f

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 231
    const/16 v7, 0x6c

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x6d

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x6e

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x6f

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 232
    const/16 v7, 0x70

    aget v7, v6, v7

    const/16 v8, 0x71

    aget v8, v6, v8

    const/16 v9, 0x72

    aget v9, v6, v9

    const/16 v10, 0x73

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 233
    const/16 v7, 0x70

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x71

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x72

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x73

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 234
    const/16 v7, 0x74

    aget v7, v6, v7

    const/16 v8, 0x75

    aget v8, v6, v8

    const/16 v9, 0x76

    aget v9, v6, v9

    const/16 v10, 0x77

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 235
    const/16 v7, 0x74

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x75

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x76

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x77

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 236
    const/16 v7, 0x78

    aget v7, v6, v7

    const/16 v8, 0x79

    aget v8, v6, v8

    const/16 v9, 0x7a

    aget v9, v6, v9

    const/16 v10, 0x7b

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    .line 237
    const/16 v7, 0x78

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x79

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x7a

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x7b

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 238
    const/16 v7, 0x7c

    aget v7, v6, v7

    const/16 v8, 0x7d

    aget v8, v6, v8

    const/16 v9, 0x7e

    aget v9, v6, v9

    const/16 v10, 0x7f

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    .line 239
    const/16 v7, 0x7c

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x7d

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x7e

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x7f

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 240
    const/16 v7, 0x80

    aget v7, v6, v7

    const/16 v8, 0x81

    aget v8, v6, v8

    const/16 v9, 0x82

    aget v9, v6, v9

    const/16 v10, 0x83

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 241
    const/16 v7, 0x80

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x81

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x82

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x83

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 243
    return-object v6
.end method

.method private rotateLeft(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "bits"    # I

    .prologue
    .line 250
    shl-int v0, p1, p2

    neg-int v1, p2

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private rotateRight(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "bits"    # I

    .prologue
    .line 257
    ushr-int v0, p1, p2

    neg-int v1, p2

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private sb0(IIII)V
    .locals 7
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 454
    xor-int v0, p1, p4

    .line 455
    .local v0, "t1":I
    xor-int v2, p3, v0

    .line 456
    .local v2, "t3":I
    xor-int v3, p2, v2

    .line 457
    .local v3, "t4":I
    and-int v5, p1, p4

    xor-int/2addr v5, v3

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 458
    and-int v5, p2, v0

    xor-int v4, p1, v5

    .line 459
    .local v4, "t7":I
    or-int v5, p3, v4

    xor-int/2addr v5, v3

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 460
    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int v6, v2, v4

    and-int v1, v5, v6

    .line 461
    .local v1, "t12":I
    xor-int/lit8 v5, v2, -0x1

    xor-int/2addr v5, v1

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 462
    xor-int/lit8 v5, v4, -0x1

    xor-int/2addr v5, v1

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 463
    return-void
.end method

.method private sb1(IIII)V
    .locals 6
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 486
    xor-int/lit8 v5, p1, -0x1

    xor-int v1, p2, v5

    .line 487
    .local v1, "t2":I
    or-int v5, p1, v1

    xor-int v2, p3, v5

    .line 488
    .local v2, "t5":I
    xor-int v5, p4, v2

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 489
    or-int v5, p4, v1

    xor-int v3, p2, v5

    .line 490
    .local v3, "t7":I
    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int v4, v1, v5

    .line 491
    .local v4, "t8":I
    and-int v5, v2, v3

    xor-int/2addr v5, v4

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 492
    xor-int v0, v2, v3

    .line 493
    .local v0, "t11":I
    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v5, v0

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 494
    and-int v5, v4, v0

    xor-int/2addr v5, v2

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 495
    return-void
.end method

.method private sb2(IIII)V
    .locals 9
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 520
    xor-int/lit8 v0, p1, -0x1

    .line 521
    .local v0, "t1":I
    xor-int v1, p2, p4

    .line 522
    .local v1, "t2":I
    and-int v2, p3, v0

    .line 523
    .local v2, "t3":I
    xor-int v6, v1, v2

    iput v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 524
    xor-int v3, p3, v0

    .line 525
    .local v3, "t5":I
    iget v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int v4, p3, v6

    .line 526
    .local v4, "t6":I
    and-int v5, p2, v4

    .line 527
    .local v5, "t7":I
    xor-int v6, v3, v5

    iput v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 528
    or-int v6, p4, v5

    iget v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    or-int/2addr v7, v3

    and-int/2addr v6, v7

    xor-int/2addr v6, p1

    iput v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 529
    iget v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v6, v1

    iget v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    or-int v8, p4, v0

    xor-int/2addr v7, v8

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 530
    return-void
.end method

.method private sb3(IIII)V
    .locals 12
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 558
    xor-int v0, p1, p2

    .line 559
    .local v0, "t1":I
    and-int v3, p1, p3

    .line 560
    .local v3, "t2":I
    or-int v4, p1, p4

    .line 561
    .local v4, "t3":I
    xor-int v5, p3, p4

    .line 562
    .local v5, "t4":I
    and-int v6, v0, v4

    .line 563
    .local v6, "t5":I
    or-int v7, v3, v6

    .line 564
    .local v7, "t6":I
    xor-int v10, v5, v7

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 565
    xor-int v8, p2, v4

    .line 566
    .local v8, "t8":I
    xor-int v9, v7, v8

    .line 567
    .local v9, "t9":I
    and-int v1, v5, v9

    .line 568
    .local v1, "t10":I
    xor-int v10, v0, v1

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 569
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v11, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    and-int v2, v10, v11

    .line 570
    .local v2, "t12":I
    xor-int v10, v9, v2

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 571
    or-int v10, p2, p4

    xor-int v11, v5, v2

    xor-int/2addr v10, v11

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 572
    return-void
.end method

.method private sb4(IIII)V
    .locals 11
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 600
    xor-int v0, p1, p4

    .line 601
    .local v0, "t1":I
    and-int v3, p4, v0

    .line 602
    .local v3, "t2":I
    xor-int v4, p3, v3

    .line 603
    .local v4, "t3":I
    or-int v5, p2, v4

    .line 604
    .local v5, "t4":I
    xor-int v9, v0, v5

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 605
    xor-int/lit8 v6, p2, -0x1

    .line 606
    .local v6, "t6":I
    or-int v7, v0, v6

    .line 607
    .local v7, "t7":I
    xor-int v9, v4, v7

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 608
    iget v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    and-int v8, p1, v9

    .line 609
    .local v8, "t9":I
    xor-int v1, v0, v6

    .line 610
    .local v1, "t10":I
    and-int v2, v5, v1

    .line 611
    .local v2, "t11":I
    xor-int v9, v8, v2

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 612
    xor-int v9, p1, v4

    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    and-int/2addr v10, v1

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 613
    return-void
.end method

.method private sb5(IIII)V
    .locals 12
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 640
    xor-int/lit8 v0, p1, -0x1

    .line 641
    .local v0, "t1":I
    xor-int v4, p1, p2

    .line 642
    .local v4, "t2":I
    xor-int v5, p1, p4

    .line 643
    .local v5, "t3":I
    xor-int v6, p3, v0

    .line 644
    .local v6, "t4":I
    or-int v7, v4, v5

    .line 645
    .local v7, "t5":I
    xor-int v10, v6, v7

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 646
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    and-int v8, p4, v10

    .line 647
    .local v8, "t7":I
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int v9, v4, v10

    .line 648
    .local v9, "t8":I
    xor-int v10, v8, v9

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 649
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    or-int v1, v0, v10

    .line 650
    .local v1, "t10":I
    or-int v2, v4, v8

    .line 651
    .local v2, "t11":I
    xor-int v3, v5, v1

    .line 652
    .local v3, "t12":I
    xor-int v10, v2, v3

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 653
    xor-int v10, p2, v8

    iget v11, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    and-int/2addr v11, v3

    xor-int/2addr v10, v11

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 654
    return-void
.end method

.method private sb6(IIII)V
    .locals 11
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 681
    xor-int/lit8 v0, p1, -0x1

    .line 682
    .local v0, "t1":I
    xor-int v2, p1, p4

    .line 683
    .local v2, "t2":I
    xor-int v3, p2, v2

    .line 684
    .local v3, "t3":I
    or-int v4, v0, v2

    .line 685
    .local v4, "t4":I
    xor-int v5, p3, v4

    .line 686
    .local v5, "t5":I
    xor-int v9, p2, v5

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 687
    iget v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    or-int v6, v2, v9

    .line 688
    .local v6, "t7":I
    xor-int v7, p4, v6

    .line 689
    .local v7, "t8":I
    and-int v8, v5, v7

    .line 690
    .local v8, "t9":I
    xor-int v9, v3, v8

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 691
    xor-int v1, v5, v7

    .line 692
    .local v1, "t11":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v9, v1

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 693
    xor-int/lit8 v9, v5, -0x1

    and-int v10, v3, v1

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 694
    return-void
.end method

.method private sb7(IIII)V
    .locals 13
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 721
    xor-int v0, p2, p3

    .line 722
    .local v0, "t1":I
    and-int v3, p3, v0

    .line 723
    .local v3, "t2":I
    xor-int v4, p4, v3

    .line 724
    .local v4, "t3":I
    xor-int v5, p1, v4

    .line 725
    .local v5, "t4":I
    or-int v6, p4, v0

    .line 726
    .local v6, "t5":I
    and-int v7, v5, v6

    .line 727
    .local v7, "t6":I
    xor-int v10, p2, v7

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 728
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    or-int v8, v4, v10

    .line 729
    .local v8, "t8":I
    and-int v9, p1, v5

    .line 730
    .local v9, "t9":I
    xor-int v10, v0, v9

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 731
    xor-int v1, v5, v8

    .line 732
    .local v1, "t11":I
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    and-int v2, v10, v1

    .line 733
    .local v2, "t12":I
    xor-int v10, v4, v2

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 734
    xor-int/lit8 v10, v1, -0x1

    iget v11, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget v12, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    and-int/2addr v11, v12

    xor-int/2addr v10, v11

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 735
    return-void
.end method

.method private wordToBytes(I[BI)V
    .locals 2
    .param p1, "word"    # I
    .param p2, "dst"    # [B
    .param p3, "dstOff"    # I

    .prologue
    .line 273
    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 274
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 275
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 276
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 277
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "Serpent"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 44
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 46
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->encrypting:Z

    .line 47
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->makeWorkingKey([B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    .line 48
    return-void

    .line 51
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to Serpent init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final processBlock([BI[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Serpent not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 90
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 95
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->encrypting:Z

    if-eqz v0, :cond_3

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->encryptBlock([BI[BI)V

    .line 107
    :goto_0
    const/16 v0, 0x10

    return v0

    .line 104
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->decryptBlock([BI[BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method
