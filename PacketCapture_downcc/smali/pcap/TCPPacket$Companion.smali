.class public final Lpcap/TCPPacket$Companion;
.super Ljava/lang/Object;
.source "protocol.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpcap/TCPPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 90
    invoke-direct {p0}, Lpcap/TCPPacket$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getACK()I
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lpcap/TCPPacket;->access$getACK$cp()I

    move-result v0

    return v0
.end method

.method public final getPUSH()I
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lpcap/TCPPacket;->access$getPUSH$cp()I

    move-result v0

    return v0
.end method

.method public final getSYN()I
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lpcap/TCPPacket;->access$getSYN$cp()I

    move-result v0

    return v0
.end method
