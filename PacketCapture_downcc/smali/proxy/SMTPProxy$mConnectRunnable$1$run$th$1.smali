.class public final Lproxy/SMTPProxy$mConnectRunnable$1$run$th$1;
.super Ljava/lang/Object;
.source "SMTPProxy.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproxy/SMTPProxy$mConnectRunnable$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproxy/SMTPProxy$mConnectRunnable$1;


# direct methods
.method constructor <init>(Lproxy/SMTPProxy$mConnectRunnable$1;)V
    .locals 0
    .param p1, "$outer"    # Lproxy/SMTPProxy$mConnectRunnable$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 202
    iput-object p1, p0, Lproxy/SMTPProxy$mConnectRunnable$1$run$th$1;->this$0:Lproxy/SMTPProxy$mConnectRunnable$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lproxy/SMTPProxy$mConnectRunnable$1$run$th$1;->this$0:Lproxy/SMTPProxy$mConnectRunnable$1;

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    invoke-static {v0}, Lproxy/SMTPProxy;->access$pipeHttpRequest(Lproxy/SMTPProxy;)V

    .line 206
    return-void
.end method
