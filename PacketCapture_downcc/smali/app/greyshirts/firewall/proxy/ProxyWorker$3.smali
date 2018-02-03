.class Lapp/greyshirts/firewall/proxy/ProxyWorker$3;
.super Ljava/lang/Object;
.source "ProxyWorker.java"

# interfaces
.implements Lproxy/SMTPProxy$OnSSLProxyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/greyshirts/firewall/proxy/ProxyWorker;->queryActionForNewTCPConnection(I[BI[BI)Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/greyshirts/firewall/proxy/ProxyWorker;

.field final synthetic val$appInfo:Lapp/greyshirts/firewall/app/AppInfo;

.field final synthetic val$captureFile:Ljava/io/File;

.field final synthetic val$ipStr:Ljava/lang/String;

.field final synthetic val$localPort:I

.field final synthetic val$serverPort:I


# direct methods
.method constructor <init>(Lapp/greyshirts/firewall/proxy/ProxyWorker;Ljava/io/File;Ljava/lang/String;ILapp/greyshirts/firewall/app/AppInfo;I)V
    .locals 0
    .param p1, "this$0"    # Lapp/greyshirts/firewall/proxy/ProxyWorker;

    .prologue
    .line 303
    iput-object p1, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->this$0:Lapp/greyshirts/firewall/proxy/ProxyWorker;

    iput-object p2, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->val$captureFile:Ljava/io/File;

    iput-object p3, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->val$ipStr:Ljava/lang/String;

    iput p4, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->val$serverPort:I

    iput-object p5, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->val$appInfo:Lapp/greyshirts/firewall/app/AppInfo;

    iput p6, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->val$localPort:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectError()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->this$0:Lapp/greyshirts/firewall/proxy/ProxyWorker;

    iget v1, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->val$localPort:I

    invoke-static {v0, v1, v2, v2}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->access$300(Lapp/greyshirts/firewall/proxy/ProxyWorker;IZI)V

    .line 328
    return-void
.end method

.method public onConnected(I)V
    .locals 5
    .param p1, "proxyPort"    # I

    .prologue
    const/4 v4, 0x1

    .line 306
    iget-object v1, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->val$captureFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 307
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 308
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "capture_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 309
    const-string v1, "capture_file_name"

    iget-object v2, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->val$captureFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "capture_server_ip"

    iget-object v2, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->val$ipStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "capture_server_port"

    iget v2, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->val$serverPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v1, "capture_app_name_main"

    iget-object v2, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->val$appInfo:Lapp/greyshirts/firewall/app/AppInfo;

    iget-object v2, v2, Lapp/greyshirts/firewall/app/AppInfo;->leaderAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "capture_app_name_all"

    iget-object v2, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->val$appInfo:Lapp/greyshirts/firewall/app/AppInfo;

    iget-object v2, v2, Lapp/greyshirts/firewall/app/AppInfo;->allAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v1, "capture_proxy_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string v1, "capture_protocol_no"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    const-string v1, "capture_pkg_name_all"

    iget-object v2, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->val$appInfo:Lapp/greyshirts/firewall/app/AppInfo;

    iget-object v2, v2, Lapp/greyshirts/firewall/app/AppInfo;->pkgs:Lapp/greyshirts/firewall/app/PackageNames;

    invoke-virtual {v2}, Lapp/greyshirts/firewall/app/PackageNames;->getCommaJoinedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "capture_set_id"

    iget-object v2, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->this$0:Lapp/greyshirts/firewall/proxy/ProxyWorker;

    invoke-static {v2}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->access$100(Lapp/greyshirts/firewall/proxy/ProxyWorker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->this$0:Lapp/greyshirts/firewall/proxy/ProxyWorker;

    invoke-static {v1}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->access$200(Lapp/greyshirts/firewall/proxy/ProxyWorker;)Landroid/net/VpnService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/VpnService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lapp/greyshirts/provider/Contract/Capture;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 322
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v1, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->this$0:Lapp/greyshirts/firewall/proxy/ProxyWorker;

    iget v2, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;->val$localPort:I

    invoke-static {v1, v2, v4, p1}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->access$300(Lapp/greyshirts/firewall/proxy/ProxyWorker;IZI)V

    .line 323
    return-void
.end method
