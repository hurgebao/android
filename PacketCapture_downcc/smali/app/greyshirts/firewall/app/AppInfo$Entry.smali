.class Lapp/greyshirts/firewall/app/AppInfo$Entry;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/greyshirts/firewall/app/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# instance fields
.field final appName:Ljava/lang/String;

.field final pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lapp/greyshirts/firewall/app/AppInfo$Entry;->appName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lapp/greyshirts/firewall/app/AppInfo$Entry;->pkgName:Ljava/lang/String;

    .line 31
    return-void
.end method
