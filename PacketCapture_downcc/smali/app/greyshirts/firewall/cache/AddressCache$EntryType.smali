.class public final enum Lapp/greyshirts/firewall/cache/AddressCache$EntryType;
.super Ljava/lang/Enum;
.source "AddressCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/greyshirts/firewall/cache/AddressCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lapp/greyshirts/firewall/cache/AddressCache$EntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

.field public static final enum ERROR:Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

.field public static final enum NXDOMAIN:Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

.field public static final enum VALID:Lapp/greyshirts/firewall/cache/AddressCache$EntryType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v2}, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;->VALID:Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    .line 44
    new-instance v0, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    const-string v1, "NXDOMAIN"

    invoke-direct {v0, v1, v3}, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;->NXDOMAIN:Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    .line 45
    new-instance v0, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;->ERROR:Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    sget-object v1, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;->VALID:Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    aput-object v1, v0, v2

    sget-object v1, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;->NXDOMAIN:Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    aput-object v1, v0, v3

    sget-object v1, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;->ERROR:Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    aput-object v1, v0, v4

    sput-object v0, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;->$VALUES:[Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lapp/greyshirts/firewall/cache/AddressCache$EntryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    return-object v0
.end method

.method public static values()[Lapp/greyshirts/firewall/cache/AddressCache$EntryType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lapp/greyshirts/firewall/cache/AddressCache$EntryType;->$VALUES:[Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    invoke-virtual {v0}, [Lapp/greyshirts/firewall/cache/AddressCache$EntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapp/greyshirts/firewall/cache/AddressCache$EntryType;

    return-object v0
.end method
