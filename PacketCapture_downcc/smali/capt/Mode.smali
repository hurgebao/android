.class public final enum Lcapt/Mode;
.super Ljava/lang/Enum;
.source "V1Writer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcapt/Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcapt/Mode;

.field public static final enum MODE_BEGIN:Lcapt/Mode;

.field public static final enum MODE_NORMAL:Lcapt/Mode;

.field public static final enum MODE_PRETTY:Lcapt/Mode;

.field public static final enum MODE_RAW:Lcapt/Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Lcapt/Mode;

    new-instance v1, Lcapt/Mode;

    const-string v2, "MODE_NORMAL"

    invoke-direct {v1, v2, v3}, Lcapt/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcapt/Mode;->MODE_NORMAL:Lcapt/Mode;

    aput-object v1, v0, v3

    new-instance v1, Lcapt/Mode;

    const-string v2, "MODE_BEGIN"

    invoke-direct {v1, v2, v4}, Lcapt/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcapt/Mode;->MODE_BEGIN:Lcapt/Mode;

    aput-object v1, v0, v4

    new-instance v1, Lcapt/Mode;

    const-string v2, "MODE_RAW"

    invoke-direct {v1, v2, v5}, Lcapt/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcapt/Mode;->MODE_RAW:Lcapt/Mode;

    aput-object v1, v0, v5

    new-instance v1, Lcapt/Mode;

    const-string v2, "MODE_PRETTY"

    invoke-direct {v1, v2, v6}, Lcapt/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcapt/Mode;->MODE_PRETTY:Lcapt/Mode;

    aput-object v1, v0, v6

    sput-object v0, Lcapt/Mode;->$VALUES:[Lcapt/Mode;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcapt/Mode;
    .locals 1

    const-class v0, Lcapt/Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcapt/Mode;

    return-object v0
.end method

.method public static values()[Lcapt/Mode;
    .locals 1

    sget-object v0, Lcapt/Mode;->$VALUES:[Lcapt/Mode;

    invoke-virtual {v0}, [Lcapt/Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcapt/Mode;

    return-object v0
.end method
