.class public final enum Lui/decode/RetainedFragment$State;
.super Ljava/lang/Enum;
.source "DecodeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/decode/RetainedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lui/decode/RetainedFragment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lui/decode/RetainedFragment$State;

.field public static final enum STATE_DECODED:Lui/decode/RetainedFragment$State;

.field public static final enum STATE_DECODING:Lui/decode/RetainedFragment$State;

.field public static final enum STATE_DESTROY:Lui/decode/RetainedFragment$State;

.field public static final enum STATE_ERROR:Lui/decode/RetainedFragment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Lui/decode/RetainedFragment$State;

    new-instance v1, Lui/decode/RetainedFragment$State;

    const-string v2, "STATE_DECODING"

    invoke-direct {v1, v2, v3}, Lui/decode/RetainedFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lui/decode/RetainedFragment$State;->STATE_DECODING:Lui/decode/RetainedFragment$State;

    aput-object v1, v0, v3

    new-instance v1, Lui/decode/RetainedFragment$State;

    const-string v2, "STATE_ERROR"

    invoke-direct {v1, v2, v4}, Lui/decode/RetainedFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lui/decode/RetainedFragment$State;->STATE_ERROR:Lui/decode/RetainedFragment$State;

    aput-object v1, v0, v4

    new-instance v1, Lui/decode/RetainedFragment$State;

    const-string v2, "STATE_DECODED"

    invoke-direct {v1, v2, v5}, Lui/decode/RetainedFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lui/decode/RetainedFragment$State;->STATE_DECODED:Lui/decode/RetainedFragment$State;

    aput-object v1, v0, v5

    new-instance v1, Lui/decode/RetainedFragment$State;

    const-string v2, "STATE_DESTROY"

    invoke-direct {v1, v2, v6}, Lui/decode/RetainedFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lui/decode/RetainedFragment$State;->STATE_DESTROY:Lui/decode/RetainedFragment$State;

    aput-object v1, v0, v6

    sput-object v0, Lui/decode/RetainedFragment$State;->$VALUES:[Lui/decode/RetainedFragment$State;

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
    .line 196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lui/decode/RetainedFragment$State;
    .locals 1

    const-class v0, Lui/decode/RetainedFragment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lui/decode/RetainedFragment$State;

    return-object v0
.end method

.method public static values()[Lui/decode/RetainedFragment$State;
    .locals 1

    sget-object v0, Lui/decode/RetainedFragment$State;->$VALUES:[Lui/decode/RetainedFragment$State;

    invoke-virtual {v0}, [Lui/decode/RetainedFragment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lui/decode/RetainedFragment$State;

    return-object v0
.end method
