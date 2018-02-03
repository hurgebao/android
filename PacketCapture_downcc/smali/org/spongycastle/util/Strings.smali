.class public final Lorg/spongycastle/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asCharArray([B)[C
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 274
    array-length v2, p0

    new-array v0, v2, [C

    .line 276
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 278
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_0
    return-object v0
.end method

.method public static fromByteArray([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 263
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->asCharArray([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static fromUTF8ByteArray([B)Ljava/lang/String;
    .locals 14
    .param p0, "bytes"    # [B

    .prologue
    const/16 v13, 0xf0

    const/16 v12, 0xe0

    const/16 v11, 0xc0

    .line 12
    const/4 v6, 0x0

    .line 13
    .local v6, "i":I
    const/4 v7, 0x0

    .line 15
    .local v7, "length":I
    :goto_0
    array-length v9, p0

    if-ge v6, v9, :cond_3

    .line 17
    add-int/lit8 v7, v7, 0x1

    .line 18
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xf0

    if-ne v9, v13, :cond_0

    .line 21
    add-int/lit8 v7, v7, 0x1

    .line 22
    add-int/lit8 v6, v6, 0x4

    goto :goto_0

    .line 24
    :cond_0
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xe0

    if-ne v9, v12, :cond_1

    .line 26
    add-int/lit8 v6, v6, 0x3

    goto :goto_0

    .line 28
    :cond_1
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xc0

    if-ne v9, v11, :cond_2

    .line 30
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 34
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 38
    :cond_3
    new-array v5, v7, [C

    .line 40
    .local v5, "cs":[C
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 43
    :goto_1
    array-length v9, p0

    if-ge v6, v9, :cond_8

    .line 47
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xf0

    if-ne v9, v13, :cond_4

    .line 49
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x12

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x3

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int v4, v9, v10

    .line 50
    .local v4, "codePoint":I
    const/high16 v9, 0x10000

    sub-int v0, v4, v9

    .line 51
    .local v0, "U":I
    const v9, 0xd800

    shr-int/lit8 v10, v0, 0xa

    or-int/2addr v9, v10

    int-to-char v1, v9

    .line 52
    .local v1, "W1":C
    const v9, 0xdc00

    and-int/lit16 v10, v0, 0x3ff

    or-int/2addr v9, v10

    int-to-char v2, v9

    .line 53
    .local v2, "W2":C
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "length":I
    .local v8, "length":I
    aput-char v1, v5, v7

    .line 54
    move v3, v2

    .line 55
    .local v3, "ch":C
    add-int/lit8 v6, v6, 0x4

    move v7, v8

    .line 79
    .end local v0    # "U":I
    .end local v1    # "W1":C
    .end local v2    # "W2":C
    .end local v4    # "codePoint":I
    .end local v8    # "length":I
    .restart local v7    # "length":I
    :goto_2
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "length":I
    .restart local v8    # "length":I
    aput-char v3, v5, v7

    move v7, v8

    .line 80
    .end local v8    # "length":I
    .restart local v7    # "length":I
    goto :goto_1

    .line 57
    .end local v3    # "ch":C
    :cond_4
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xe0

    if-ne v9, v12, :cond_5

    .line 59
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0xc

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-char v3, v9

    .line 61
    .restart local v3    # "ch":C
    add-int/lit8 v6, v6, 0x3

    goto :goto_2

    .line 63
    .end local v3    # "ch":C
    :cond_5
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xd0

    const/16 v10, 0xd0

    if-ne v9, v10, :cond_6

    .line 65
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0x1f

    shl-int/lit8 v9, v9, 0x6

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-char v3, v9

    .line 66
    .restart local v3    # "ch":C
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 68
    .end local v3    # "ch":C
    :cond_6
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xc0

    if-ne v9, v11, :cond_7

    .line 70
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0x1f

    shl-int/lit8 v9, v9, 0x6

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-char v3, v9

    .line 71
    .restart local v3    # "ch":C
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 75
    .end local v3    # "ch":C
    :cond_7
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    int-to-char v3, v9

    .line 76
    .restart local v3    # "ch":C
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 82
    .end local v3    # "ch":C
    :cond_8
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    return-object v9
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "delimiter"    # C

    .prologue
    .line 286
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 287
    .local v5, "v":Ljava/util/Vector;
    const/4 v1, 0x1

    .line 290
    .local v1, "moreTokens":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 293
    .local v4, "tokenLocation":I
    if-lez v4, :cond_0

    .line 295
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "subString":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 297
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 301
    .end local v3    # "subString":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 302
    invoke-virtual {v5, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 306
    .end local v4    # "tokenLocation":I
    :cond_1
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 308
    .local v2, "res":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v2

    if-eq v0, v6, :cond_2

    .line 310
    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v0

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 312
    :cond_2
    return-object v2
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [B

    .line 234
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_0

    .line 236
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 238
    .local v1, "ch":C
    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "ch":C
    :cond_0
    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 197
    const/4 v1, 0x0

    .line 198
    .local v1, "changed":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 200
    .local v2, "chars":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_1

    .line 202
    aget-char v0, v2, v3

    .line 203
    .local v0, "ch":C
    const/16 v4, 0x41

    if-gt v4, v0, :cond_0

    const/16 v4, 0x5a

    if-lt v4, v0, :cond_0

    .line 205
    const/4 v1, 0x1

    .line 206
    add-int/lit8 v4, v0, -0x41

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 200
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "ch":C
    :cond_1
    if-eqz v1, :cond_2

    .line 212
    new-instance p0, Ljava/lang/String;

    .end local p0    # "string":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    .line 215
    :cond_2
    return-object p0
.end method

.method public static toUTF8ByteArray([CLjava/io/OutputStream;)V
    .locals 8
    .param p0, "string"    # [C
    .param p1, "sOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    move-object v2, p0

    .line 110
    .local v2, "c":[C
    const/4 v5, 0x0

    .line 112
    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_5

    .line 114
    aget-char v3, v2, v5

    .line 116
    .local v3, "ch":C
    const/16 v6, 0x80

    if-ge v3, v6, :cond_0

    .line 118
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 156
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 157
    goto :goto_0

    .line 120
    :cond_0
    const/16 v6, 0x800

    if-ge v3, v6, :cond_1

    .line 122
    shr-int/lit8 v6, v3, 0x6

    or-int/lit16 v6, v6, 0xc0

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 123
    and-int/lit8 v6, v3, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 126
    :cond_1
    const v6, 0xd800

    if-lt v3, v6, :cond_4

    const v6, 0xdfff

    if-gt v3, v6, :cond_4

    .line 130
    add-int/lit8 v6, v5, 0x1

    array-length v7, v2

    if-lt v6, v7, :cond_2

    .line 132
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "invalid UTF-16 codepoint"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 134
    :cond_2
    move v0, v3

    .line 135
    .local v0, "W1":C
    add-int/lit8 v5, v5, 0x1

    aget-char v3, v2, v5

    .line 136
    move v1, v3

    .line 139
    .local v1, "W2":C
    const v6, 0xdbff

    if-le v0, v6, :cond_3

    .line 141
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "invalid UTF-16 codepoint"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 143
    :cond_3
    and-int/lit16 v6, v0, 0x3ff

    shl-int/lit8 v6, v6, 0xa

    and-int/lit16 v7, v1, 0x3ff

    or-int/2addr v6, v7

    const/high16 v7, 0x10000

    add-int v4, v6, v7

    .line 144
    .local v4, "codePoint":I
    shr-int/lit8 v6, v4, 0x12

    or-int/lit16 v6, v6, 0xf0

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 145
    shr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 146
    shr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 147
    and-int/lit8 v6, v4, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 151
    .end local v0    # "W1":C
    .end local v1    # "W2":C
    .end local v4    # "codePoint":I
    :cond_4
    shr-int/lit8 v6, v3, 0xc

    or-int/lit16 v6, v6, 0xe0

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 152
    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 153
    and-int/lit8 v6, v3, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_1

    .line 158
    .end local v3    # "ch":C
    :cond_5
    return-void
.end method

.method public static toUTF8ByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static toUTF8ByteArray([C)[B
    .locals 4
    .param p0, "string"    # [C

    .prologue
    .line 92
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray([CLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 98
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot encode string to byte array!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, "changed":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 171
    .local v2, "chars":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_1

    .line 173
    aget-char v0, v2, v3

    .line 174
    .local v0, "ch":C
    const/16 v4, 0x61

    if-gt v4, v0, :cond_0

    const/16 v4, 0x7a

    if-lt v4, v0, :cond_0

    .line 176
    const/4 v1, 0x1

    .line 177
    add-int/lit8 v4, v0, -0x61

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 171
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "ch":C
    :cond_1
    if-eqz v1, :cond_2

    .line 183
    new-instance p0, Ljava/lang/String;

    .end local p0    # "string":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    .line 186
    :cond_2
    return-object p0
.end method
