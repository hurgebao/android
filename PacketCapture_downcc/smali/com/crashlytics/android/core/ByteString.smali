.class final Lcom/crashlytics/android/core/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"


# static fields
.field public static final EMPTY:Lcom/crashlytics/android/core/ByteString;


# instance fields
.field private final bytes:[B

.field private volatile hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/crashlytics/android/core/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    sput-object v0, Lcom/crashlytics/android/core/ByteString;->EMPTY:Lcom/crashlytics/android/core/ByteString;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lcom/crashlytics/android/core/ByteString;->hash:I

    .line 53
    iput-object p1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    .line 54
    return-void
.end method

.method public static copyFrom([BII)Lcom/crashlytics/android/core/ByteString;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .prologue
    .line 92
    new-array v0, p2, [B

    .line 93
    .local v0, "copy":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    new-instance v1, Lcom/crashlytics/android/core/ByteString;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    new-instance v1, Lcom/crashlytics/android/core/ByteString;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public copyTo([BIII)V
    .locals 1
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "size"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 254
    if-ne p1, p0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v5

    .line 258
    :cond_1
    instance-of v7, p1, Lcom/crashlytics/android/core/ByteString;

    if-nez v7, :cond_2

    move v5, v6

    .line 259
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 262
    check-cast v1, Lcom/crashlytics/android/core/ByteString;

    .line 263
    .local v1, "other":Lcom/crashlytics/android/core/ByteString;
    iget-object v7, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v3, v7

    .line 264
    .local v3, "size":I
    iget-object v7, v1, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v7, v7

    if-eq v3, v7, :cond_3

    move v5, v6

    .line 265
    goto :goto_0

    .line 268
    :cond_3
    iget-object v4, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    .line 269
    .local v4, "thisBytes":[B
    iget-object v2, v1, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    .line 270
    .local v2, "otherBytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 271
    aget-byte v7, v4, v0

    aget-byte v8, v2, v0

    if-eq v7, v8, :cond_4

    move v5, v6

    .line 272
    goto :goto_0

    .line 270
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 283
    iget v0, p0, Lcom/crashlytics/android/core/ByteString;->hash:I

    .line 285
    .local v0, "h":I
    if-nez v0, :cond_2

    .line 286
    iget-object v3, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    .line 287
    .local v3, "thisBytes":[B
    iget-object v4, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v2, v4

    .line 289
    .local v2, "size":I
    move v0, v2

    .line 290
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 291
    mul-int/lit8 v4, v0, 0x1f

    aget-byte v5, v3, v1

    add-int v0, v4, v5

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    :cond_0
    if-nez v0, :cond_1

    .line 294
    const/4 v0, 0x1

    .line 297
    :cond_1
    iput v0, p0, Lcom/crashlytics/android/core/ByteString;->hash:I

    .line 300
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "thisBytes":[B
    :cond_2
    return v0
.end method

.method public newInput()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 310
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method
