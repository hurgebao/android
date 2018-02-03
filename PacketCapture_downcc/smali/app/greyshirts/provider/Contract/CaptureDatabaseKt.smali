.class public final Lapp/greyshirts/provider/Contract/CaptureDatabaseKt;
.super Ljava/lang/Object;
.source "CaptureDatabase.kt"


# static fields
# The value of this static final field might be set in the static constructor
.field private static final CUR_DATABASE_VERSION:I = 0x3

# The value of this static final field might be set in the static constructor
.field private static final DATABASE_NAME:Ljava/lang/String; = "schedule.db"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "schedule.db"

    sput-object v0, Lapp/greyshirts/provider/Contract/CaptureDatabaseKt;->DATABASE_NAME:Ljava/lang/String;

    .line 9
    const/4 v0, 0x3

    sput v0, Lapp/greyshirts/provider/Contract/CaptureDatabaseKt;->CUR_DATABASE_VERSION:I

    return-void
.end method

.method public static final synthetic access$getCUR_DATABASE_VERSION$p()I
    .locals 1

    .prologue
    .line 1
    sget v0, Lapp/greyshirts/provider/Contract/CaptureDatabaseKt;->CUR_DATABASE_VERSION:I

    return v0
.end method

.method public static final synthetic access$getDATABASE_NAME$p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lapp/greyshirts/provider/Contract/CaptureDatabaseKt;->DATABASE_NAME:Ljava/lang/String;

    return-object v0
.end method
