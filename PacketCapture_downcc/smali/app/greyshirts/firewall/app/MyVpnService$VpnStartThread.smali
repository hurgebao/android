.class Lapp/greyshirts/firewall/app/MyVpnService$VpnStartThread;
.super Ljava/lang/Thread;
.source "MyVpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/greyshirts/firewall/app/MyVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VpnStartThread"
.end annotation


# instance fields
.field final synthetic this$0:Lapp/greyshirts/firewall/app/MyVpnService;


# direct methods
.method public constructor <init>(Lapp/greyshirts/firewall/app/MyVpnService;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "this$0"    # Lapp/greyshirts/firewall/app/MyVpnService;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 203
    iput-object p1, p0, Lapp/greyshirts/firewall/app/MyVpnService$VpnStartThread;->this$0:Lapp/greyshirts/firewall/app/MyVpnService;

    .line 204
    const-string v0, "vpnservice"

    invoke-direct {p0, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 205
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p1, v0}, Lapp/greyshirts/firewall/app/MyVpnService;->access$002(Lapp/greyshirts/firewall/app/MyVpnService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 206
    return-void
.end method
