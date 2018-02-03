.class public final Lcapt/CaptHeader;
.super Ljava/lang/Object;
.source "Capt.kt"


# instance fields
.field private final bodyOffset:J

.field private final dir:I

.field private final size:J

.field private final time:J


# direct methods
.method public constructor <init>(JIJJ)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "dir"    # I
    .param p4, "size"    # J
    .param p6, "bodyOffset"    # J

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcapt/CaptHeader;->time:J

    iput p3, p0, Lcapt/CaptHeader;->dir:I

    iput-wide p4, p0, Lcapt/CaptHeader;->size:J

    iput-wide p6, p0, Lcapt/CaptHeader;->bodyOffset:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcapt/CaptHeader;

    if-eqz v2, :cond_1

    check-cast p1, Lcapt/CaptHeader;

    iget-wide v2, p0, Lcapt/CaptHeader;->time:J

    iget-wide v4, p1, Lcapt/CaptHeader;->time:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget v2, p0, Lcapt/CaptHeader;->dir:I

    iget v3, p1, Lcapt/CaptHeader;->dir:I

    if-ne v2, v3, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcapt/CaptHeader;->size:J

    iget-wide v4, p1, Lcapt/CaptHeader;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    move v2, v1

    :goto_2
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcapt/CaptHeader;->bodyOffset:J

    iget-wide v4, p1, Lcapt/CaptHeader;->bodyOffset:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    move v2, v1

    :goto_3
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_3
.end method

.method public final getBodyOffset()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcapt/CaptHeader;->bodyOffset:J

    return-wide v0
.end method

.method public final getDir()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcapt/CaptHeader;->dir:I

    return v0
.end method

.method public final getSize()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcapt/CaptHeader;->size:J

    return-wide v0
.end method

.method public final getTime()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcapt/CaptHeader;->time:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget-wide v0, p0, Lcapt/CaptHeader;->time:J

    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcapt/CaptHeader;->dir:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcapt/CaptHeader;->size:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcapt/CaptHeader;->bodyOffset:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptHeader(time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcapt/CaptHeader;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcapt/CaptHeader;->dir:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcapt/CaptHeader;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bodyOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcapt/CaptHeader;->bodyOffset:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
