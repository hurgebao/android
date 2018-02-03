.class public final Lapp/greyshirts/provider/Contract/Capture;
.super Ljava/lang/Object;
.source "CaptureContract.kt"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CAPTURE_APP_NAME_ALL:Ljava/lang/String; = "capture_app_name_all"

.field public static final CAPTURE_APP_NAME_MAIN:Ljava/lang/String; = "capture_app_name_main"

.field public static final CAPTURE_FILE_NAME:Ljava/lang/String; = "capture_file_name"

.field public static final CAPTURE_ID:Ljava/lang/String; = "_id"

.field public static final CAPTURE_PKG_NAME_ALL:Ljava/lang/String; = "capture_pkg_name_all"

.field public static final CAPTURE_PROTOCOL_NO:Ljava/lang/String; = "capture_protocol_no"

.field public static final CAPTURE_PROXY_TYPE:Ljava/lang/String; = "capture_proxy_type"

.field public static final CAPTURE_PROXY_TYPE_NORMAL:I = 0x0

.field public static final CAPTURE_PROXY_TYPE_SSL:I = 0x1

.field public static final CAPTURE_SERVER_IP:Ljava/lang/String; = "capture_server_ip"

.field public static final CAPTURE_SERVER_PORT:Ljava/lang/String; = "capture_server_port"

.field public static final CAPTURE_SET_ID:Ljava/lang/String; = "capture_set_id"

.field public static final CAPTURE_TIME:Ljava/lang/String; = "capture_time"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.sslcapture.capture"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.sslcapture.capture"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final INSTANCE:Lapp/greyshirts/provider/Contract/Capture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lapp/greyshirts/provider/Contract/Capture;

    invoke-direct {v0}, Lapp/greyshirts/provider/Contract/Capture;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lapp/greyshirts/provider/Contract/Capture;

    .end local p0    # "this":Lapp/greyshirts/provider/Contract/Capture;
    sput-object p0, Lapp/greyshirts/provider/Contract/Capture;->INSTANCE:Lapp/greyshirts/provider/Contract/Capture;

    .line 12
    const-string v0, "_id"

    sput-object v0, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_ID:Ljava/lang/String;

    .line 13
    const-string v0, "capture_time"

    sput-object v0, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_TIME:Ljava/lang/String;

    .line 14
    const-string v0, "capture_file_name"

    sput-object v0, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_FILE_NAME:Ljava/lang/String;

    .line 15
    const-string v0, "capture_server_ip"

    sput-object v0, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_SERVER_IP:Ljava/lang/String;

    .line 16
    const-string v0, "capture_server_port"

    sput-object v0, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_SERVER_PORT:Ljava/lang/String;

    .line 17
    const-string v0, "capture_app_name_main"

    sput-object v0, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_APP_NAME_MAIN:Ljava/lang/String;

    .line 18
    const-string v0, "capture_app_name_all"

    sput-object v0, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_APP_NAME_ALL:Ljava/lang/String;

    .line 19
    const-string v0, "capture_proxy_type"

    sput-object v0, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_PROXY_TYPE:Ljava/lang/String;

    .line 20
    const-string v0, "capture_protocol_no"

    sput-object v0, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_PROTOCOL_NO:Ljava/lang/String;

    .line 21
    const-string v0, "capture_pkg_name_all"

    sput-object v0, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_PKG_NAME_ALL:Ljava/lang/String;

    .line 22
    const-string v0, "capture_set_id"

    sput-object v0, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_SET_ID:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    sput v0, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_PROXY_TYPE_SSL:I

    .line 27
    invoke-static {}, Lapp/greyshirts/provider/Contract/CaptureContractKt;->getBASE_CONTENT_URI()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "capture"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "BASE_CONTENT_URI.buildUp\u2026ndPath(\"capture\").build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lapp/greyshirts/provider/Contract/Capture;->CONTENT_URI:Landroid/net/Uri;

    .line 28
    const-string v0, "vnd.android.cursor.dir/vnd.sslcapture.capture"

    sput-object v0, Lapp/greyshirts/provider/Contract/Capture;->CONTENT_TYPE:Ljava/lang/String;

    .line 29
    const-string v0, "vnd.android.cursor.item/vnd.sslcapture.capture"

    sput-object v0, Lapp/greyshirts/provider/Contract/Capture;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final buildCaptureUri(J)Landroid/net/Uri;
    .locals 3
    .param p1, "captureId"    # J

    .prologue
    .line 32
    sget-object v0, Lapp/greyshirts/provider/Contract/Capture;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "CONTENT_URI.buildUpon().\u2026lueOf(captureId)).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
