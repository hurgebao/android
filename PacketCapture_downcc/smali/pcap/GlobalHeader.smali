.class public final Lpcap/GlobalHeader;
.super Ljava/lang/Object;
.source "pcap.kt"


# instance fields
.field private final dataLinkType:Lpcap/LinkType;

.field private final magicNumber:J

.field private final major:I

.field private final minor:I

.field private final sigFigs:J

.field private final snapLen:J

.field private final zone:J


# direct methods
.method public constructor <init>()V
    .locals 15

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/16 v13, 0x7f

    move-object v1, p0

    move v5, v4

    move-wide v6, v2

    move-wide v8, v2

    move-wide v10, v2

    move-object v14, v12

    invoke-direct/range {v1 .. v14}, Lpcap/GlobalHeader;-><init>(JIIJJJLpcap/LinkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JIIJJJLpcap/LinkType;)V
    .locals 1
    .param p1, "magicNumber"    # J
    .param p3, "major"    # I
    .param p4, "minor"    # I
    .param p5, "zone"    # J
    .param p7, "sigFigs"    # J
    .param p9, "snapLen"    # J
    .param p11, "dataLinkType"    # Lpcap/LinkType;

    .prologue
    const-string v0, "dataLinkType"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lpcap/GlobalHeader;->magicNumber:J

    iput p3, p0, Lpcap/GlobalHeader;->major:I

    iput p4, p0, Lpcap/GlobalHeader;->minor:I

    iput-wide p5, p0, Lpcap/GlobalHeader;->zone:J

    iput-wide p7, p0, Lpcap/GlobalHeader;->sigFigs:J

    iput-wide p9, p0, Lpcap/GlobalHeader;->snapLen:J

    iput-object p11, p0, Lpcap/GlobalHeader;->dataLinkType:Lpcap/LinkType;

    return-void
.end method

.method public synthetic constructor <init>(JIIJJJLpcap/LinkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    .prologue
    and-int/lit8 v0, p12, 0x1

    if-eqz v0, :cond_6

    .line 10
    const-wide v2, 0xa1b2c3d4L

    :goto_0
    and-int/lit8 v0, p12, 0x2

    if-eqz v0, :cond_5

    .line 11
    const/4 v4, 0x2

    :goto_1
    and-int/lit8 v0, p12, 0x4

    if-eqz v0, :cond_4

    .line 12
    const/4 v5, 0x4

    :goto_2
    and-int/lit8 v0, p12, 0x8

    if-eqz v0, :cond_3

    .line 13
    const-wide/16 v6, 0x0

    :goto_3
    and-int/lit8 v0, p12, 0x10

    if-eqz v0, :cond_2

    .line 14
    const-wide/16 v8, 0x0

    :goto_4
    and-int/lit8 v0, p12, 0x20

    if-eqz v0, :cond_1

    .line 15
    const-wide/32 v10, 0xffff

    :goto_5
    and-int/lit8 v0, p12, 0x40

    if-eqz v0, :cond_0

    .line 16
    sget-object v12, Lpcap/LinkType;->LINKTYPE_ETHERNET:Lpcap/LinkType;

    :goto_6
    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lpcap/GlobalHeader;-><init>(JIIJJJLpcap/LinkType;)V

    return-void

    :cond_0
    move-object/from16 v12, p11

    goto :goto_6

    :cond_1
    move-wide/from16 v10, p9

    goto :goto_5

    :cond_2
    move-wide/from16 v8, p7

    goto :goto_4

    :cond_3
    move-wide/from16 v6, p5

    goto :goto_3

    :cond_4
    move/from16 v5, p4

    goto :goto_2

    :cond_5
    move/from16 v4, p3

    goto :goto_1

    :cond_6
    move-wide v2, p1

    goto :goto_0
.end method


# virtual methods
.method public final build()[B
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    move-object v1, v0

    .line 30
    check-cast v1, Ljava/io/OutputStream;

    invoke-virtual {p0, v1}, Lpcap/GlobalHeader;->write(Ljava/io/OutputStream;)V

    .line 31
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

    instance-of v2, p1, Lpcap/GlobalHeader;

    if-eqz v2, :cond_1

    check-cast p1, Lpcap/GlobalHeader;

    iget-wide v2, p0, Lpcap/GlobalHeader;->magicNumber:J

    iget-wide v4, p1, Lpcap/GlobalHeader;->magicNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget v2, p0, Lpcap/GlobalHeader;->major:I

    iget v3, p1, Lpcap/GlobalHeader;->major:I

    if-ne v2, v3, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    iget v2, p0, Lpcap/GlobalHeader;->minor:I

    iget v3, p1, Lpcap/GlobalHeader;->minor:I

    if-ne v2, v3, :cond_4

    move v2, v1

    :goto_2
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lpcap/GlobalHeader;->zone:J

    iget-wide v4, p1, Lpcap/GlobalHeader;->zone:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    move v2, v1

    :goto_3
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lpcap/GlobalHeader;->sigFigs:J

    iget-wide v4, p1, Lpcap/GlobalHeader;->sigFigs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    move v2, v1

    :goto_4
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lpcap/GlobalHeader;->snapLen:J

    iget-wide v4, p1, Lpcap/GlobalHeader;->snapLen:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    move v2, v1

    :goto_5
    if-eqz v2, :cond_1

    iget-object v2, p0, Lpcap/GlobalHeader;->dataLinkType:Lpcap/LinkType;

    iget-object v3, p1, Lpcap/GlobalHeader;->dataLinkType:Lpcap/LinkType;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

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

    :cond_6
    move v2, v0

    goto :goto_4

    :cond_7
    move v2, v0

    goto :goto_5
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget-wide v0, p0, Lpcap/GlobalHeader;->magicNumber:J

    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpcap/GlobalHeader;->major:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpcap/GlobalHeader;->minor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lpcap/GlobalHeader;->zone:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lpcap/GlobalHeader;->sigFigs:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lpcap/GlobalHeader;->snapLen:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lpcap/GlobalHeader;->dataLinkType:Lpcap/LinkType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlobalHeader(magicNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lpcap/GlobalHeader;->magicNumber:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", major="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpcap/GlobalHeader;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpcap/GlobalHeader;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lpcap/GlobalHeader;->zone:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sigFigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lpcap/GlobalHeader;->sigFigs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", snapLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lpcap/GlobalHeader;->snapLen:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataLinkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpcap/GlobalHeader;->dataLinkType:Lpcap/LinkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 19
    iget-wide v0, p0, Lpcap/GlobalHeader;->magicNumber:J

    invoke-static {p1, v0, v1}, Lpcap/PcapKt;->write4Le(Ljava/io/OutputStream;J)V

    .line 20
    iget v0, p0, Lpcap/GlobalHeader;->major:I

    invoke-static {p1, v0}, Lpcap/PcapKt;->write2Le(Ljava/io/OutputStream;I)V

    .line 21
    iget v0, p0, Lpcap/GlobalHeader;->minor:I

    invoke-static {p1, v0}, Lpcap/PcapKt;->write2Le(Ljava/io/OutputStream;I)V

    .line 22
    iget-wide v0, p0, Lpcap/GlobalHeader;->zone:J

    invoke-static {p1, v0, v1}, Lpcap/PcapKt;->write4Le(Ljava/io/OutputStream;J)V

    .line 23
    iget-wide v0, p0, Lpcap/GlobalHeader;->sigFigs:J

    invoke-static {p1, v0, v1}, Lpcap/PcapKt;->write4Le(Ljava/io/OutputStream;J)V

    .line 24
    iget-wide v0, p0, Lpcap/GlobalHeader;->snapLen:J

    invoke-static {p1, v0, v1}, Lpcap/PcapKt;->write4Le(Ljava/io/OutputStream;J)V

    .line 25
    iget-object v0, p0, Lpcap/GlobalHeader;->dataLinkType:Lpcap/LinkType;

    invoke-virtual {v0}, Lpcap/LinkType;->getType()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lpcap/PcapKt;->write4Le(Ljava/io/OutputStream;J)V

    .line 26
    return-void
.end method
