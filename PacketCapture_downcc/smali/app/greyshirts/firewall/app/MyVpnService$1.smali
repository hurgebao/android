.class Lapp/greyshirts/firewall/app/MyVpnService$1;
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

.field final synthetic val$e:Ljava/lang/IllegalStateException;


# direct methods
.method constructor <init>(Lapp/greyshirts/firewall/app/MyVpnService;Ljava/lang/IllegalStateException;)V
    .locals 0
    .param p1, "this$0"    # Lapp/greyshirts/firewall/app/MyVpnService;

    .prologue
    .line 145
    iput-object p1, p0, Lapp/greyshirts/firewall/app/MyVpnService$1;->this$0:Lapp/greyshirts/firewall/app/MyVpnService;

    iput-object p2, p0, Lapp/greyshirts/firewall/app/MyVpnService$1;->val$e:Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lapp/greyshirts/firewall/app/MyVpnService$1;->this$0:Lapp/greyshirts/firewall/app/MyVpnService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot establish VPN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lapp/greyshirts/firewall/app/MyVpnService$1;->val$e:Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    return-void
.end method
