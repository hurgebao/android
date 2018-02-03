.class public Lorg/spongycastle/crypto/engines/ChaChaEngine;
.super Lorg/spongycastle/crypto/engines/Salsa20Engine;
.source "ChaChaEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "rounds"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;-><init>(I)V

    .line 25
    return-void
.end method

.method public static chachaCore(I[I[I)V
    .locals 21
    .param p0, "rounds"    # I
    .param p1, "input"    # [I
    .param p2, "x"    # [I

    .prologue
    .line 120
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 122
    new-instance v19, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    .line 124
    :cond_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 126
    new-instance v19, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    .line 128
    :cond_1
    rem-int/lit8 v19, p0, 0x2

    if-eqz v19, :cond_2

    .line 130
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Number of rounds must be even"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 133
    :cond_2
    const/16 v19, 0x0

    aget v3, p1, v19

    .line 134
    .local v3, "x00":I
    const/16 v19, 0x1

    aget v4, p1, v19

    .line 135
    .local v4, "x01":I
    const/16 v19, 0x2

    aget v5, p1, v19

    .line 136
    .local v5, "x02":I
    const/16 v19, 0x3

    aget v6, p1, v19

    .line 137
    .local v6, "x03":I
    const/16 v19, 0x4

    aget v7, p1, v19

    .line 138
    .local v7, "x04":I
    const/16 v19, 0x5

    aget v8, p1, v19

    .line 139
    .local v8, "x05":I
    const/16 v19, 0x6

    aget v9, p1, v19

    .line 140
    .local v9, "x06":I
    const/16 v19, 0x7

    aget v10, p1, v19

    .line 141
    .local v10, "x07":I
    const/16 v19, 0x8

    aget v11, p1, v19

    .line 142
    .local v11, "x08":I
    const/16 v19, 0x9

    aget v12, p1, v19

    .line 143
    .local v12, "x09":I
    const/16 v19, 0xa

    aget v13, p1, v19

    .line 144
    .local v13, "x10":I
    const/16 v19, 0xb

    aget v14, p1, v19

    .line 145
    .local v14, "x11":I
    const/16 v19, 0xc

    aget v15, p1, v19

    .line 146
    .local v15, "x12":I
    const/16 v19, 0xd

    aget v16, p1, v19

    .line 147
    .local v16, "x13":I
    const/16 v19, 0xe

    aget v17, p1, v19

    .line 148
    .local v17, "x14":I
    const/16 v19, 0xf

    aget v18, p1, v19

    .line 150
    .local v18, "x15":I
    move/from16 v2, p0

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_3

    .line 152
    add-int/2addr v3, v7

    xor-int v19, v15, v3

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v15

    .line 153
    add-int/2addr v11, v15

    xor-int v19, v7, v11

    const/16 v20, 0xc

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v7

    .line 154
    add-int/2addr v3, v7

    xor-int v19, v15, v3

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v15

    .line 155
    add-int/2addr v11, v15

    xor-int v19, v7, v11

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v7

    .line 156
    add-int/2addr v4, v8

    xor-int v19, v16, v4

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v16

    .line 157
    add-int v12, v12, v16

    xor-int v19, v8, v12

    const/16 v20, 0xc

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v8

    .line 158
    add-int/2addr v4, v8

    xor-int v19, v16, v4

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v16

    .line 159
    add-int v12, v12, v16

    xor-int v19, v8, v12

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v8

    .line 160
    add-int/2addr v5, v9

    xor-int v19, v17, v5

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v17

    .line 161
    add-int v13, v13, v17

    xor-int v19, v9, v13

    const/16 v20, 0xc

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v9

    .line 162
    add-int/2addr v5, v9

    xor-int v19, v17, v5

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v17

    .line 163
    add-int v13, v13, v17

    xor-int v19, v9, v13

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v9

    .line 164
    add-int/2addr v6, v10

    xor-int v19, v18, v6

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v18

    .line 165
    add-int v14, v14, v18

    xor-int v19, v10, v14

    const/16 v20, 0xc

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v10

    .line 166
    add-int/2addr v6, v10

    xor-int v19, v18, v6

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v18

    .line 167
    add-int v14, v14, v18

    xor-int v19, v10, v14

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v10

    .line 168
    add-int/2addr v3, v8

    xor-int v19, v18, v3

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v18

    .line 169
    add-int v13, v13, v18

    xor-int v19, v8, v13

    const/16 v20, 0xc

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v8

    .line 170
    add-int/2addr v3, v8

    xor-int v19, v18, v3

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v18

    .line 171
    add-int v13, v13, v18

    xor-int v19, v8, v13

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v8

    .line 172
    add-int/2addr v4, v9

    xor-int v19, v15, v4

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v15

    .line 173
    add-int/2addr v14, v15

    xor-int v19, v9, v14

    const/16 v20, 0xc

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v9

    .line 174
    add-int/2addr v4, v9

    xor-int v19, v15, v4

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v15

    .line 175
    add-int/2addr v14, v15

    xor-int v19, v9, v14

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v9

    .line 176
    add-int/2addr v5, v10

    xor-int v19, v16, v5

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v16

    .line 177
    add-int v11, v11, v16

    xor-int v19, v10, v11

    const/16 v20, 0xc

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v10

    .line 178
    add-int/2addr v5, v10

    xor-int v19, v16, v5

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v16

    .line 179
    add-int v11, v11, v16

    xor-int v19, v10, v11

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v10

    .line 180
    add-int/2addr v6, v7

    xor-int v19, v17, v6

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v17

    .line 181
    add-int v12, v12, v17

    xor-int v19, v7, v12

    const/16 v20, 0xc

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v7

    .line 182
    add-int/2addr v6, v7

    xor-int v19, v17, v6

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v17

    .line 183
    add-int v12, v12, v17

    xor-int v19, v7, v12

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v7

    .line 150
    add-int/lit8 v2, v2, -0x2

    goto/16 :goto_0

    .line 187
    :cond_3
    const/16 v19, 0x0

    const/16 v20, 0x0

    aget v20, p1, v20

    add-int v20, v20, v3

    aput v20, p2, v19

    .line 188
    const/16 v19, 0x1

    const/16 v20, 0x1

    aget v20, p1, v20

    add-int v20, v20, v4

    aput v20, p2, v19

    .line 189
    const/16 v19, 0x2

    const/16 v20, 0x2

    aget v20, p1, v20

    add-int v20, v20, v5

    aput v20, p2, v19

    .line 190
    const/16 v19, 0x3

    const/16 v20, 0x3

    aget v20, p1, v20

    add-int v20, v20, v6

    aput v20, p2, v19

    .line 191
    const/16 v19, 0x4

    const/16 v20, 0x4

    aget v20, p1, v20

    add-int v20, v20, v7

    aput v20, p2, v19

    .line 192
    const/16 v19, 0x5

    const/16 v20, 0x5

    aget v20, p1, v20

    add-int v20, v20, v8

    aput v20, p2, v19

    .line 193
    const/16 v19, 0x6

    const/16 v20, 0x6

    aget v20, p1, v20

    add-int v20, v20, v9

    aput v20, p2, v19

    .line 194
    const/16 v19, 0x7

    const/16 v20, 0x7

    aget v20, p1, v20

    add-int v20, v20, v10

    aput v20, p2, v19

    .line 195
    const/16 v19, 0x8

    const/16 v20, 0x8

    aget v20, p1, v20

    add-int v20, v20, v11

    aput v20, p2, v19

    .line 196
    const/16 v19, 0x9

    const/16 v20, 0x9

    aget v20, p1, v20

    add-int v20, v20, v12

    aput v20, p2, v19

    .line 197
    const/16 v19, 0xa

    const/16 v20, 0xa

    aget v20, p1, v20

    add-int v20, v20, v13

    aput v20, p2, v19

    .line 198
    const/16 v19, 0xb

    const/16 v20, 0xb

    aget v20, p1, v20

    add-int v20, v20, v14

    aput v20, p2, v19

    .line 199
    const/16 v19, 0xc

    const/16 v20, 0xc

    aget v20, p1, v20

    add-int v20, v20, v15

    aput v20, p2, v19

    .line 200
    const/16 v19, 0xd

    const/16 v20, 0xd

    aget v20, p1, v20

    add-int v20, v20, v16

    aput v20, p2, v19

    .line 201
    const/16 v19, 0xe

    const/16 v20, 0xe

    aget v20, p1, v20

    add-int v20, v20, v17

    aput v20, p2, v19

    .line 202
    const/16 v19, 0xf

    const/16 v20, 0xf

    aget v20, p1, v20

    add-int v20, v20, v18

    aput v20, p2, v19

    .line 203
    return-void
.end method


# virtual methods
.method protected advanceCounter()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v1, 0xc

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    if-nez v2, :cond_0

    .line 36
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v1, 0xd

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 38
    :cond_0
    return-void
.end method

.method protected generateKeyStream([B)V
    .locals 3
    .param p1, "output"    # [B

    .prologue
    .line 109
    iget v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rounds:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->chachaCore(I[I[I)V

    .line 110
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 111
    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChaCha"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->rounds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCounter()J
    .locals 6

    .prologue
    .line 55
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v1, 0xd

    aget v0, v0, v1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v3, 0xc

    aget v2, v2, v3

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected resetCounter()V
    .locals 5

    .prologue
    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v1, 0xc

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v3, 0xd

    const/4 v4, 0x0

    aput v4, v2, v3

    aput v4, v0, v1

    .line 61
    return-void
.end method

.method protected retreatCounter()V
    .locals 4

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xc

    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v0, v0, v3

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 49
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v3

    .line 51
    :cond_1
    return-void
.end method

.method protected setKey([B[B)V
    .locals 10
    .param p1, "keyBytes"    # [B
    .param p2, "ivBytes"    # [B

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0xc

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 65
    if-eqz p1, :cond_1

    .line 67
    array-length v2, p1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    array-length v2, p1

    if-eq v2, v9, :cond_0

    .line 69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires 128 bit or 256 bit key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    invoke-static {p1, v5}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v6

    .line 74
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v3, 0x5

    invoke-static {p1, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 75
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v3, 0x6

    invoke-static {p1, v7}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 76
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v3, 0x7

    invoke-static {p1, v8}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 80
    array-length v2, p1

    if-ne v2, v9, :cond_2

    .line 82
    sget-object v0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->sigma:[B

    .line 83
    .local v0, "constants":[B
    const/16 v1, 0x10

    .line 91
    .local v1, "offset":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v7

    .line 92
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v3, 0x9

    add-int/lit8 v4, v1, 0x4

    invoke-static {p1, v4}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 93
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v3, 0xa

    add-int/lit8 v4, v1, 0x8

    invoke-static {p1, v4}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 94
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v3, 0xb

    add-int/lit8 v4, v1, 0xc

    invoke-static {p1, v4}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 96
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    invoke-static {v0, v5}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v5

    .line 97
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v3, 0x1

    invoke-static {v0, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 98
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v3, 0x2

    invoke-static {v0, v7}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 99
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v3, 0x3

    invoke-static {v0, v8}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 103
    .end local v0    # "constants":[B
    .end local v1    # "offset":I
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v3, 0xe

    invoke-static {p2, v5}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 104
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v3, 0xf

    invoke-static {p2, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 105
    return-void

    .line 87
    :cond_2
    sget-object v0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->tau:[B

    .line 88
    .restart local v0    # "constants":[B
    const/4 v1, 0x0

    .restart local v1    # "offset":I
    goto :goto_0
.end method
