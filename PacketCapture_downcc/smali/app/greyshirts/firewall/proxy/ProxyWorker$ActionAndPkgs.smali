.class public Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;
.super Ljava/lang/Object;
.source "ProxyWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/greyshirts/firewall/proxy/ProxyWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionAndPkgs"
.end annotation


# instance fields
.field public action:I

.field public dumpFilePath:Ljava/lang/String;

.field public pkgs:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
