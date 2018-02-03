.class public final enum Lpcap/EtherType;
.super Ljava/lang/Enum;
.source "protocol.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lpcap/EtherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpcap/EtherType;

.field public static final enum IPV4:Lpcap/EtherType;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Lpcap/EtherType;

    new-instance v1, Lpcap/EtherType;

    const-string v2, "IPV4"

    const/16 v3, 0x800

    .line 16
    invoke-direct {v1, v2, v4, v3}, Lpcap/EtherType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lpcap/EtherType;->IPV4:Lpcap/EtherType;

    aput-object v1, v0, v4

    sput-object v0, Lpcap/EtherType;->$VALUES:[Lpcap/EtherType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lpcap/EtherType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpcap/EtherType;
    .locals 1

    const-class v0, Lpcap/EtherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lpcap/EtherType;

    return-object v0
.end method

.method public static values()[Lpcap/EtherType;
    .locals 1

    sget-object v0, Lpcap/EtherType;->$VALUES:[Lpcap/EtherType;

    invoke-virtual {v0}, [Lpcap/EtherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpcap/EtherType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lpcap/EtherType;->type:I

    return v0
.end method
