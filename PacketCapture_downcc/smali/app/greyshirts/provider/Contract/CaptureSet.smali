.class public final Lapp/greyshirts/provider/Contract/CaptureSet;
.super Ljava/lang/Object;
.source "CaptureContract.kt"


# static fields
.field public static final CAPTURE_NUM:Ljava/lang/String; = "captureset_num"

.field public static final CAPTURE_SET_ID:Ljava/lang/String; = "captureset_set_id"

.field public static final CAPTURE_START_TIME:Ljava/lang/String; = "captureset_start_time"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.sslcapture.captureset"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.sslcapture.captureset"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final INSTANCE:Lapp/greyshirts/provider/Contract/CaptureSet; = null

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lapp/greyshirts/provider/Contract/CaptureSet;

    invoke-direct {v0}, Lapp/greyshirts/provider/Contract/CaptureSet;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lapp/greyshirts/provider/Contract/CaptureSet;

    .end local p0    # "this":Lapp/greyshirts/provider/Contract/CaptureSet;
    sput-object p0, Lapp/greyshirts/provider/Contract/CaptureSet;->INSTANCE:Lapp/greyshirts/provider/Contract/CaptureSet;

    .line 43
    const-string v0, "_id"

    sput-object v0, Lapp/greyshirts/provider/Contract/CaptureSet;->_ID:Ljava/lang/String;

    .line 44
    const-string v0, "captureset_set_id"

    sput-object v0, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_SET_ID:Ljava/lang/String;

    .line 45
    const-string v0, "captureset_start_time"

    sput-object v0, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_START_TIME:Ljava/lang/String;

    .line 46
    const-string v0, "captureset_num"

    sput-object v0, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_NUM:Ljava/lang/String;

    .line 48
    invoke-static {}, Lapp/greyshirts/provider/Contract/CaptureContractKt;->getBASE_CONTENT_URI()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "captureset"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "BASE_CONTENT_URI.buildUp\u2026ath(\"captureset\").build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lapp/greyshirts/provider/Contract/CaptureSet;->CONTENT_URI:Landroid/net/Uri;

    .line 49
    const-string v0, "vnd.android.cursor.dir/vnd.sslcapture.captureset"

    sput-object v0, Lapp/greyshirts/provider/Contract/CaptureSet;->CONTENT_TYPE:Ljava/lang/String;

    .line 50
    const-string v0, "vnd.android.cursor.item/vnd.sslcapture.captureset"

    sput-object v0, Lapp/greyshirts/provider/Contract/CaptureSet;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final buildCaptureSetUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "captureSetId"    # Ljava/lang/String;

    .prologue
    const-string v0, "captureSetId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lapp/greyshirts/provider/Contract/CaptureSet;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "CONTENT_URI.buildUpon().\u2026ath(captureSetId).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
