.class public Lapp/greyshirts/firewall/cache/AddressCache;
.super Ljava/lang/Object;
.source "AddressCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;,
        Lapp/greyshirts/firewall/cache/AddressCache$EntryType;
    }
.end annotation


# instance fields
.field private final cache:Lapp/greyshirts/firewall/cache/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapp/greyshirts/firewall/cache/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lapp/greyshirts/firewall/cache/BasicLruCache;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lapp/greyshirts/firewall/cache/BasicLruCache;-><init>(I)V

    iput-object v0, p0, Lapp/greyshirts/firewall/cache/AddressCache;->cache:Lapp/greyshirts/firewall/cache/BasicLruCache;

    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Lapp/greyshirts/firewall/cache/AddressCache$EntryType;)V
    .locals 6
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "type"    # Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    .prologue
    .line 119
    sget-object v4, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;->VALID:Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    if-ne p3, v4, :cond_0

    const-wide v0, 0x1a3185c5000L

    .line 120
    .local v0, "defaultTtlNanos":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long v2, v4, v0

    .line 122
    .local v2, "expiryNanos":J
    iget-object v4, p0, Lapp/greyshirts/firewall/cache/AddressCache;->cache:Lapp/greyshirts/firewall/cache/BasicLruCache;

    new-instance v5, Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;

    invoke-direct {v5, p3, p2, v2, v3}, Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;-><init>(Lapp/greyshirts/firewall/cache/AddressCache$EntryType;Ljava/lang/String;J)V

    invoke-virtual {v4, p1, v5}, Lapp/greyshirts/firewall/cache/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void

    .line 119
    .end local v0    # "defaultTtlNanos":J
    .end local v2    # "expiryNanos":J
    :cond_0
    const-wide v0, 0x6fc23ac00L

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;
    .locals 6
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v1, p0, Lapp/greyshirts/firewall/cache/AddressCache;->cache:Lapp/greyshirts/firewall/cache/BasicLruCache;

    invoke-virtual {v1, p1}, Lapp/greyshirts/firewall/cache/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;

    .line 85
    .local v0, "entry":Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;->expiryNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 86
    new-instance v1, Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;

    iget-object v2, v0, Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;->type:Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    iget-object v3, v0, Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;->hostname:Ljava/lang/String;

    iget-wide v4, v0, Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;->expiryNanos:J

    invoke-direct {v1, v2, v3, v4, v5}, Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;-><init>(Lapp/greyshirts/firewall/cache/AddressCache$EntryType;Ljava/lang/String;J)V

    .line 90
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putError(Ljava/lang/String;)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v0, 0x0

    sget-object v1, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;->ERROR:Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    invoke-direct {p0, p1, v0, v1}, Lapp/greyshirts/firewall/cache/AddressCache;->put(Ljava/lang/String;Ljava/lang/String;Lapp/greyshirts/firewall/cache/AddressCache$EntryType;)V

    .line 111
    return-void
.end method

.method public putNxDomain(Ljava/lang/String;)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v0, 0x0

    sget-object v1, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;->NXDOMAIN:Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    invoke-direct {p0, p1, v0, v1}, Lapp/greyshirts/firewall/cache/AddressCache;->put(Ljava/lang/String;Ljava/lang/String;Lapp/greyshirts/firewall/cache/AddressCache$EntryType;)V

    .line 107
    return-void
.end method

.method public putValid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-object v0, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;->VALID:Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    invoke-direct {p0, p1, p2, v0}, Lapp/greyshirts/firewall/cache/AddressCache;->put(Ljava/lang/String;Ljava/lang/String;Lapp/greyshirts/firewall/cache/AddressCache$EntryType;)V

    .line 99
    return-void
.end method
