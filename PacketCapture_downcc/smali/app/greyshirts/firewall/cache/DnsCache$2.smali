.class Lapp/greyshirts/firewall/cache/DnsCache$2;
.super Ljava/lang/Object;
.source "DnsCache.java"

# interfaces
.implements Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/greyshirts/firewall/cache/DnsCache;->resolveNameFromIpForUiThread(Ljava/lang/String;Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;)Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/greyshirts/firewall/cache/DnsCache;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;


# direct methods
.method constructor <init>(Lapp/greyshirts/firewall/cache/DnsCache;Landroid/os/Handler;Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;)V
    .locals 0
    .param p1, "this$0"    # Lapp/greyshirts/firewall/cache/DnsCache;

    .prologue
    .line 100
    iput-object p1, p0, Lapp/greyshirts/firewall/cache/DnsCache$2;->this$0:Lapp/greyshirts/firewall/cache/DnsCache;

    iput-object p2, p0, Lapp/greyshirts/firewall/cache/DnsCache$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lapp/greyshirts/firewall/cache/DnsCache$2;->val$listener:Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lapp/greyshirts/firewall/cache/DnsCache$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Lapp/greyshirts/firewall/cache/DnsCache$2$1;

    invoke-direct {v1, p0, p1, p2}, Lapp/greyshirts/firewall/cache/DnsCache$2$1;-><init>(Lapp/greyshirts/firewall/cache/DnsCache$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method
