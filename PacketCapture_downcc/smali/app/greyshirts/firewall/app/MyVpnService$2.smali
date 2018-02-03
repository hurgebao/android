.class Lapp/greyshirts/firewall/app/MyVpnService$2;
.super Ljava/lang/Object;
.source "MyVpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/greyshirts/firewall/app/MyVpnService;->setupVpn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/greyshirts/firewall/app/MyVpnService;


# direct methods
.method constructor <init>(Lapp/greyshirts/firewall/app/MyVpnService;)V
    .locals 0
    .param p1, "this$0"    # Lapp/greyshirts/firewall/app/MyVpnService;

    .prologue
    .line 157
    iput-object p1, p0, Lapp/greyshirts/firewall/app/MyVpnService$2;->this$0:Lapp/greyshirts/firewall/app/MyVpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lapp/greyshirts/firewall/app/MyVpnService$2;->this$0:Lapp/greyshirts/firewall/app/MyVpnService;

    const-string v1, "Cannot establish VPN (app not prepared)"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    return-void
.end method
