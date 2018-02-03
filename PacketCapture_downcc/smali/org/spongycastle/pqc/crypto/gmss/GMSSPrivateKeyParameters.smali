.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;
.super Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;
.source "GMSSPrivateKeyParameters.java"


# instance fields
.field private K:[I

.field private currentAuthPaths:[[[B

.field private currentRetain:[[Ljava/util/Vector;

.field private currentRootSig:[[B

.field private currentSeeds:[[B

.field private currentStack:[Ljava/util/Vector;

.field private currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

.field private digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

.field private gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private heightOfTrees:[I

.field private index:[I

.field private keep:[[[B

.field private mdLength:I

.field private messDigestTrees:Lorg/spongycastle/crypto/Digest;

.field private minTreehash:[I

.field private nextAuthPaths:[[[B

.field private nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

.field private nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

.field private nextNextSeeds:[[B

.field private nextRetain:[[Ljava/util/Vector;

.field private nextRoot:[[B

.field private nextRootSig:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

.field private nextStack:[Ljava/util/Vector;

.field private nextTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

.field private numLayer:I

.field private numLeafs:[I

.field private otsIndex:[I

.field private upperLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

.field private upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

.field private used:Z


# direct methods
.method public constructor <init>([I[[B[[B[[[B[[[B[[[B[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 11
    .param p1, "index"    # [I
    .param p2, "currentSeeds"    # [[B
    .param p3, "nextNextSeeds"    # [[B
    .param p4, "currentAuthPaths"    # [[[B
    .param p5, "nextAuthPaths"    # [[[B
    .param p6, "keep"    # [[[B
    .param p7, "currentTreehash"    # [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .param p8, "nextTreehash"    # [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .param p9, "currentStack"    # [Ljava/util/Vector;
    .param p10, "nextStack"    # [Ljava/util/Vector;
    .param p11, "currentRetain"    # [[Ljava/util/Vector;
    .param p12, "nextRetain"    # [[Ljava/util/Vector;
    .param p13, "nextNextLeaf"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;
    .param p14, "upperLeaf"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;
    .param p15, "upperTreehashLeaf"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;
    .param p16, "minTreehash"    # [I
    .param p17, "nextRoot"    # [[B
    .param p18, "nextNextRoot"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    .param p19, "currentRootSig"    # [[B
    .param p20, "nextRootSig"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;
    .param p21, "gmssParameterset"    # Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;
    .param p22, "digestProvider"    # Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .prologue
    .line 168
    const/4 v5, 0x1

    move-object/from16 v0, p21

    invoke-direct {p0, v5, v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;-><init>(ZLorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V

    .line 52
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    .line 172
    invoke-interface/range {p22 .. p22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    .line 173
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    .line 177
    move-object/from16 v0, p21

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    .line 178
    invoke-virtual/range {p21 .. p21}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    .line 179
    invoke-virtual/range {p21 .. p21}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    .line 180
    invoke-virtual/range {p21 .. p21}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    .line 182
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v5

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    .line 185
    if-nez p1, :cond_0

    .line 187
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    .line 188
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v4, v5, :cond_1

    .line 190
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    const/4 v6, 0x0

    aput v6, v5, v4

    .line 188
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    .end local v4    # "i":I
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    .line 198
    :cond_1
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    .line 199
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    .line 201
    iput-object p4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    .line 202
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    .line 205
    if-nez p6, :cond_2

    .line 207
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v5, v5, [[[B

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    .line 208
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v4, v5, :cond_3

    .line 210
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v5, v5, v4

    div-int/lit8 v5, v5, 0x2

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v5, v8

    iget v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    filled-new-array {v5, v7}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    aput-object v5, v6, v4

    .line 208
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 215
    .end local v4    # "i":I
    :cond_2
    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    .line 219
    :cond_3
    if-nez p9, :cond_4

    .line 221
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v5, v5, [Ljava/util/Vector;

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    .line 222
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v4, v5, :cond_5

    .line 224
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    aput-object v6, v5, v4

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 229
    .end local v4    # "i":I
    :cond_4
    move-object/from16 v0, p9

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    .line 233
    :cond_5
    if-nez p10, :cond_6

    .line 235
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [Ljava/util/Vector;

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    .line 236
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_7

    .line 238
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    aput-object v6, v5, v4

    .line 236
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 243
    .end local v4    # "i":I
    :cond_6
    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    .line 246
    :cond_7
    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 247
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 249
    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    .line 250
    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    .line 252
    move-object/from16 v0, p17

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    .line 254
    move-object/from16 v0, p22

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .line 256
    if-nez p18, :cond_8

    .line 258
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    .line 259
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_9

    .line 261
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    new-instance v6, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v6, v7, v8, v9}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    aput-object v6, v5, v4

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 267
    .end local v4    # "i":I
    :cond_8
    move-object/from16 v0, p18

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    .line 269
    :cond_9
    move-object/from16 v0, p19

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    .line 272
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    .line 273
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v4, v5, :cond_a

    .line 275
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v7, v7, v4

    shl-int/2addr v6, v7

    aput v6, v5, v4

    .line 273
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 278
    :cond_a
    new-instance v5, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v5, v6}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 280
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_d

    .line 284
    if-nez p13, :cond_b

    .line 286
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x2

    new-array v5, v5, [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 287
    const/4 v4, 0x0

    :goto_6
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_c

    .line 289
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    new-instance v6, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    add-int/lit8 v10, v4, 0x2

    aget v9, v9, v10

    iget-object v10, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    aget-object v10, v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/spongycastle/crypto/Digest;II[B)V

    aput-object v6, v5, v4

    .line 287
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 294
    :cond_b
    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 304
    :cond_c
    :goto_7
    if-nez p14, :cond_e

    .line 306
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 307
    const/4 v4, 0x0

    :goto_8
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_f

    .line 309
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    new-instance v6, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v8, v8, v4

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    add-int/lit8 v10, v4, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    aget-object v10, v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/spongycastle/crypto/Digest;II[B)V

    aput-object v6, v5, v4

    .line 307
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 299
    :cond_d
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    goto :goto_7

    .line 315
    :cond_e
    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 320
    :cond_f
    if-nez p15, :cond_10

    .line 322
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 323
    const/4 v4, 0x0

    :goto_9
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_11

    .line 325
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    new-instance v6, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v8, v8, v4

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    add-int/lit8 v10, v4, 0x1

    aget v9, v9, v10

    invoke-direct {v6, v7, v8, v9}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/spongycastle/crypto/Digest;II)V

    aput-object v6, v5, v4

    .line 323
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 330
    :cond_10
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 333
    :cond_11
    if-nez p16, :cond_12

    .line 335
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    .line 336
    const/4 v4, 0x0

    :goto_a
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_13

    .line 338
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    const/4 v6, -0x1

    aput v6, v5, v4

    .line 336
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 343
    :cond_12
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    .line 347
    :cond_13
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v3, v5, [B

    .line 348
    .local v3, "dummy":[B
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v2, v5, [B

    .line 349
    .local v2, "OTSseed":[B
    if-nez p20, :cond_14

    .line 351
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    .line 352
    const/4 v4, 0x0

    :goto_b
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_15

    .line 354
    aget-object v5, p2, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v5, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v5, v3}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    .line 356
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v5, v3}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v2

    .line 357
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    new-instance v6, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    invoke-interface/range {p22 .. p22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v8, v8, v4

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    add-int/lit8 v10, v4, 0x1

    aget v9, v9, v10

    invoke-direct {v6, v7, v8, v9}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;-><init>(Lorg/spongycastle/crypto/Digest;II)V

    aput-object v6, v5, v4

    .line 359
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    aget-object v5, v5, v4

    aget-object v6, p17, v4

    invoke-virtual {v5, v2, v6}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->initSign([B[B)V

    .line 352
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 364
    :cond_14
    move-object/from16 v0, p20

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    .line 366
    :cond_15
    return-void
.end method

.method public constructor <init>([[B[[B[[[B[[[B[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[B[[BLorg/spongycastle/pqc/crypto/gmss/GMSSParameters;Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 23
    .param p1, "currentSeed"    # [[B
    .param p2, "nextNextSeed"    # [[B
    .param p3, "currentAuthPath"    # [[[B
    .param p4, "nextAuthPath"    # [[[B
    .param p5, "currentTreehash"    # [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .param p6, "nextTreehash"    # [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .param p7, "currentStack"    # [Ljava/util/Vector;
    .param p8, "nextStack"    # [Ljava/util/Vector;
    .param p9, "currentRetain"    # [[Ljava/util/Vector;
    .param p10, "nextRetain"    # [[Ljava/util/Vector;
    .param p11, "nextRoot"    # [[B
    .param p12, "currentRootSig"    # [[B
    .param p13, "gmssParameterset"    # Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;
    .param p14, "digestProvider"    # Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .prologue
    .line 125
    const/4 v1, 0x0

    const/4 v6, 0x0

    check-cast v6, [[[B

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v17, p11

    move-object/from16 v19, p12

    move-object/from16 v21, p13

    move-object/from16 v22, p14

    invoke-direct/range {v0 .. v22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;-><init>([I[[B[[B[[[B[[[B[[[B[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    .line 129
    return-void
.end method


# virtual methods
.method public getCurrentAuthPaths()[[[B
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSeeds()[[B
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method public getIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1007
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v0, v0, p1

    return v0
.end method

.method public getIndex()[I
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    return-object v0
.end method

.method public getNumLeafs(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1039
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSubtreeRootSig(I)[B
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1025
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isUsed()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    return v0
.end method

.method public markUsed()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    .line 413
    return-void
.end method
