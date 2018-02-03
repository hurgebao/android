.class public final Lui/HomeActivity$onCreate$1;
.super Landroid/os/Handler;
.source "HomeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/HomeActivity;


# direct methods
.method constructor <init>(Lui/HomeActivity;)V
    .locals 0
    .param p1, "$outer"    # Lui/HomeActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lui/HomeActivity$onCreate$1;->this$0:Lui/HomeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lui/HomeActivity$onCreate$1;->this$0:Lui/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lui/HomeActivity;->access$setForceShowAsRunning$p(Lui/HomeActivity;Z)V

    .line 64
    iget-object v0, p0, Lui/HomeActivity$onCreate$1;->this$0:Lui/HomeActivity;

    invoke-static {v0}, Lui/HomeActivity;->access$updateStartButtons(Lui/HomeActivity;)V

    .line 65
    iget-object v0, p0, Lui/HomeActivity$onCreate$1;->this$0:Lui/HomeActivity;

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lui/HomeActivity;->access$rescheduleButtonUpdate(Lui/HomeActivity;I)V

    .line 66
    return-void
.end method
