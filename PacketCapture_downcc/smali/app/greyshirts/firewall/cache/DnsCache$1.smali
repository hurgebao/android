.class Lapp/greyshirts/firewall/cache/DnsCache$1;
.super Ljava/lang/Object;
.source "DnsCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/greyshirts/firewall/cache/DnsCache;->startResolver(Ljava/lang/String;Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/greyshirts/firewall/cache/DnsCache;

.field final synthetic val$ip:Ljava/lang/String;

.field final synthetic val$listener:Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;


# direct methods
.method constructor <init>(Lapp/greyshirts/firewall/cache/DnsCache;Ljava/lang/String;Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;)V
    .locals 0
    .param p1, "this$0"    # Lapp/greyshirts/firewall/cache/DnsCache;

    .prologue
    .line 39
    iput-object p1, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->this$0:Lapp/greyshirts/firewall/cache/DnsCache;

    iput-object p2, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->val$ip:Ljava/lang/String;

    iput-object p3, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->val$listener:Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 42
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 43
    .local v1, "result":[Ljava/lang/String;
    iget-object v3, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->val$ip:Ljava/lang/String;

    invoke-static {v3, v1}, Lapp/greyshirts/firewall/cache/DnsCache;->getnameinfo(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 45
    .local v2, "ret":I
    packed-switch v2, :pswitch_data_0

    .line 67
    const-string v3, "8.8.8.8"

    invoke-static {v3, v1}, Lapp/greyshirts/firewall/cache/DnsCache;->getnameinfo(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 68
    if-nez v2, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->this$0:Lapp/greyshirts/firewall/cache/DnsCache;

    invoke-static {v3}, Lapp/greyshirts/firewall/cache/DnsCache;->access$000(Lapp/greyshirts/firewall/cache/DnsCache;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 71
    :try_start_0
    iget-object v3, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->this$0:Lapp/greyshirts/firewall/cache/DnsCache;

    invoke-static {v3}, Lapp/greyshirts/firewall/cache/DnsCache;->access$100(Lapp/greyshirts/firewall/cache/DnsCache;)Lapp/greyshirts/firewall/cache/AddressCache;

    move-result-object v3

    iget-object v5, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->val$ip:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lapp/greyshirts/firewall/cache/AddressCache;->putNxDomain(Ljava/lang/String;)V

    .line 72
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 82
    :goto_0
    iget-object v3, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->val$listener:Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;

    iget-object v4, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->val$ip:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;->onFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void

    .line 47
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_0
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 48
    .restart local v0    # "name":Ljava/lang/String;
    iget-object v3, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->this$0:Lapp/greyshirts/firewall/cache/DnsCache;

    invoke-static {v3}, Lapp/greyshirts/firewall/cache/DnsCache;->access$000(Lapp/greyshirts/firewall/cache/DnsCache;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 49
    :try_start_1
    iget-object v3, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->this$0:Lapp/greyshirts/firewall/cache/DnsCache;

    invoke-static {v3}, Lapp/greyshirts/firewall/cache/DnsCache;->access$100(Lapp/greyshirts/firewall/cache/DnsCache;)Lapp/greyshirts/firewall/cache/AddressCache;

    move-result-object v3

    iget-object v5, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->val$ip:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Lapp/greyshirts/firewall/cache/AddressCache;->putValid(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 53
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x0

    .line 54
    .restart local v0    # "name":Ljava/lang/String;
    iget-object v3, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->this$0:Lapp/greyshirts/firewall/cache/DnsCache;

    invoke-static {v3}, Lapp/greyshirts/firewall/cache/DnsCache;->access$000(Lapp/greyshirts/firewall/cache/DnsCache;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 55
    :try_start_2
    iget-object v3, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->this$0:Lapp/greyshirts/firewall/cache/DnsCache;

    invoke-static {v3}, Lapp/greyshirts/firewall/cache/DnsCache;->access$100(Lapp/greyshirts/firewall/cache/DnsCache;)Lapp/greyshirts/firewall/cache/AddressCache;

    move-result-object v3

    iget-object v5, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->val$ip:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lapp/greyshirts/firewall/cache/AddressCache;->putNxDomain(Ljava/lang/String;)V

    .line 56
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 72
    :catchall_2
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3

    .line 74
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 75
    .restart local v0    # "name":Ljava/lang/String;
    iget-object v3, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->this$0:Lapp/greyshirts/firewall/cache/DnsCache;

    invoke-static {v3}, Lapp/greyshirts/firewall/cache/DnsCache;->access$000(Lapp/greyshirts/firewall/cache/DnsCache;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 76
    :try_start_4
    iget-object v3, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->this$0:Lapp/greyshirts/firewall/cache/DnsCache;

    invoke-static {v3}, Lapp/greyshirts/firewall/cache/DnsCache;->access$100(Lapp/greyshirts/firewall/cache/DnsCache;)Lapp/greyshirts/firewall/cache/AddressCache;

    move-result-object v3

    iget-object v5, p0, Lapp/greyshirts/firewall/cache/DnsCache$1;->val$ip:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lapp/greyshirts/firewall/cache/AddressCache;->putError(Ljava/lang/String;)V

    .line 77
    monitor-exit v4

    goto :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v3

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
