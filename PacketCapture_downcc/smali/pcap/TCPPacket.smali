.class public final Lpcap/TCPPacket;
.super Ljava/lang/Object;
.source "protocol.kt"

# interfaces
.implements Lpcap/IPPayloadBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpcap/TCPPacket$Companion;
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final ACK:I = 0x10

.field public static final Companion:Lpcap/TCPPacket$Companion;

# The value of this static final field might be set in the static constructor
.field private static final FIN:I = 0x1

# The value of this static final field might be set in the static constructor
.field private static final PUSH:I = 0x8

# The value of this static final field might be set in the static constructor
.field private static final RESET:I = 0x4

# The value of this static final field might be set in the static constructor
.field private static final SYN:I = 0x2


# instance fields
.field private final ackNo32:J

.field private final body:[B

.field private final dstPort16:I

.field private final flags9:I

.field private final headerWords4:I

.field private final seqNo32:J

.field private final srcPort16:I

.field private final urgentPointer16:I

.field private final windowSize16:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lpcap/TCPPacket$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpcap/TCPPacket$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpcap/TCPPacket;->Companion:Lpcap/TCPPacket$Companion;

    .line 91
    const/4 v0, 0x1

    sput v0, Lpcap/TCPPacket;->FIN:I

    .line 92
    const/4 v0, 0x2

    sput v0, Lpcap/TCPPacket;->SYN:I

    .line 93
    const/4 v0, 0x4

    sput v0, Lpcap/TCPPacket;->RESET:I

    .line 94
    const/16 v0, 0x8

    sput v0, Lpcap/TCPPacket;->PUSH:I

    .line 95
    const/16 v0, 0x10

    sput v0, Lpcap/TCPPacket;->ACK:I

    return-void
.end method

.method public constructor <init>(IIJJIIII[B)V
    .locals 1
    .param p1, "srcPort16"    # I
    .param p2, "dstPort16"    # I
    .param p3, "seqNo32"    # J
    .param p5, "ackNo32"    # J
    .param p7, "headerWords4"    # I
    .param p8, "flags9"    # I
    .param p9, "windowSize16"    # I
    .param p10, "urgentPointer16"    # I
    .param p11, "body"    # [B

    .prologue
    const-string v0, "body"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpcap/TCPPacket;->srcPort16:I

    iput p2, p0, Lpcap/TCPPacket;->dstPort16:I

    iput-wide p3, p0, Lpcap/TCPPacket;->seqNo32:J

    iput-wide p5, p0, Lpcap/TCPPacket;->ackNo32:J

    iput p7, p0, Lpcap/TCPPacket;->headerWords4:I

    iput p8, p0, Lpcap/TCPPacket;->flags9:I

    iput p9, p0, Lpcap/TCPPacket;->windowSize16:I

    iput p10, p0, Lpcap/TCPPacket;->urgentPointer16:I

    iput-object p11, p0, Lpcap/TCPPacket;->body:[B

    return-void
.end method

.method public synthetic constructor <init>(IIJJIIII[BILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    .prologue
    and-int/lit8 v2, p12, 0x10

    if-eqz v2, :cond_2

    .line 84
    const/4 v10, 0x5

    :goto_0
    and-int/lit8 v2, p12, 0x40

    if-eqz v2, :cond_1

    .line 86
    const/16 v12, 0x1000

    :goto_1
    move/from16 v0, p12

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    .line 87
    const/4 v13, 0x0

    :goto_2
    move-object v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v11, p8

    move-object/from16 v14, p11

    invoke-direct/range {v3 .. v14}, Lpcap/TCPPacket;-><init>(IIJJIIII[B)V

    return-void

    :cond_0
    move/from16 v13, p10

    goto :goto_2

    :cond_1
    move/from16 v12, p9

    goto :goto_1

    :cond_2
    move/from16 v10, p7

    goto :goto_0
.end method

.method public static final synthetic access$getACK$cp()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lpcap/TCPPacket;->ACK:I

    return v0
.end method

.method public static final synthetic access$getPUSH$cp()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lpcap/TCPPacket;->PUSH:I

    return v0
.end method

.method public static final synthetic access$getSYN$cp()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lpcap/TCPPacket;->SYN:I

    return v0
.end method


# virtual methods
.method public build(JJ)[B
    .locals 11
    .param p1, "srcIp32"    # J
    .param p3, "dstIp32"    # J

    .prologue
    const/4 v10, 0x0

    .line 99
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v1, "header":Ljava/io/ByteArrayOutputStream;
    move-object v6, v1

    .line 100
    check-cast v6, Ljava/io/OutputStream;

    iget v7, p0, Lpcap/TCPPacket;->srcPort16:I

    invoke-static {v6, v7}, Lpcap/ProtocolKt;->write2(Ljava/io/OutputStream;I)V

    move-object v6, v1

    .line 101
    check-cast v6, Ljava/io/OutputStream;

    iget v7, p0, Lpcap/TCPPacket;->dstPort16:I

    invoke-static {v6, v7}, Lpcap/ProtocolKt;->write2(Ljava/io/OutputStream;I)V

    move-object v6, v1

    .line 102
    check-cast v6, Ljava/io/OutputStream;

    iget-wide v8, p0, Lpcap/TCPPacket;->seqNo32:J

    invoke-static {v6, v8, v9}, Lpcap/ProtocolKt;->write4(Ljava/io/OutputStream;J)V

    move-object v6, v1

    .line 103
    check-cast v6, Ljava/io/OutputStream;

    iget-wide v8, p0, Lpcap/TCPPacket;->ackNo32:J

    invoke-static {v6, v8, v9}, Lpcap/ProtocolKt;->write4(Ljava/io/OutputStream;J)V

    .line 104
    iget v6, p0, Lpcap/TCPPacket;->headerWords4:I

    shl-int/lit8 v6, v6, 0x4

    iget v7, p0, Lpcap/TCPPacket;->flags9:I

    ushr-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 105
    iget v6, p0, Lpcap/TCPPacket;->flags9:I

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object v6, v1

    .line 106
    check-cast v6, Ljava/io/OutputStream;

    iget v7, p0, Lpcap/TCPPacket;->windowSize16:I

    invoke-static {v6, v7}, Lpcap/ProtocolKt;->write2(Ljava/io/OutputStream;I)V

    move-object v6, v1

    .line 107
    check-cast v6, Ljava/io/OutputStream;

    invoke-static {v6, v10}, Lpcap/ProtocolKt;->write2(Ljava/io/OutputStream;I)V

    move-object v6, v1

    .line 108
    check-cast v6, Ljava/io/OutputStream;

    iget v7, p0, Lpcap/TCPPacket;->urgentPointer16:I

    invoke-static {v6, v7}, Lpcap/ProtocolKt;->write2(Ljava/io/OutputStream;I)V

    .line 109
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 111
    .local v0, "h":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    .local v2, "pseudoHeader":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    iget-object v7, p0, Lpcap/TCPPacket;->body:[B

    array-length v7, v7

    add-int v5, v6, v7

    .local v5, "tcpLength":I
    move-object v6, v2

    .line 113
    check-cast v6, Ljava/io/OutputStream;

    invoke-static {v6, p1, p2}, Lpcap/ProtocolKt;->write4(Ljava/io/OutputStream;J)V

    move-object v6, v2

    .line 114
    check-cast v6, Ljava/io/OutputStream;

    invoke-static {v6, p3, p4}, Lpcap/ProtocolKt;->write4(Ljava/io/OutputStream;J)V

    .line 115
    invoke-virtual {v2, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 116
    sget-object v6, Lpcap/IPProtocol;->TCP:Lpcap/IPProtocol;

    invoke-virtual {v6}, Lpcap/IPProtocol;->getNumber()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object v6, v2

    .line 117
    check-cast v6, Ljava/io/OutputStream;

    invoke-static {v6, v5}, Lpcap/ProtocolKt;->write2(Ljava/io/OutputStream;I)V

    .line 119
    const/4 v6, 0x3

    new-array v6, v6, [[B

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const-string v8, "pseudoHeader.toByteArray()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v6, v10

    const/4 v7, 0x1

    const-string v8, "h"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lpcap/TCPPacket;->body:[B

    aput-object v8, v6, v7

    invoke-static {v6}, Lpcap/ProtocolKt;->checksum([[B)I

    move-result v4

    .line 120
    .local v4, "sum":I
    const/16 v6, 0x10

    shr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 121
    const/16 v6, 0x11

    int-to-byte v7, v4

    aput-byte v7, v0, v6

    .line 123
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 124
    .local v3, "ret":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 125
    iget-object v6, p0, Lpcap/TCPPacket;->body:[B

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 126
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const-string v7, "ret.toByteArray()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lpcap/TCPPacket;

    if-eqz v2, :cond_1

    check-cast p1, Lpcap/TCPPacket;

    iget v2, p0, Lpcap/TCPPacket;->srcPort16:I

    iget v3, p1, Lpcap/TCPPacket;->srcPort16:I

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget v2, p0, Lpcap/TCPPacket;->dstPort16:I

    iget v3, p1, Lpcap/TCPPacket;->dstPort16:I

    if-ne v2, v3, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lpcap/TCPPacket;->seqNo32:J

    iget-wide v4, p1, Lpcap/TCPPacket;->seqNo32:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    move v2, v1

    :goto_2
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lpcap/TCPPacket;->ackNo32:J

    iget-wide v4, p1, Lpcap/TCPPacket;->ackNo32:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    move v2, v1

    :goto_3
    if-eqz v2, :cond_1

    iget v2, p0, Lpcap/TCPPacket;->headerWords4:I

    iget v3, p1, Lpcap/TCPPacket;->headerWords4:I

    if-ne v2, v3, :cond_6

    move v2, v1

    :goto_4
    if-eqz v2, :cond_1

    iget v2, p0, Lpcap/TCPPacket;->flags9:I

    iget v3, p1, Lpcap/TCPPacket;->flags9:I

    if-ne v2, v3, :cond_7

    move v2, v1

    :goto_5
    if-eqz v2, :cond_1

    iget v2, p0, Lpcap/TCPPacket;->windowSize16:I

    iget v3, p1, Lpcap/TCPPacket;->windowSize16:I

    if-ne v2, v3, :cond_8

    move v2, v1

    :goto_6
    if-eqz v2, :cond_1

    iget v2, p0, Lpcap/TCPPacket;->urgentPointer16:I

    iget v3, p1, Lpcap/TCPPacket;->urgentPointer16:I

    if-ne v2, v3, :cond_9

    move v2, v1

    :goto_7
    if-eqz v2, :cond_1

    iget-object v2, p0, Lpcap/TCPPacket;->body:[B

    iget-object v3, p1, Lpcap/TCPPacket;->body:[B

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
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget v0, p0, Lpcap/TCPPacket;->srcPort16:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpcap/TCPPacket;->dstPort16:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lpcap/TCPPacket;->seqNo32:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lpcap/TCPPacket;->ackNo32:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpcap/TCPPacket;->headerWords4:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpcap/TCPPacket;->flags9:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpcap/TCPPacket;->windowSize16:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpcap/TCPPacket;->urgentPointer16:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lpcap/TCPPacket;->body:[B

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

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

    const-string v1, "TCPPacket(srcPort16="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpcap/TCPPacket;->srcPort16:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dstPort16="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpcap/TCPPacket;->dstPort16:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seqNo32="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lpcap/TCPPacket;->seqNo32:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ackNo32="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lpcap/TCPPacket;->ackNo32:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headerWords4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpcap/TCPPacket;->headerWords4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags9="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpcap/TCPPacket;->flags9:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windowSize16="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpcap/TCPPacket;->windowSize16:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urgentPointer16="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpcap/TCPPacket;->urgentPointer16:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpcap/TCPPacket;->body:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
