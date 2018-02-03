.class public final synthetic Lui/decode/ListviewitemKt$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lui/decode/ViewType;->values()[Lui/decode/ViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lui/decode/ListviewitemKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lui/decode/ListviewitemKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lui/decode/ViewType;->PRETTY:Lui/decode/ViewType;

    invoke-virtual {v1}, Lui/decode/ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lui/decode/ListviewitemKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lui/decode/ViewType;->IMAGE:Lui/decode/ViewType;

    invoke-virtual {v1}, Lui/decode/ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lui/decode/ListviewitemKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lui/decode/ViewType;->TEXT:Lui/decode/ViewType;

    invoke-virtual {v1}, Lui/decode/ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lui/decode/ListviewitemKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lui/decode/ViewType;->HEX:Lui/decode/ViewType;

    invoke-virtual {v1}, Lui/decode/ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
