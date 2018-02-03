.class public final Lpcap/PacketHeader;
.super Ljava/lang/Object;
.source "pcap.kt"


# instance fields
.field private final includedLen:J

.field private final originalLen:J

.field private final timestampSec:J

.field private final timestampUsec:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 1
    .param p1, "timestampSec"    # J
    .param p3, "timestampUsec"    # J
    .param p5, "includedLen"    # J
    .param p7, "originalLen"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lpcap/PacketHeader;->timestampSec:J

    iput-wide p3, p0, Lpcap/PacketHeader;->timestampUsec:J

    iput-wide p5, p0, Lpcap/PacketHeader;->includedLen:J

    iput-wide p7, p0, Lpcap/PacketHeader;->originalLen:J

    return-void
.end method


# virtual methods
.method public final build()[B
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    move-object v1, v0

    .line 49
    check-cast v1, Ljava/io/OutputStream;

    invoke-virtual {p0, v1}, Lpcap/PacketHeader;->write(Ljava/io/OutputStream;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "out.toByteArray()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lpcap/PacketHeader;

    if-eqz v2, :cond_1

    check-cast p1, Lpcap/PacketHeader;

    iget-wide v2, p0, Lpcap/PacketHeader;->timestampSec:J

    iget-wide v4, p1, Lpcap/PacketHeader;->timestampSec:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lpcap/PacketHeader;->timestampUsec:J

    iget-wide v4, p1, Lpcap/PacketHeader;->timestampUsec:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lpcap/PacketHeader;->includedLen:J

    iget-wide v4, p1, Lpcap/PacketHeader;->includedLen:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    move v2, v1

    :goto_2
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lpcap/PacketHeader;->originalLen:J

    iget-wide v4, p1, Lpcap/PacketHeader;->originalLen:J

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

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget-wide v0, p0, Lpcap/PacketHeader;->timestampSec:J

    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lpcap/PacketHeader;->timestampUsec:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lpcap/PacketHeader;->includedLen:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lpcap/PacketHeader;->originalLen:J

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

    const-string v1, "PacketHeader(timestampSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lpcap/PacketHeader;->timestampSec:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestampUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lpcap/PacketHeader;->timestampUsec:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", includedLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lpcap/PacketHeader;->includedLen:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lpcap/PacketHeader;->originalLen:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-wide v0, p0, Lpcap/PacketHeader;->timestampSec:J

    invoke-static {p1, v0, v1}, Lpcap/PcapKt;->write4Le(Ljava/io/OutputStream;J)V

    .line 42
    iget-wide v0, p0, Lpcap/PacketHeader;->timestampUsec:J

    invoke-static {p1, v0, v1}, Lpcap/PcapKt;->write4Le(Ljava/io/OutputStream;J)V

    .line 43
    iget-wide v0, p0, Lpcap/PacketHeader;->includedLen:J

    invoke-static {p1, v0, v1}, Lpcap/PcapKt;->write4Le(Ljava/io/OutputStream;J)V

    .line 44
    iget-wide v0, p0, Lpcap/PacketHeader;->originalLen:J

    invoke-static {p1, v0, v1}, Lpcap/PcapKt;->write4Le(Ljava/io/OutputStream;J)V

    .line 45
    return-void
.end method
