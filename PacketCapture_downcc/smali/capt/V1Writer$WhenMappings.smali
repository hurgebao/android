.class public final synthetic Lcapt/V1Writer$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcapt/Mode;->values()[Lcapt/Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcapt/V1Writer$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lcapt/V1Writer$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcapt/Mode;->MODE_RAW:Lcapt/Mode;

    invoke-virtual {v1}, Lcapt/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcapt/V1Writer$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcapt/Mode;->MODE_PRETTY:Lcapt/Mode;

    invoke-virtual {v1}, Lcapt/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
