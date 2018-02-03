.class final Lapp/greyshirts/firewall/app/AppInfo$1;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/greyshirts/firewall/app/AppInfo;->createFromUid(Landroid/content/Context;I)Lapp/greyshirts/firewall/app/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lapp/greyshirts/firewall/app/AppInfo$Entry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lapp/greyshirts/firewall/app/AppInfo$Entry;Lapp/greyshirts/firewall/app/AppInfo$Entry;)I
    .locals 3
    .param p1, "lhs"    # Lapp/greyshirts/firewall/app/AppInfo$Entry;
    .param p2, "rhs"    # Lapp/greyshirts/firewall/app/AppInfo$Entry;

    .prologue
    .line 101
    iget-object v1, p1, Lapp/greyshirts/firewall/app/AppInfo$Entry;->appName:Ljava/lang/String;

    iget-object v2, p2, Lapp/greyshirts/firewall/app/AppInfo$Entry;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 103
    iget-object v1, p1, Lapp/greyshirts/firewall/app/AppInfo$Entry;->pkgName:Ljava/lang/String;

    iget-object v2, p2, Lapp/greyshirts/firewall/app/AppInfo$Entry;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 105
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 98
    check-cast p1, Lapp/greyshirts/firewall/app/AppInfo$Entry;

    check-cast p2, Lapp/greyshirts/firewall/app/AppInfo$Entry;

    invoke-virtual {p0, p1, p2}, Lapp/greyshirts/firewall/app/AppInfo$1;->compare(Lapp/greyshirts/firewall/app/AppInfo$Entry;Lapp/greyshirts/firewall/app/AppInfo$Entry;)I

    move-result v0

    return v0
.end method
