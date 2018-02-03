.class public final Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"


# instance fields
.field private buffer:[C

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-gez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->buffer:[C

    .line 55
    return-void
.end method

.method private expand(I)V
    .locals 4
    .param p1, "newlen"    # I

    .prologue
    const/4 v3, 0x0

    .line 58
    iget-object v1, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [C

    .line 59
    .local v0, "newbuffer":[C
    iget-object v1, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iput-object v0, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->buffer:[C

    .line 61
    return-void
.end method

.method private isWhitespace(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 266
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 267
    :cond_0
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public append(C)V
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 110
    iget v1, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->len:I

    add-int/lit8 v0, v1, 0x1

    .line 111
    .local v0, "newlen":I
    iget-object v1, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 112
    invoke-direct {p0, v0}, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->expand(I)V

    .line 114
    :cond_0
    iget-object v1, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->len:I

    aput-char p1, v1, v2

    .line 115
    iput v0, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->len:I

    .line 116
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->len:I

    .line 159
    return-void
.end method

.method public indexOf(I)I
    .locals 2
    .param p1, "ch"    # I

    .prologue
    .line 226
    const/4 v0, 0x0

    iget v1, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->len:I

    invoke-virtual {p0, p1, v0, v1}, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->indexOf(III)I

    move-result v0

    return v0
.end method

.method public indexOf(III)I
    .locals 3
    .param p1, "ch"    # I
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 208
    if-gez p2, :cond_0

    .line 209
    const/4 p2, 0x0

    .line 211
    :cond_0
    iget v2, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->len:I

    if-le p3, v2, :cond_1

    .line 212
    iget p3, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->len:I

    .line 214
    :cond_1
    if-le p2, p3, :cond_3

    move v0, v1

    .line 222
    :cond_2
    :goto_0
    return v0

    .line 217
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_4

    .line 218
    iget-object v2, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->buffer:[C

    aget-char v2, v2, v0

    if-eq v2, p1, :cond_2

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 222
    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->len:I

    return v0
.end method

.method public substringTrimmed(II)Ljava/lang/String;
    .locals 3
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 243
    if-gez p1, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 246
    :cond_0
    iget v0, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->len:I

    if-le p2, v0, :cond_1

    .line 247
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 249
    :cond_1
    if-le p1, p2, :cond_2

    .line 250
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 252
    :cond_2
    :goto_0
    if-ge p1, p2, :cond_3

    iget-object v0, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->buffer:[C

    aget-char v0, v0, p1

    invoke-direct {p0, v0}, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 255
    :cond_3
    :goto_1
    if-le p2, p1, :cond_4

    iget-object v0, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->buffer:[C

    add-int/lit8 v1, p2, -0x1

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 258
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 262
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
