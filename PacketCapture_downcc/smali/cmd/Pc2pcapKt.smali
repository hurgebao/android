.class public final Lcmd/Pc2pcapKt;
.super Ljava/lang/Object;
.source "pc2pcap.kt"


# direct methods
.method public static final convertCaptToPcap(Ljava/io/File;Ljava/io/OutputStream;JI)V
    .locals 28
    .param p0, "captFile"    # Ljava/io/File;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "serverIp32"    # J
    .param p4, "serverPort"    # I

    .prologue
    const-string v4, "captFile"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "out"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v24, Lcapt/CaptReader;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcapt/CaptReader;-><init>(Ljava/io/File;)V

    .line 15
    .local v24, "reader":Lcapt/CaptReader;
    invoke-virtual/range {v24 .. v24}, Lcapt/CaptReader;->readHeaders()Ljava/util/ArrayList;

    move-result-object v22

    .line 17
    .local v22, "captHeaders":Ljava/util/ArrayList;
    new-instance v3, Lpcap/GlobalHeader;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x7f

    const/16 v16, 0x0

    invoke-direct/range {v3 .. v16}, Lpcap/GlobalHeader;-><init>(JIIJJJLpcap/LinkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3}, Lpcap/GlobalHeader;->build()[B

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 19
    new-instance v3, Lcmd/TcpStreamState;

    const-wide/32 v6, -0x3f57fff6

    const/16 v9, 0x7ffb

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v4, 0x6

    new-array v0, v4, [B

    move-object/from16 v17, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-byte v5, v17, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-byte v5, v17, v4

    const/4 v4, 0x2

    const/16 v5, 0xc

    aput-byte v5, v17, v4

    const/4 v4, 0x3

    const/16 v5, 0x18

    shr-long v18, p2, v5

    move-wide/from16 v0, v18

    long-to-int v5, v0

    int-to-byte v5, v5

    aput-byte v5, v17, v4

    const/4 v4, 0x4

    const/16 v5, 0x10

    shr-long v18, p2, v5

    move-wide/from16 v0, v18

    long-to-int v5, v0

    int-to-byte v5, v5

    aput-byte v5, v17, v4

    const/4 v4, 0x5

    const/16 v5, 0x8

    shr-long v18, p2, v5

    move-wide/from16 v0, v18

    long-to-int v5, v0

    int-to-byte v5, v5

    aput-byte v5, v17, v4

    const/4 v4, 0x6

    new-array v0, v4, [B

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    const/16 v18, 0x0

    const/16 v19, 0x4f0

    const/16 v20, 0x0

    move-wide/from16 v4, p2

    move/from16 v8, p4

    invoke-direct/range {v3 .. v20}, Lcmd/TcpStreamState;-><init>(JJIIJJII[B[BIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .local v3, "state":Lcmd/TcpStreamState;
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 34
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcapt/CaptHeader;

    invoke-virtual {v4}, Lcapt/CaptHeader;->getTime()J

    move-result-wide v4

    const/4 v6, 0x1

    int-to-long v6, v6

    sub-long/2addr v4, v6

    move-object/from16 v0, p1

    invoke-static {v4, v5, v3, v0}, Lcmd/Pc2pcapKt;->writeTcpHandshake(JLcmd/TcpStreamState;Ljava/io/OutputStream;)V

    .line 37
    :cond_0
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcapt/CaptHeader;

    .line 38
    .local v21, "captHeader":Lcapt/CaptHeader;
    const-string v5, "captHeader"

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcapt/CaptReader;->readBody(Lcapt/CaptHeader;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 40
    .local v2, "body":[B
    const/16 v23, 0x0

    .line 41
    .local v23, "offset":I
    :goto_0
    array-length v5, v2

    move/from16 v0, v23

    if-ge v0, v5, :cond_1

    .line 42
    array-length v5, v2

    sub-int v25, v5, v23

    .line 43
    .local v25, "remain":I
    const/16 v5, 0x578

    move/from16 v0, v25

    if-le v0, v5, :cond_2

    const/16 v26, 0x578

    .line 45
    .local v26, "size":I
    :goto_1
    add-int v5, v23, v26

    move/from16 v0, v23

    invoke-static {v2, v0, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v27

    const-string v5, "java.util.Arrays.copyOfR\u2026this, fromIndex, toIndex)"

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .local v27, "slice":[B
    invoke-virtual/range {v21 .. v21}, Lcapt/CaptHeader;->getDir()I

    move-result v5

    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_APP2SERVER()B

    move-result v6

    if-ne v5, v6, :cond_3

    .line 48
    invoke-virtual/range {v21 .. v21}, Lcapt/CaptHeader;->getTime()J

    move-result-wide v6

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v6, v7, v3, v0, v1}, Lcmd/Pc2pcapKt;->writeTcpDataAppToServer(JLcmd/TcpStreamState;Ljava/io/OutputStream;[B)V

    .line 51
    :goto_2
    add-int v23, v23, v26

    .line 41
    goto :goto_0

    .end local v26    # "size":I
    .end local v27    # "slice":[B
    :cond_2
    move/from16 v26, v25

    .line 43
    goto :goto_1

    .line 50
    .restart local v26    # "size":I
    .restart local v27    # "slice":[B
    :cond_3
    invoke-virtual/range {v21 .. v21}, Lcapt/CaptHeader;->getTime()J

    move-result-wide v6

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v6, v7, v3, v0, v1}, Lcmd/Pc2pcapKt;->writeTcpDataServerToApp(JLcmd/TcpStreamState;Ljava/io/OutputStream;[B)V

    goto :goto_2

    .line 56
    .end local v2    # "body":[B
    .end local v21    # "captHeader":Lcapt/CaptHeader;
    .end local v23    # "offset":I
    .end local v25    # "remain":I
    .end local v26    # "size":I
    .end local v27    # "slice":[B
    :cond_4
    return-void

    .line 19
    :array_0
    .array-data 1
        0x0t
        0x9t
        0x2dt
        0x1t
        0x2t
        0x3t
    .end array-data
.end method

.method public static final writeTcpDataAppToServer(JLcmd/TcpStreamState;Ljava/io/OutputStream;[B)V
    .locals 24
    .param p0, "timestamp"    # J
    .param p2, "state"    # Lcmd/TcpStreamState;
    .param p3, "out"    # Ljava/io/OutputStream;
    .param p4, "data"    # [B

    .prologue
    const-string v6, "state"

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "out"

    move-object/from16 v0, p3

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "data"

    move-object/from16 v0, p4

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLastDir()I

    move-result v6

    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_APP2SERVER()B

    move-result v10

    if-ne v6, v10, :cond_0

    .line 193
    const/4 v6, 0x0

    new-array v6, v6, [B

    move-wide/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v6}, Lcmd/Pc2pcapKt;->writeTcpDataServerToApp(JLcmd/TcpStreamState;Ljava/io/OutputStream;[B)V

    .line 196
    :cond_0
    new-instance v5, Lpcap/TCPPacket;

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalPort()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerPort()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalSeqNo()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerSeqNo()J

    move-result-wide v10

    const/4 v12, 0x0

    sget-object v13, Lpcap/TCPPacket;->Companion:Lpcap/TCPPacket$Companion;

    invoke-virtual {v13}, Lpcap/TCPPacket$Companion;->getACK()I

    move-result v14

    move-object/from16 v0, p4

    array-length v13, v0

    if-lez v13, :cond_1

    sget-object v13, Lpcap/TCPPacket;->Companion:Lpcap/TCPPacket$Companion;

    invoke-virtual {v13}, Lpcap/TCPPacket$Companion;->getPUSH()I

    move-result v13

    :goto_0
    or-int/2addr v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0xd0

    const/16 v18, 0x0

    move-object/from16 v16, p4

    invoke-direct/range {v5 .. v18}, Lpcap/TCPPacket;-><init>(IIJJIIII[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 203
    .local v5, "tcp":Lpcap/TCPPacket;
    new-instance v7, Lpcap/IPv4Packet;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalIpId()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Lpcap/IPProtocol;->TCP:Lpcap/IPProtocol;

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalIp32()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerIp32()J

    move-result-wide v18

    move-object/from16 v20, v5

    check-cast v20, Lpcap/IPPayloadBuilder;

    const/16 v21, 0x77

    const/16 v22, 0x0

    invoke-direct/range {v7 .. v22}, Lpcap/IPv4Packet;-><init>(IIIIIIILpcap/IPProtocol;JJLpcap/IPPayloadBuilder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 210
    .local v7, "ip":Lpcap/IPv4Packet;
    new-instance v8, Lpcap/EthernetFrame;

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerMac()[B

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalMac()[B

    move-result-object v10

    const/4 v11, 0x0

    move-object v12, v7

    check-cast v12, Lpcap/Builder;

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lpcap/EthernetFrame;-><init>([B[BLpcap/EtherType;Lpcap/Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 214
    .local v8, "eth":Lpcap/EthernetFrame;
    invoke-virtual {v8}, Lpcap/EthernetFrame;->build()[B

    move-result-object v4

    .line 216
    .local v4, "packet":[B
    new-instance v9, Lpcap/PacketHeader;

    const/16 v6, 0x3e8

    int-to-long v10, v6

    div-long v10, p0, v10

    const/16 v6, 0x3e8

    int-to-long v12, v6

    rem-long v12, p0, v12

    const/16 v6, 0x3e8

    int-to-long v14, v6

    mul-long/2addr v12, v14

    array-length v6, v4

    int-to-long v14, v6

    array-length v6, v4

    int-to-long v0, v6

    move-wide/from16 v16, v0

    invoke-direct/range {v9 .. v17}, Lpcap/PacketHeader;-><init>(JJJJ)V

    .line 223
    .local v9, "phdr":Lpcap/PacketHeader;
    invoke-virtual {v9}, Lpcap/PacketHeader;->build()[B

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 224
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalSeqNo()J

    move-result-wide v10

    move-object/from16 v0, p4

    array-length v6, v0

    int-to-long v12, v6

    add-long/2addr v10, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Lcmd/TcpStreamState;->setLocalSeqNo(J)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalIpId()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcmd/TcpStreamState;->setLocalIpId(I)V

    .line 228
    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_APP2SERVER()B

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcmd/TcpStreamState;->setLastDir(I)V

    .line 230
    return-void

    .line 196
    .end local v4    # "packet":[B
    .end local v5    # "tcp":Lpcap/TCPPacket;
    .end local v7    # "ip":Lpcap/IPv4Packet;
    .end local v8    # "eth":Lpcap/EthernetFrame;
    .end local v9    # "phdr":Lpcap/PacketHeader;
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public static final writeTcpDataServerToApp(JLcmd/TcpStreamState;Ljava/io/OutputStream;[B)V
    .locals 24
    .param p0, "timestamp"    # J
    .param p2, "state"    # Lcmd/TcpStreamState;
    .param p3, "out"    # Ljava/io/OutputStream;
    .param p4, "data"    # [B

    .prologue
    const-string v6, "state"

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "out"

    move-object/from16 v0, p3

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "data"

    move-object/from16 v0, p4

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLastDir()I

    move-result v6

    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_SERVER2APP()B

    move-result v10

    if-ne v6, v10, :cond_0

    .line 236
    const/4 v6, 0x0

    new-array v6, v6, [B

    move-wide/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v6}, Lcmd/Pc2pcapKt;->writeTcpDataAppToServer(JLcmd/TcpStreamState;Ljava/io/OutputStream;[B)V

    .line 240
    :cond_0
    new-instance v5, Lpcap/TCPPacket;

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerPort()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalPort()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerSeqNo()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalSeqNo()J

    move-result-wide v10

    const/4 v12, 0x0

    sget-object v13, Lpcap/TCPPacket;->Companion:Lpcap/TCPPacket$Companion;

    invoke-virtual {v13}, Lpcap/TCPPacket$Companion;->getACK()I

    move-result v14

    move-object/from16 v0, p4

    array-length v13, v0

    if-lez v13, :cond_1

    sget-object v13, Lpcap/TCPPacket;->Companion:Lpcap/TCPPacket$Companion;

    invoke-virtual {v13}, Lpcap/TCPPacket$Companion;->getPUSH()I

    move-result v13

    :goto_0
    or-int/2addr v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0xd0

    const/16 v18, 0x0

    move-object/from16 v16, p4

    invoke-direct/range {v5 .. v18}, Lpcap/TCPPacket;-><init>(IIJJIIII[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 247
    .local v5, "tcp":Lpcap/TCPPacket;
    new-instance v7, Lpcap/IPv4Packet;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerIpId()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Lpcap/IPProtocol;->TCP:Lpcap/IPProtocol;

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerIp32()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalIp32()J

    move-result-wide v18

    move-object/from16 v20, v5

    check-cast v20, Lpcap/IPPayloadBuilder;

    const/16 v21, 0x77

    const/16 v22, 0x0

    invoke-direct/range {v7 .. v22}, Lpcap/IPv4Packet;-><init>(IIIIIIILpcap/IPProtocol;JJLpcap/IPPayloadBuilder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 254
    .local v7, "ip":Lpcap/IPv4Packet;
    new-instance v8, Lpcap/EthernetFrame;

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalMac()[B

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerMac()[B

    move-result-object v10

    const/4 v11, 0x0

    move-object v12, v7

    check-cast v12, Lpcap/Builder;

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lpcap/EthernetFrame;-><init>([B[BLpcap/EtherType;Lpcap/Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 258
    .local v8, "eth":Lpcap/EthernetFrame;
    invoke-virtual {v8}, Lpcap/EthernetFrame;->build()[B

    move-result-object v4

    .line 260
    .local v4, "packet":[B
    new-instance v9, Lpcap/PacketHeader;

    const/16 v6, 0x3e8

    int-to-long v10, v6

    div-long v10, p0, v10

    const/16 v6, 0x3e8

    int-to-long v12, v6

    rem-long v12, p0, v12

    const/16 v6, 0x3e8

    int-to-long v14, v6

    mul-long/2addr v12, v14

    array-length v6, v4

    int-to-long v14, v6

    array-length v6, v4

    int-to-long v0, v6

    move-wide/from16 v16, v0

    invoke-direct/range {v9 .. v17}, Lpcap/PacketHeader;-><init>(JJJJ)V

    .line 267
    .local v9, "phdr":Lpcap/PacketHeader;
    invoke-virtual {v9}, Lpcap/PacketHeader;->build()[B

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 268
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerSeqNo()J

    move-result-wide v10

    move-object/from16 v0, p4

    array-length v6, v0

    int-to-long v12, v6

    add-long/2addr v10, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Lcmd/TcpStreamState;->setServerSeqNo(J)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerIpId()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcmd/TcpStreamState;->setServerIpId(I)V

    .line 272
    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_SERVER2APP()B

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcmd/TcpStreamState;->setLastDir(I)V

    .line 274
    return-void

    .line 240
    .end local v4    # "packet":[B
    .end local v5    # "tcp":Lpcap/TCPPacket;
    .end local v7    # "ip":Lpcap/IPv4Packet;
    .end local v8    # "eth":Lpcap/EthernetFrame;
    .end local v9    # "phdr":Lpcap/PacketHeader;
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public static final writeTcpHandshake(JLcmd/TcpStreamState;Ljava/io/OutputStream;)V
    .locals 26
    .param p0, "timestamp"    # J
    .param p2, "state"    # Lcmd/TcpStreamState;
    .param p3, "out"    # Ljava/io/OutputStream;

    .prologue
    const-string v4, "state"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "out"

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v3, Lpcap/TCPPacket;

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalPort()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerPort()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalSeqNo()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerSeqNo()J

    move-result-wide v8

    const/4 v10, 0x0

    sget-object v11, Lpcap/TCPPacket;->Companion:Lpcap/TCPPacket$Companion;

    invoke-virtual {v11}, Lpcap/TCPPacket$Companion;->getSYN()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [B

    const/16 v15, 0xd0

    const/16 v16, 0x0

    invoke-direct/range {v3 .. v16}, Lpcap/TCPPacket;-><init>(IIJJIIII[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 82
    .local v3, "tcp":Lpcap/TCPPacket;
    new-instance v5, Lpcap/IPv4Packet;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalIpId()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Lpcap/IPProtocol;->TCP:Lpcap/IPProtocol;

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalIp32()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerIp32()J

    move-result-wide v16

    move-object/from16 v18, v3

    check-cast v18, Lpcap/IPPayloadBuilder;

    const/16 v19, 0x77

    const/16 v20, 0x0

    invoke-direct/range {v5 .. v20}, Lpcap/IPv4Packet;-><init>(IIIIIIILpcap/IPProtocol;JJLpcap/IPPayloadBuilder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    .local v5, "ip":Lpcap/IPv4Packet;
    new-instance v6, Lpcap/EthernetFrame;

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerMac()[B

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalMac()[B

    move-result-object v8

    const/4 v9, 0x0

    move-object v10, v5

    check-cast v10, Lpcap/Builder;

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lpcap/EthernetFrame;-><init>([B[BLpcap/EtherType;Lpcap/Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    .local v6, "eth":Lpcap/EthernetFrame;
    invoke-virtual {v6}, Lpcap/EthernetFrame;->build()[B

    move-result-object v2

    .line 95
    .local v2, "packet":[B
    new-instance v7, Lpcap/PacketHeader;

    const/16 v4, 0x3e8

    int-to-long v8, v4

    div-long v8, p0, v8

    const/4 v4, 0x1

    int-to-long v10, v4

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x0

    array-length v4, v2

    int-to-long v12, v4

    array-length v4, v2

    int-to-long v14, v4

    invoke-direct/range {v7 .. v15}, Lpcap/PacketHeader;-><init>(JJJJ)V

    .line 102
    .local v7, "phdr":Lpcap/PacketHeader;
    invoke-virtual {v7}, Lpcap/PacketHeader;->build()[B

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 103
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalSeqNo()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Lcmd/TcpStreamState;->setLocalSeqNo(J)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalIpId()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcmd/TcpStreamState;->setLocalIpId(I)V

    .line 110
    new-instance v3, Lpcap/TCPPacket;

    .end local v3    # "tcp":Lpcap/TCPPacket;
    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerPort()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalPort()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerSeqNo()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalSeqNo()J

    move-result-wide v14

    const/16 v16, 0x0

    sget-object v4, Lpcap/TCPPacket;->Companion:Lpcap/TCPPacket$Companion;

    invoke-virtual {v4}, Lpcap/TCPPacket$Companion;->getSYN()I

    move-result v4

    sget-object v8, Lpcap/TCPPacket;->Companion:Lpcap/TCPPacket$Companion;

    invoke-virtual {v8}, Lpcap/TCPPacket$Companion;->getACK()I

    move-result v8

    or-int v17, v4, v8

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 v20, v0

    const/16 v21, 0xd0

    const/16 v22, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v22}, Lpcap/TCPPacket;-><init>(IIJJIIII[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 118
    .restart local v3    # "tcp":Lpcap/TCPPacket;
    new-instance v5, Lpcap/IPv4Packet;

    .end local v5    # "ip":Lpcap/IPv4Packet;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Lpcap/IPProtocol;->TCP:Lpcap/IPProtocol;

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerIp32()J

    move-result-wide v18

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalIp32()J

    move-result-wide v20

    move-object/from16 v22, v3

    check-cast v22, Lpcap/IPPayloadBuilder;

    const/16 v23, 0x77

    const/16 v24, 0x0

    move-object v9, v5

    invoke-direct/range {v9 .. v24}, Lpcap/IPv4Packet;-><init>(IIIIIIILpcap/IPProtocol;JJLpcap/IPPayloadBuilder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 125
    .restart local v5    # "ip":Lpcap/IPv4Packet;
    new-instance v6, Lpcap/EthernetFrame;

    .end local v6    # "eth":Lpcap/EthernetFrame;
    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalMac()[B

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerMac()[B

    move-result-object v10

    const/4 v11, 0x0

    move-object v12, v5

    check-cast v12, Lpcap/Builder;

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lpcap/EthernetFrame;-><init>([B[BLpcap/EtherType;Lpcap/Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 129
    .restart local v6    # "eth":Lpcap/EthernetFrame;
    invoke-virtual {v6}, Lpcap/EthernetFrame;->build()[B

    move-result-object v2

    .line 131
    new-instance v7, Lpcap/PacketHeader;

    .end local v7    # "phdr":Lpcap/PacketHeader;
    const/16 v4, 0x3e8

    int-to-long v8, v4

    div-long v8, p0, v8

    const/4 v4, 0x1

    int-to-long v10, v4

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x64

    array-length v4, v2

    int-to-long v12, v4

    array-length v4, v2

    int-to-long v14, v4

    invoke-direct/range {v7 .. v15}, Lpcap/PacketHeader;-><init>(JJJJ)V

    .line 138
    .restart local v7    # "phdr":Lpcap/PacketHeader;
    invoke-virtual {v7}, Lpcap/PacketHeader;->build()[B

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 139
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerSeqNo()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Lcmd/TcpStreamState;->setServerSeqNo(J)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerIpId()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcmd/TcpStreamState;->setServerIpId(I)V

    .line 149
    new-instance v3, Lpcap/TCPPacket;

    .end local v3    # "tcp":Lpcap/TCPPacket;
    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalPort()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerPort()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalSeqNo()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerSeqNo()J

    move-result-wide v14

    const/16 v16, 0x0

    sget-object v4, Lpcap/TCPPacket;->Companion:Lpcap/TCPPacket$Companion;

    invoke-virtual {v4}, Lpcap/TCPPacket$Companion;->getACK()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 v20, v0

    const/16 v21, 0xd0

    const/16 v22, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v22}, Lpcap/TCPPacket;-><init>(IIJJIIII[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 157
    .restart local v3    # "tcp":Lpcap/TCPPacket;
    new-instance v5, Lpcap/IPv4Packet;

    .end local v5    # "ip":Lpcap/IPv4Packet;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalIpId()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Lpcap/IPProtocol;->TCP:Lpcap/IPProtocol;

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalIp32()J

    move-result-wide v18

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerIp32()J

    move-result-wide v20

    move-object/from16 v22, v3

    check-cast v22, Lpcap/IPPayloadBuilder;

    const/16 v23, 0x77

    const/16 v24, 0x0

    move-object v9, v5

    invoke-direct/range {v9 .. v24}, Lpcap/IPv4Packet;-><init>(IIIIIIILpcap/IPProtocol;JJLpcap/IPPayloadBuilder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 164
    .restart local v5    # "ip":Lpcap/IPv4Packet;
    new-instance v6, Lpcap/EthernetFrame;

    .end local v6    # "eth":Lpcap/EthernetFrame;
    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getServerMac()[B

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalMac()[B

    move-result-object v10

    const/4 v11, 0x0

    move-object v12, v5

    check-cast v12, Lpcap/Builder;

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lpcap/EthernetFrame;-><init>([B[BLpcap/EtherType;Lpcap/Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 168
    .restart local v6    # "eth":Lpcap/EthernetFrame;
    invoke-virtual {v6}, Lpcap/EthernetFrame;->build()[B

    move-result-object v2

    .line 170
    new-instance v7, Lpcap/PacketHeader;

    .end local v7    # "phdr":Lpcap/PacketHeader;
    const/16 v4, 0x3e8

    int-to-long v8, v4

    div-long v8, p0, v8

    const/4 v4, 0x1

    int-to-long v10, v4

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xc8

    array-length v4, v2

    int-to-long v12, v4

    array-length v4, v2

    int-to-long v14, v4

    invoke-direct/range {v7 .. v15}, Lpcap/PacketHeader;-><init>(JJJJ)V

    .line 177
    .restart local v7    # "phdr":Lpcap/PacketHeader;
    invoke-virtual {v7}, Lpcap/PacketHeader;->build()[B

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 178
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Lcmd/TcpStreamState;->getLocalIpId()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcmd/TcpStreamState;->setLocalIpId(I)V

    .line 181
    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_APP2SERVER()B

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcmd/TcpStreamState;->setLastDir(I)V

    .line 185
    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcmd/TcpStreamState;->setLastDir(I)V

    .line 187
    return-void
.end method
