.class public final Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1$run$th$1;
.super Ljava/lang/Object;
.source "HTTPSProxy.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;


# direct methods
.method constructor <init>(Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;)V
    .locals 0
    .param p1, "$outer"    # Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 182
    iput-object p1, p0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1$run$th$1;->this$0:Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1$run$th$1;->this$0:Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;

    iget-object v0, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v0}, Lapp/ssldecryptor/HTTPSProxy;->access$pipeHttpRequest(Lapp/ssldecryptor/HTTPSProxy;)V

    .line 186
    return-void
.end method
