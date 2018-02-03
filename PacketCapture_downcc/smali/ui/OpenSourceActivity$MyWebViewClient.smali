.class final Lui/OpenSourceActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "OpenSourceActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/OpenSourceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lui/OpenSourceActivity;


# direct methods
.method public constructor <init>(Lui/OpenSourceActivity;)V
    .locals 0
    .param p1, "$outer"    # Lui/OpenSourceActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lui/OpenSourceActivity$MyWebViewClient;->this$0:Lui/OpenSourceActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 43
    nop

    .line 44
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 45
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lui/OpenSourceActivity$MyWebViewClient;->this$0:Lui/OpenSourceActivity;

    invoke-virtual {v2, v1}, Lui/OpenSourceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const/4 v2, 0x1

    .line 49
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method
