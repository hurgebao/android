.class public final Lpcap/EthernetFrame;
.super Ljava/lang/Object;
.source "protocol.kt"


# instance fields
.field private final destMac48:[B

.field private final etherType16:Lpcap/EtherType;

.field private final payload:Lpcap/Builder;

.field private final srcMac48:[B


# direct methods
.method public constructor <init>([B[BLpcap/EtherType;Lpcap/Builder;)V
    .locals 1
    .param p1, "destMac48"    # [B
    .param p2, "srcMac48"    # [B
    .param p3, "etherType16"    # Lpcap/EtherType;
    .param p4, "payload"    # Lpcap/Builder;

    .prologue
    const-string v0, "destMac48"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "srcMac48"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "etherType16"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpcap/EthernetFrame;->destMac48:[B

    iput-object p2, p0, Lpcap/EthernetFrame;->srcMac48:[B

    iput-object p3, p0, Lpcap/EthernetFrame;->etherType16:Lpcap/EtherType;

    iput-object p4, p0, Lpcap/EthernetFrame;->payload:Lpcap/Builder;

    return-void
.end method

.method public synthetic constructor <init>([B[BLpcap/EtherType;Lpcap/Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .prologue
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    .line 21
    sget-object p3, Lpcap/EtherType;->IPV4:Lpcap/EtherType;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lpcap/EthernetFrame;-><init>([B[BLpcap/EtherType;Lpcap/Builder;)V

    return-void
.end method


# virtual methods
.method public final build()[B
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    .local v0, "data":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lpcap/EthernetFrame;->destMac48:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 26
    iget-object v1, p0, Lpcap/EthernetFrame;->srcMac48:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object v1, v0

    .line 27
    check-cast v1, Ljava/io/OutputStream;

    iget-object v2, p0, Lpcap/EthernetFrame;->etherType16:Lpcap/EtherType;

    invoke-virtual {v2}, Lpcap/EtherType;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lpcap/ProtocolKt;->write2(Ljava/io/OutputStream;I)V

    .line 28
    iget-object v1, p0, Lpcap/EthernetFrame;->payload:Lpcap/Builder;

    invoke-interface {v1}, Lpcap/Builder;->build()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "data.toByteArray()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lpcap/EthernetFrame;

    if-eqz v0, :cond_1

    check-cast p1, Lpcap/EthernetFrame;

    iget-object v0, p0, Lpcap/EthernetFrame;->destMac48:[B

    iget-object v1, p1, Lpcap/EthernetFrame;->destMac48:[B

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpcap/EthernetFrame;->srcMac48:[B

    iget-object v1, p1, Lpcap/EthernetFrame;->srcMac48:[B

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpcap/EthernetFrame;->etherType16:Lpcap/EtherType;

    iget-object v1, p1, Lpcap/EthernetFrame;->etherType16:Lpcap/EtherType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpcap/EthernetFrame;->payload:Lpcap/Builder;

    iget-object v1, p1, Lpcap/EthernetFrame;->payload:Lpcap/Builder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lpcap/EthernetFrame;->destMac48:[B

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lpcap/EthernetFrame;->srcMac48:[B

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lpcap/EthernetFrame;->etherType16:Lpcap/EtherType;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lpcap/EthernetFrame;->payload:Lpcap/Builder;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EthernetFrame(destMac48="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpcap/EthernetFrame;->destMac48:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", srcMac48="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpcap/EthernetFrame;->srcMac48:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", etherType16="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpcap/EthernetFrame;->etherType16:Lpcap/EtherType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpcap/EthernetFrame;->payload:Lpcap/Builder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
