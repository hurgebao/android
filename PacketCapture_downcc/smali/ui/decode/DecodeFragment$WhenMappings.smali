.class public final synthetic Lui/decode/DecodeFragment$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lui/decode/RetainedFragment$State;->values()[Lui/decode/RetainedFragment$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lui/decode/DecodeFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lui/decode/DecodeFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lui/decode/RetainedFragment$State;->STATE_DECODED:Lui/decode/RetainedFragment$State;

    invoke-virtual {v1}, Lui/decode/RetainedFragment$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lui/decode/DecodeFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lui/decode/RetainedFragment$State;->STATE_ERROR:Lui/decode/RetainedFragment$State;

    invoke-virtual {v1}, Lui/decode/RetainedFragment$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
