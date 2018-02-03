.class public final Lpcap/PcapKt;
.super Ljava/lang/Object;
.source "pcap.kt"


# direct methods
.method public static final write2Le(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "$receiver"    # Ljava/io/OutputStream;
    .param p1, "value"    # I

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 57
    ushr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 58
    return-void
.end method

.method public static final write4Le(Ljava/io/OutputStream;J)V
    .locals 3
    .param p0, "$receiver"    # Ljava/io/OutputStream;
    .param p1, "value"    # J

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 62
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 63
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 64
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 65
    return-void
.end method
