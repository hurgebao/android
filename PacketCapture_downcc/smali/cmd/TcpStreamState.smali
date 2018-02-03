.class public final Lcmd/TcpStreamState;
.super Ljava/lang/Object;
.source "pc2pcap.kt"


# instance fields
.field private lastDir:I

.field private final localIp32:J

.field private localIpId:I

.field private final localMac:[B

.field private final localPort:I

.field private localSeqNo:J

.field private final serverIp32:J

.field private serverIpId:I

.field private final serverMac:[B

.field private final serverPort:I

.field private serverSeqNo:J


# direct methods
.method public constructor <init>(JJIIJJII[B[BI)V
    .locals 3
    .param p1, "serverIp32"    # J
    .param p3, "localIp32"    # J
    .param p5, "serverPort"    # I
    .param p6, "localPort"    # I
    .param p7, "localSeqNo"    # J
    .param p9, "serverSeqNo"    # J
    .param p11, "serverIpId"    # I
    .param p12, "localIpId"    # I
    .param p13, "localMac"    # [B
    .param p14, "serverMac"    # [B
    .param p15, "lastDir"    # I

    .prologue
    const-string v1, "localMac"

    move-object/from16 v0, p13

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "serverMac"

    move-object/from16 v0, p14

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcmd/TcpStreamState;->serverIp32:J

    iput-wide p3, p0, Lcmd/TcpStreamState;->localIp32:J

    iput p5, p0, Lcmd/TcpStreamState;->serverPort:I

    iput p6, p0, Lcmd/TcpStreamState;->localPort:I

    iput-wide p7, p0, Lcmd/TcpStreamState;->localSeqNo:J

    iput-wide p9, p0, Lcmd/TcpStreamState;->serverSeqNo:J

    iput p11, p0, Lcmd/TcpStreamState;->serverIpId:I

    iput p12, p0, Lcmd/TcpStreamState;->localIpId:I

    move-object/from16 v0, p13

    iput-object v0, p0, Lcmd/TcpStreamState;->localMac:[B

    move-object/from16 v0, p14

    iput-object v0, p0, Lcmd/TcpStreamState;->serverMac:[B

    move/from16 v0, p15

    iput v0, p0, Lcmd/TcpStreamState;->lastDir:I

    return-void
.end method

.method public synthetic constructor <init>(JJIIJJII[B[BIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    .prologue
    and-int/lit8 v2, p16, 0x10

    if-eqz v2, :cond_4

    .line 62
    const-wide/16 v10, 0x0

    :goto_0
    and-int/lit8 v2, p16, 0x20

    if-eqz v2, :cond_3

    .line 63
    const-wide/16 v12, 0x0

    :goto_1
    and-int/lit8 v2, p16, 0x40

    if-eqz v2, :cond_2

    .line 64
    const/4 v14, 0x0

    :goto_2
    move/from16 v0, p16

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    .line 65
    const/4 v15, 0x0

    :goto_3
    move/from16 v0, p16

    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_0

    .line 68
    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_APP2SERVER()B

    move-result v18

    :goto_4
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    invoke-direct/range {v3 .. v18}, Lcmd/TcpStreamState;-><init>(JJIIJJII[B[BI)V

    return-void

    :cond_0
    move/from16 v18, p15

    goto :goto_4

    :cond_1
    move/from16 v15, p12

    goto :goto_3

    :cond_2
    move/from16 v14, p11

    goto :goto_2

    :cond_3
    move-wide/from16 v12, p9

    goto :goto_1

    :cond_4
    move-wide/from16 v10, p7

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcmd/TcpStreamState;

    if-eqz v2, :cond_1

    check-cast p1, Lcmd/TcpStreamState;

    iget-wide v2, p0, Lcmd/TcpStreamState;->serverIp32:J

    iget-wide v4, p1, Lcmd/TcpStreamState;->serverIp32:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcmd/TcpStreamState;->localIp32:J

    iget-wide v4, p1, Lcmd/TcpStreamState;->localIp32:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    iget v2, p0, Lcmd/TcpStreamState;->serverPort:I

    iget v3, p1, Lcmd/TcpStreamState;->serverPort:I

    if-ne v2, v3, :cond_4

    move v2, v1

    :goto_2
    if-eqz v2, :cond_1

    iget v2, p0, Lcmd/TcpStreamState;->localPort:I

    iget v3, p1, Lcmd/TcpStreamState;->localPort:I

    if-ne v2, v3, :cond_5

    move v2, v1

    :goto_3
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcmd/TcpStreamState;->localSeqNo:J

    iget-wide v4, p1, Lcmd/TcpStreamState;->localSeqNo:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    move v2, v1

    :goto_4
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcmd/TcpStreamState;->serverSeqNo:J

    iget-wide v4, p1, Lcmd/TcpStreamState;->serverSeqNo:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    move v2, v1

    :goto_5
    if-eqz v2, :cond_1

    iget v2, p0, Lcmd/TcpStreamState;->serverIpId:I

    iget v3, p1, Lcmd/TcpStreamState;->serverIpId:I

    if-ne v2, v3, :cond_8

    move v2, v1

    :goto_6
    if-eqz v2, :cond_1

    iget v2, p0, Lcmd/TcpStreamState;->localIpId:I

    iget v3, p1, Lcmd/TcpStreamState;->localIpId:I

    if-ne v2, v3, :cond_9

    move v2, v1

    :goto_7
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcmd/TcpStreamState;->localMac:[B

    iget-object v3, p1, Lcmd/TcpStreamState;->localMac:[B

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcmd/TcpStreamState;->serverMac:[B

    iget-object v3, p1, Lcmd/TcpStreamState;->serverMac:[B

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcmd/TcpStreamState;->lastDir:I

    iget v3, p1, Lcmd/TcpStreamState;->lastDir:I

    if-ne v2, v3, :cond_a

    move v2, v1

    :goto_8
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

    :cond_8
    move v2, v0

    goto :goto_6

    :cond_9
    move v2, v0

    goto :goto_7

    :cond_a
    move v2, v0

    goto :goto_8
.end method

.method public final getLastDir()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcmd/TcpStreamState;->lastDir:I

    return v0
.end method

.method public final getLocalIp32()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcmd/TcpStreamState;->localIp32:J

    return-wide v0
.end method

.method public final getLocalIpId()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcmd/TcpStreamState;->localIpId:I

    return v0
.end method

.method public final getLocalMac()[B
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcmd/TcpStreamState;->localMac:[B

    return-object v0
.end method

.method public final getLocalPort()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcmd/TcpStreamState;->localPort:I

    return v0
.end method

.method public final getLocalSeqNo()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcmd/TcpStreamState;->localSeqNo:J

    return-wide v0
.end method

.method public final getServerIp32()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcmd/TcpStreamState;->serverIp32:J

    return-wide v0
.end method

.method public final getServerIpId()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcmd/TcpStreamState;->serverIpId:I

    return v0
.end method

.method public final getServerMac()[B
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcmd/TcpStreamState;->serverMac:[B

    return-object v0
.end method

.method public final getServerPort()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcmd/TcpStreamState;->serverPort:I

    return v0
.end method

.method public final getServerSeqNo()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcmd/TcpStreamState;->serverSeqNo:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    const/4 v1, 0x0

    const/16 v6, 0x20

    iget-wide v2, p0, Lcmd/TcpStreamState;->serverIp32:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcmd/TcpStreamState;->localIp32:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcmd/TcpStreamState;->serverPort:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcmd/TcpStreamState;->localPort:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcmd/TcpStreamState;->localSeqNo:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcmd/TcpStreamState;->serverSeqNo:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcmd/TcpStreamState;->serverIpId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcmd/TcpStreamState;->localIpId:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcmd/TcpStreamState;->localMac:[B

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcmd/TcpStreamState;->serverMac:[B

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcmd/TcpStreamState;->lastDir:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final setLastDir(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 68
    iput p1, p0, Lcmd/TcpStreamState;->lastDir:I

    return-void
.end method

.method public final setLocalIpId(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 65
    iput p1, p0, Lcmd/TcpStreamState;->localIpId:I

    return-void
.end method

.method public final setLocalSeqNo(J)V
    .locals 1
    .param p1, "<set-?>"    # J

    .prologue
    .line 62
    iput-wide p1, p0, Lcmd/TcpStreamState;->localSeqNo:J

    return-void
.end method

.method public final setServerIpId(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 64
    iput p1, p0, Lcmd/TcpStreamState;->serverIpId:I

    return-void
.end method

.method public final setServerSeqNo(J)V
    .locals 1
    .param p1, "<set-?>"    # J

    .prologue
    .line 63
    iput-wide p1, p0, Lcmd/TcpStreamState;->serverSeqNo:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TcpStreamState(serverIp32="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcmd/TcpStreamState;->serverIp32:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localIp32="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcmd/TcpStreamState;->localIp32:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcmd/TcpStreamState;->serverPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcmd/TcpStreamState;->localPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localSeqNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcmd/TcpStreamState;->localSeqNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverSeqNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcmd/TcpStreamState;->serverSeqNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverIpId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcmd/TcpStreamState;->serverIpId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localIpId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcmd/TcpStreamState;->localIpId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localMac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcmd/TcpStreamState;->localMac:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverMac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcmd/TcpStreamState;->serverMac:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcmd/TcpStreamState;->lastDir:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
