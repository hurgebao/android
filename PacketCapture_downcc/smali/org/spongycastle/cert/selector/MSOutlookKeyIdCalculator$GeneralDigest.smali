.class abstract Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;
.super Ljava/lang/Object;
.source "MSOutlookKeyIdCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "GeneralDigest"
.end annotation


# instance fields
.field private byteCount:J

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    .line 51
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    .prologue
    .line 129
    iget-wide v2, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    const/4 v4, 0x3

    shl-long v0, v2, v4

    .line 134
    .local v0, "bitLength":J
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->update(B)V

    .line 136
    :goto_0
    iget v2, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_0

    .line 138
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->update(B)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->processLength(J)V

    .line 143
    invoke-virtual {p0}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->processBlock()V

    .line 144
    return-void
.end method

.method protected abstract processBlock()V
.end method

.method protected abstract processLength(J)V
.end method

.method protected abstract processWord([BI)V
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    .line 150
    iput v4, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v1, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    aput-byte v4, v1, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    iget v1, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 78
    iget v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    iget-object v1, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    invoke-virtual {p0, v0, v3}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->processWord([BI)V

    .line 81
    iput v3, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    .line 84
    :cond_0
    iget-wide v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    .line 85
    return-void
.end method

.method public update([BII)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 95
    :goto_0
    iget v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 97
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->update(B)V

    .line 99
    add-int/lit8 p2, p2, 0x1

    .line 100
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 106
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v0, v0

    if-le p3, v0, :cond_1

    .line 108
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->processWord([BI)V

    .line 110
    iget-object v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 111
    iget-object v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 112
    iget-wide v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    iget-object v2, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    goto :goto_1

    .line 118
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 120
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->update(B)V

    .line 122
    add-int/lit8 p2, p2, 0x1

    .line 123
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 125
    :cond_2
    return-void
.end method
