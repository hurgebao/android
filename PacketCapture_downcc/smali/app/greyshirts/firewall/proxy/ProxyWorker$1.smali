.class Lapp/greyshirts/firewall/proxy/ProxyWorker$1;
.super Ljava/lang/Object;
.source "ProxyWorker.java"

# interfaces
.implements Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/greyshirts/firewall/proxy/ProxyWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/greyshirts/firewall/proxy/ProxyWorker;


# direct methods
.method constructor <init>(Lapp/greyshirts/firewall/proxy/ProxyWorker;)V
    .locals 0
    .param p1, "this$0"    # Lapp/greyshirts/firewall/proxy/ProxyWorker;

    .prologue
    .line 139
    iput-object p1, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$1;->this$0:Lapp/greyshirts/firewall/proxy/ProxyWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker$1;->this$0:Lapp/greyshirts/firewall/proxy/ProxyWorker;

    invoke-static {v0, p1, p2}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->access$000(Lapp/greyshirts/firewall/proxy/ProxyWorker;Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    return-void
.end method
