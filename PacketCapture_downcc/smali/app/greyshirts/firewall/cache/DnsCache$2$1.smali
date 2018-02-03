.class Lapp/greyshirts/firewall/cache/DnsCache$2$1;
.super Ljava/lang/Object;
.source "DnsCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/greyshirts/firewall/cache/DnsCache$2;->onFinish(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lapp/greyshirts/firewall/cache/DnsCache$2;

.field final synthetic val$ip:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lapp/greyshirts/firewall/cache/DnsCache$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lapp/greyshirts/firewall/cache/DnsCache$2;

    .prologue
    .line 103
    iput-object p1, p0, Lapp/greyshirts/firewall/cache/DnsCache$2$1;->this$1:Lapp/greyshirts/firewall/cache/DnsCache$2;

    iput-object p2, p0, Lapp/greyshirts/firewall/cache/DnsCache$2$1;->val$ip:Ljava/lang/String;

    iput-object p3, p0, Lapp/greyshirts/firewall/cache/DnsCache$2$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lapp/greyshirts/firewall/cache/DnsCache$2$1;->this$1:Lapp/greyshirts/firewall/cache/DnsCache$2;

    iget-object v0, v0, Lapp/greyshirts/firewall/cache/DnsCache$2;->val$listener:Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;

    iget-object v1, p0, Lapp/greyshirts/firewall/cache/DnsCache$2$1;->val$ip:Ljava/lang/String;

    iget-object v2, p0, Lapp/greyshirts/firewall/cache/DnsCache$2$1;->val$name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;->onFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method
