.class public final Lapp/greyshirts/provider/Contract/CaptureContractKt;
.super Ljava/lang/Object;
.source "CaptureContract.kt"


# static fields
.field private static final BASE_CONTENT_URI:Landroid/net/Uri;

# The value of this static final field might be set in the static constructor
.field private static final CONTENT_AUTHORITY:Ljava/lang/String; = "app.greyshirts.sslcapture.captureprovider"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    const-string v0, "app.greyshirts.sslcapture.captureprovider"

    sput-object v0, Lapp/greyshirts/provider/Contract/CaptureContractKt;->CONTENT_AUTHORITY:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lapp/greyshirts/provider/Contract/CaptureContractKt;->CONTENT_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(\"content://\" + CONTENT_AUTHORITY)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lapp/greyshirts/provider/Contract/CaptureContractKt;->BASE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public static final getBASE_CONTENT_URI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lapp/greyshirts/provider/Contract/CaptureContractKt;->BASE_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static final getCONTENT_AUTHORITY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lapp/greyshirts/provider/Contract/CaptureContractKt;->CONTENT_AUTHORITY:Ljava/lang/String;

    return-object v0
.end method
