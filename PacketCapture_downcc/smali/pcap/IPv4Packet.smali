.class public final Lpcap/IPv4Packet;
.super Ljava/lang/Object;
.source "protocol.kt"

# interfaces
.implements Lpcap/Builder;


# instance fields
.field private final data:Lpcap/IPPayloadBuilder;

.field private final dscpEcn:I

.field private final dstIp32:J

.field private final flags4:I

.field private final fragmentOffset12:I

.field private final headerWords4:I

.field private final identification16:I

.field private final protocol8:Lpcap/IPProtocol;

.field private final srcIp32:J

.field private final ttl8:I

.field private final version4:I


# direct methods
.method public constructor <init>(IIIIIIILpcap/IPProtocol;JJLpcap/IPPayloadBuilder;)V
    .locals 1
    .param p1, "version4"    # I
    .param p2, "headerWords4"    # I
    .param p3, "dscpEcn"    # I
    .param p4, "identification16"    # I
    .param p5, "flags4"    # I
    .param p6, "fragmentOffset12"    # I
    .param p7, "ttl8"    # I
    .param p8, "protocol8"    # Lpcap/IPProtocol;
    .param p9, "srcIp32"    # J
    .param p11, "dstIp32"    # J
    .param p13, "data"    # Lpcap/IPPayloadBuilder;

    .prologue
    const-string v0, "protocol8"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpcap/IPv4Packet;->version4:I

    iput p2, p0, Lpcap/IPv4Packet;->headerWords4:I

    iput p3, p0, Lpcap/IPv4Packet;->dscpEcn:I

    iput p4, p0, Lpcap/IPv4Packet;->identification16:I

    iput p5, p0, Lpcap/IPv4Packet;->flags4:I

    iput p6, p0, Lpcap/IPv4Packet;->fragmentOffset12:I

    iput p7, p0, Lpcap/IPv4Packet;->ttl8:I

    iput-object p8, p0, Lpcap/IPv4Packet;->protocol8:Lpcap/IPProtocol;

    iput-wide p9, p0, Lpcap/IPv4Packet;->srcIp32:J

    iput-wide p11, p0, Lpcap/IPv4Packet;->dstIp32:J

    iput-object p13, p0, Lpcap/IPv4Packet;->data:Lpcap/IPPayloadBuilder;

    return-void
.end method

.method public synthetic constructor <init>(IIIIIIILpcap/IPProtocol;JJLpcap/IPPayloadBuilder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    .prologue
    and-int/lit8 v0, p14, 0x1

    if-eqz v0, :cond_5

    .line 38
    const/4 v2, 0x4

    :goto_0
    and-int/lit8 v0, p14, 0x2

    if-eqz v0, :cond_4

    .line 39
    const/4 v3, 0x5

    :goto_1
    and-int/lit8 v0, p14, 0x4

    if-eqz v0, :cond_3

    .line 40
    const/4 v4, 0x0

    :goto_2
    and-int/lit8 v0, p14, 0x10

    if-eqz v0, :cond_2

    .line 42
    const/4 v6, 0x0

    :goto_3
    and-int/lit8 v0, p14, 0x20

    if-eqz v0, :cond_1

    .line 43
    const/4 v7, 0x0

    :goto_4
    and-int/lit8 v0, p14, 0x40

    if-eqz v0, :cond_0

    .line 44
    const/16 v8, 0x40

    :goto_5
    move-object v1, p0

    move/from16 v5, p4

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lpcap/IPv4Packet;-><init>(IIIIIIILpcap/IPProtocol;JJLpcap/IPPayloadBuilder;)V

    return-void

    :cond_0
    move/from16 v8, p7

    goto :goto_5

    :cond_1
    move/from16 v7, p6

    goto :goto_4

    :cond_2
    move/from16 v6, p5

    goto :goto_3

    :cond_3
    move/from16 v4, p3

    goto :goto_2

    :cond_4
    move/from16 v3, p2

    goto :goto_1

    :cond_5
    move/from16 v2, p1

    goto :goto_0
.end method


# virtual methods
.method public build()[B
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 51
    iget-object v5, p0, Lpcap/IPv4Packet;->data:Lpcap/IPPayloadBuilder;

    iget-wide v6, p0, Lpcap/IPv4Packet;->srcIp32:J

    iget-wide v8, p0, Lpcap/IPv4Packet;->dstIp32:J

    invoke-interface {v5, v6, v7, v8, v9}, Lpcap/IPPayloadBuilder;->build(JJ)[B

    move-result-object v0

    .line 53
    .local v0, "body":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    .local v1, "data":Ljava/io/ByteArrayOutputStream;
    iget v5, p0, Lpcap/IPv4Packet;->version4:I

    shl-int/lit8 v5, v5, 0x4

    iget v6, p0, Lpcap/IPv4Packet;->headerWords4:I

    or-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    iget v5, p0, Lpcap/IPv4Packet;->dscpEcn:I

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 56
    array-length v5, v0

    add-int/lit8 v4, v5, 0x14

    .local v4, "totalLength16":I
    move-object v5, v1

    .line 57
    check-cast v5, Ljava/io/OutputStream;

    invoke-static {v5, v4}, Lpcap/ProtocolKt;->write2(Ljava/io/OutputStream;I)V

    move-object v5, v1

    .line 58
    check-cast v5, Ljava/io/OutputStream;

    iget v6, p0, Lpcap/IPv4Packet;->identification16:I

    invoke-static {v5, v6}, Lpcap/ProtocolKt;->write2(Ljava/io/OutputStream;I)V

    .line 59
    iget v5, p0, Lpcap/IPv4Packet;->flags4:I

    shl-int/lit8 v5, v5, 0xd

    iget v6, p0, Lpcap/IPv4Packet;->fragmentOffset12:I

    shr-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 60
    iget v5, p0, Lpcap/IPv4Packet;->fragmentOffset12:I

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 61
    iget v5, p0, Lpcap/IPv4Packet;->ttl8:I

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 62
    iget-object v5, p0, Lpcap/IPv4Packet;->protocol8:Lpcap/IPProtocol;

    invoke-virtual {v5}, Lpcap/IPProtocol;->getNumber()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object v5, v1

    .line 63
    check-cast v5, Ljava/io/OutputStream;

    invoke-static {v5, v10}, Lpcap/ProtocolKt;->write2(Ljava/io/OutputStream;I)V

    move-object v5, v1

    .line 64
    check-cast v5, Ljava/io/OutputStream;

    iget-wide v6, p0, Lpcap/IPv4Packet;->srcIp32:J

    invoke-static {v5, v6, v7}, Lpcap/ProtocolKt;->write4(Ljava/io/OutputStream;J)V

    move-object v5, v1

    .line 65
    check-cast v5, Ljava/io/OutputStream;

    iget-wide v6, p0, Lpcap/IPv4Packet;->dstIp32:J

    invoke-static {v5, v6, v7}, Lpcap/ProtocolKt;->write4(Ljava/io/OutputStream;J)V

    .line 67
    const/4 v5, 0x1

    new-array v5, v5, [[B

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const-string v7, "data.toByteArray()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v5, v10

    invoke-static {v5}, Lpcap/ProtocolKt;->checksum([[B)I

    move-result v3

    .line 69
    .local v3, "sum":I
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 71
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 72
    .local v2, "ret":[B
    const/16 v5, 0xa

    ushr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 73
    const/16 v5, 0xb

    int-to-byte v6, v3

    aput-byte v6, v2, v5

    .line 75
    const-string v5, "ret"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lpcap/IPv4Packet;

    if-eqz v2, :cond_1

    check-cast p1, Lpcap/IPv4Packet;

    iget v2, p0, Lpcap/IPv4Packet;->version4:I

    iget v3, p1, Lpcap/IPv4Packet;->version4:I

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget v2, p0, Lpcap/IPv4Packet;->headerWords4:I

    iget v3, p1, Lpcap/IPv4Packet;->headerWords4:I

    if-ne v2, v3, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    iget v2, p0, Lpcap/IPv4Packet;->dscpEcn:I

    iget v3, p1, Lpcap/IPv4Packet;->dscpEcn:I

    if-ne v2, v3, :cond_4

    move v2, v1

    :goto_2
    if-eqz v2, :cond_1

    iget v2, p0, Lpcap/IPv4Packet;->identification16:I

    iget v3, p1, Lpcap/IPv4Packet;->identification16:I

    if-ne v2, v3, :cond_5

    move v2, v1

    :goto_3
    if-eqz v2, :cond_1

    iget v2, p0, Lpcap/IPv4Packet;->flags4:I

    iget v3, p1, Lpcap/IPv4Packet;->flags4:I

    if-ne v2, v3, :cond_6

    move v2, v1

    :goto_4
    if-eqz v2, :cond_1

    iget v2, p0, Lpcap/IPv4Packet;->fragmentOffset12:I

    iget v3, p1, Lpcap/IPv4Packet;->fragmentOffset12:I

    if-ne v2, v3, :cond_7

    move v2, v1

    :goto_5
    if-eqz v2, :cond_1

    iget v2, p0, Lpcap/IPv4Packet;->ttl8:I

    iget v3, p1, Lpcap/IPv4Packet;->ttl8:I

    if-ne v2, v3, :cond_8

    move v2, v1

    :goto_6
    if-eqz v2, :cond_1

    iget-object v2, p0, Lpcap/IPv4Packet;->protocol8:Lpcap/IPProtocol;

    iget-object v3, p1, Lpcap/IPv4Packet;->protocol8:Lpcap/IPProtocol;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lpcap/IPv4Packet;->srcIp32:J

    iget-wide v4, p1, Lpcap/IPv4Packet;->srcIp32:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    move v2, v1

    :goto_7
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lpcap/IPv4Packet;->dstIp32:J

    iget-wide v4, p1, Lpcap/IPv4Packet;->dstIp32:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    move v2, v1

    :goto_8
    if-eqz v2, :cond_1

    iget-object v2, p0, Lpcap/IPv4Packet;->data:Lpcap/IPPayloadBuilder;

    iget-object v3, p1, Lpcap/IPv4Packet;->data:Lpcap/IPPayloadBuilder;

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

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget v0, p0, Lpcap/IPv4Packet;->version4:I

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lpcap/IPv4Packet;->headerWords4:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lpcap/IPv4Packet;->dscpEcn:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lpcap/IPv4Packet;->identification16:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lpcap/IPv4Packet;->flags4:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lpcap/IPv4Packet;->fragmentOffset12:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lpcap/IPv4Packet;->ttl8:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lpcap/IPv4Packet;->protocol8:Lpcap/IPProtocol;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lpcap/IPv4Packet;->srcIp32:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lpcap/IPv4Packet;->dstIp32:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lpcap/IPv4Packet;->data:Lpcap/IPPayloadBuilder;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPv4Packet(version4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpcap/IPv4Packet;->version4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headerWords4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpcap/IPv4Packet;->headerWords4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dscpEcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpcap/IPv4Packet;->dscpEcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", identification16="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpcap/IPv4Packet;->identification16:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpcap/IPv4Packet;->flags4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fragmentOffset12="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpcap/IPv4Packet;->fragmentOffset12:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ttl8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpcap/IPv4Packet;->ttl8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", protocol8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpcap/IPv4Packet;->protocol8:Lpcap/IPProtocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", srcIp32="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lpcap/IPv4Packet;->srcIp32:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dstIp32="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lpcap/IPv4Packet;->dstIp32:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpcap/IPv4Packet;->data:Lpcap/IPPayloadBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
