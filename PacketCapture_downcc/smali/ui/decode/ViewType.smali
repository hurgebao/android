.class public final enum Lui/decode/ViewType;
.super Ljava/lang/Enum;
.source "listviewitem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lui/decode/ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lui/decode/ViewType;

.field public static final enum HEX:Lui/decode/ViewType;

.field public static final enum IMAGE:Lui/decode/ViewType;

.field public static final enum PRETTY:Lui/decode/ViewType;

.field public static final enum TEXT:Lui/decode/ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Lui/decode/ViewType;

    new-instance v1, Lui/decode/ViewType;

    const-string v2, "PRETTY"

    invoke-direct {v1, v2, v3}, Lui/decode/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lui/decode/ViewType;->PRETTY:Lui/decode/ViewType;

    aput-object v1, v0, v3

    new-instance v1, Lui/decode/ViewType;

    const-string v2, "IMAGE"

    invoke-direct {v1, v2, v4}, Lui/decode/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lui/decode/ViewType;->IMAGE:Lui/decode/ViewType;

    aput-object v1, v0, v4

    new-instance v1, Lui/decode/ViewType;

    const-string v2, "HEX"

    invoke-direct {v1, v2, v5}, Lui/decode/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lui/decode/ViewType;->HEX:Lui/decode/ViewType;

    aput-object v1, v0, v5

    new-instance v1, Lui/decode/ViewType;

    const-string v2, "TEXT"

    invoke-direct {v1, v2, v6}, Lui/decode/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lui/decode/ViewType;->TEXT:Lui/decode/ViewType;

    aput-object v1, v0, v6

    sput-object v0, Lui/decode/ViewType;->$VALUES:[Lui/decode/ViewType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lui/decode/ViewType;
    .locals 1

    const-class v0, Lui/decode/ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lui/decode/ViewType;

    return-object v0
.end method

.method public static values()[Lui/decode/ViewType;
    .locals 1

    sget-object v0, Lui/decode/ViewType;->$VALUES:[Lui/decode/ViewType;

    invoke-virtual {v0}, [Lui/decode/ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lui/decode/ViewType;

    return-object v0
.end method
