.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;
.super Ljava/lang/Object;
.source "GMSSParameters.java"


# instance fields
.field private K:[I

.field private heightOfTrees:[I

.field private numOfLayers:I

.field private winternitzParameter:[I


# direct methods
.method public constructor <init>(I[I[I[I)V
    .locals 0
    .param p1, "layers"    # I
    .param p2, "heightOfTrees"    # [I
    .param p3, "winternitzParameter"    # [I
    .param p4, "K"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    .line 45
    return-void
.end method

.method private init(I[I[I[I)V
    .locals 6
    .param p1, "layers"    # I
    .param p2, "heightOfTrees"    # [I
    .param p3, "winternitzParameter"    # [I
    .param p4, "K"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 51
    const/4 v2, 0x1

    .line 52
    .local v2, "valid":Z
    const-string v0, ""

    .line 53
    .local v0, "errMsg":Ljava/lang/String;
    iput p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    .line 54
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    array-length v4, p3

    if-ne v3, v4, :cond_0

    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    array-length v4, p2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    array-length v4, p4

    if-eq v3, v4, :cond_1

    .line 58
    :cond_0
    const/4 v2, 0x0

    .line 59
    const-string v0, "Unexpected parameterset format"

    .line 61
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    if-ge v1, v3, :cond_6

    .line 63
    aget v3, p4, v1

    if-lt v3, v5, :cond_2

    aget v3, p2, v1

    aget v4, p4, v1

    sub-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 65
    :cond_2
    const/4 v2, 0x0

    .line 66
    const-string v0, "Wrong parameter K (K >= 2 and H-K even required)!"

    .line 69
    :cond_3
    aget v3, p2, v1

    const/4 v4, 0x4

    if-lt v3, v4, :cond_4

    aget v3, p3, v1

    if-ge v3, v5, :cond_5

    .line 71
    :cond_4
    const/4 v2, 0x0

    .line 72
    const-string v0, "Wrong parameter H or w (H > 3 and w > 1 required)!"

    .line 61
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_6
    if-eqz v2, :cond_7

    .line 78
    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->heightOfTrees:[I

    .line 79
    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->winternitzParameter:[I

    .line 80
    invoke-static {p4}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->K:[I

    .line 86
    return-void

    .line 84
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getHeightOfTrees()[I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->heightOfTrees:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getK()[I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->K:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getNumOfLayers()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    return v0
.end method

.method public getWinternitzParameter()[I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->winternitzParameter:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method
