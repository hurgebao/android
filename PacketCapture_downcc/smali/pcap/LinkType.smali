.class public final enum Lpcap/LinkType;
.super Ljava/lang/Enum;
.source "pcap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lpcap/LinkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpcap/LinkType;

.field public static final enum LINKTYPE_ETHERNET:Lpcap/LinkType;


# instance fields
.field private final type:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Lpcap/LinkType;

    new-instance v1, Lpcap/LinkType;

    const-string v2, "LINKTYPE_ETHERNET"

    const-wide/16 v4, 0x1

    .line 7
    invoke-direct {v1, v2, v3, v4, v5}, Lpcap/LinkType;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lpcap/LinkType;->LINKTYPE_ETHERNET:Lpcap/LinkType;

    aput-object v1, v0, v3

    sput-object v0, Lpcap/LinkType;->$VALUES:[Lpcap/LinkType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .param p3, "type"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lpcap/LinkType;->type:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpcap/LinkType;
    .locals 1

    const-class v0, Lpcap/LinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lpcap/LinkType;

    return-object v0
.end method

.method public static values()[Lpcap/LinkType;
    .locals 1

    sget-object v0, Lpcap/LinkType;->$VALUES:[Lpcap/LinkType;

    invoke-virtual {v0}, [Lpcap/LinkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpcap/LinkType;

    return-object v0
.end method


# virtual methods
.method public final getType()J
    .locals 2

    .prologue
    .line 6
    iget-wide v0, p0, Lpcap/LinkType;->type:J

    return-wide v0
.end method
