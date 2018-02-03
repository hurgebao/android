.class public Lapp/greyshirts/firewall/cache/DnsCache;
.super Ljava/lang/Object;
.source "DnsCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;
    }
.end annotation


# static fields
.field private static final instance:Lapp/greyshirts/firewall/cache/DnsCache;


# instance fields
.field private final ip2name:Lapp/greyshirts/firewall/cache/AddressCache;

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lapp/greyshirts/firewall/cache/DnsCache;

    invoke-direct {v0}, Lapp/greyshirts/firewall/cache/DnsCache;-><init>()V

    sput-object v0, Lapp/greyshirts/firewall/cache/DnsCache;->instance:Lapp/greyshirts/firewall/cache/DnsCache;

    .line 127
    const-string v0, "core"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lapp/greyshirts/firewall/cache/DnsCache;->lock:Ljava/lang/Object;

    .line 21
    new-instance v0, Lapp/greyshirts/firewall/cache/AddressCache;

    invoke-direct {v0}, Lapp/greyshirts/firewall/cache/AddressCache;-><init>()V

    iput-object v0, p0, Lapp/greyshirts/firewall/cache/DnsCache;->ip2name:Lapp/greyshirts/firewall/cache/AddressCache;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lapp/greyshirts/firewall/cache/DnsCache;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lapp/greyshirts/firewall/cache/DnsCache;

    .prologue
    .line 8
    iget-object v0, p0, Lapp/greyshirts/firewall/cache/DnsCache;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lapp/greyshirts/firewall/cache/DnsCache;)Lapp/greyshirts/firewall/cache/AddressCache;
    .locals 1
    .param p0, "x0"    # Lapp/greyshirts/firewall/cache/DnsCache;

    .prologue
    .line 8
    iget-object v0, p0, Lapp/greyshirts/firewall/cache/DnsCache;->ip2name:Lapp/greyshirts/firewall/cache/AddressCache;

    return-object v0
.end method

.method public static getInstance()Lapp/greyshirts/firewall/cache/DnsCache;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lapp/greyshirts/firewall/cache/DnsCache;->instance:Lapp/greyshirts/firewall/cache/DnsCache;

    return-object v0
.end method

.method public static native getnameinfo(Ljava/lang/String;[Ljava/lang/String;)I
.end method


# virtual methods
.method public resolveNameFromIpForUiThread(Ljava/lang/String;Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;)Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "listener"    # Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lapp/greyshirts/firewall/cache/DnsCache;->resolveNameFromIpPeek(Ljava/lang/String;)Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;

    move-result-object v1

    .line 95
    .local v1, "name":Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;
    if-eqz v1, :cond_0

    .line 111
    .end local v1    # "name":Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;
    :goto_0
    return-object v1

    .line 99
    .restart local v1    # "name":Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 100
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lapp/greyshirts/firewall/cache/DnsCache$2;

    invoke-direct {v2, p0, v0, p2}, Lapp/greyshirts/firewall/cache/DnsCache$2;-><init>(Lapp/greyshirts/firewall/cache/DnsCache;Landroid/os/Handler;Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;)V

    invoke-virtual {p0, p1, v2}, Lapp/greyshirts/firewall/cache/DnsCache;->startResolver(Ljava/lang/String;Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;)V

    .line 111
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resolveNameFromIpPeek(Ljava/lang/String;)Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v1, p0, Lapp/greyshirts/firewall/cache/DnsCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v0, p0, Lapp/greyshirts/firewall/cache/DnsCache;->ip2name:Lapp/greyshirts/firewall/cache/AddressCache;

    invoke-virtual {v0, p1}, Lapp/greyshirts/firewall/cache/AddressCache;->get(Ljava/lang/String;)Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startResolver(Ljava/lang/String;Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "listener"    # Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lapp/greyshirts/firewall/cache/DnsCache$1;

    invoke-direct {v1, p0, p1, p2}, Lapp/greyshirts/firewall/cache/DnsCache$1;-><init>(Lapp/greyshirts/firewall/cache/DnsCache;Ljava/lang/String;Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 85
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 86
    return-void
.end method
