.class public Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;
.super Ljava/lang/Object;
.source "AddressCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/greyshirts/firewall/cache/AddressCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddressCacheEntry"
.end annotation


# instance fields
.field final expiryNanos:J

.field public final hostname:Ljava/lang/String;

.field public final type:Lapp/greyshirts/firewall/cache/AddressCache$EntryType;


# direct methods
.method constructor <init>(Lapp/greyshirts/firewall/cache/AddressCache$EntryType;Ljava/lang/String;J)V
    .locals 1
    .param p1, "type"    # Lapp/greyshirts/firewall/cache/AddressCache$EntryType;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "expiryNanos"    # J

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;->type:Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    .line 65
    iput-object p2, p0, Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;->hostname:Ljava/lang/String;

    .line 66
    iput-wide p3, p0, Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;->expiryNanos:J

    .line 67
    return-void
.end method
