.class public final enum Lpcap/IPProtocol;
.super Ljava/lang/Enum;
.source "protocol.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lpcap/IPProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpcap/IPProtocol;

.field public static final enum TCP:Lpcap/IPProtocol;

.field public static final enum UDP:Lpcap/IPProtocol;


# instance fields
.field private final number:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Lpcap/IPProtocol;

    new-instance v1, Lpcap/IPProtocol;

    const-string v2, "UDP"

    const/16 v3, 0x11

    .line 34
    invoke-direct {v1, v2, v4, v3}, Lpcap/IPProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lpcap/IPProtocol;->UDP:Lpcap/IPProtocol;

    aput-object v1, v0, v4

    new-instance v1, Lpcap/IPProtocol;

    const-string v2, "TCP"

    const/4 v3, 0x6

    .line 35
    invoke-direct {v1, v2, v5, v3}, Lpcap/IPProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lpcap/IPProtocol;->TCP:Lpcap/IPProtocol;

    aput-object v1, v0, v5

    sput-object v0, Lpcap/IPProtocol;->$VALUES:[Lpcap/IPProtocol;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .param p3, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lpcap/IPProtocol;->number:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpcap/IPProtocol;
    .locals 1

    const-class v0, Lpcap/IPProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lpcap/IPProtocol;

    return-object v0
.end method

.method public static values()[Lpcap/IPProtocol;
    .locals 1

    sget-object v0, Lpcap/IPProtocol;->$VALUES:[Lpcap/IPProtocol;

    invoke-virtual {v0}, [Lpcap/IPProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpcap/IPProtocol;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lpcap/IPProtocol;->number:I

    return v0
.end method
