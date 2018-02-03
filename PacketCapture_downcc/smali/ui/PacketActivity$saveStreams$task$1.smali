.class public final Lui/PacketActivity$saveStreams$task$1;
.super Landroid/os/AsyncTask;
.source "PacketActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/PacketActivity;->saveStreams(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $outFileName:Ljava/lang/String;

.field final synthetic $saveFunc:Lkotlin/jvm/functions/Function2;

.field final synthetic this$0:Lui/PacketActivity;


# direct methods
.method constructor <init>(Lui/PacketActivity;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V
    .locals 0
    .param p1, "$outer"    # Lui/PacketActivity;
    .param p2, "$captured_local_variable$1"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$captured_local_variable$2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 245
    iput-object p1, p0, Lui/PacketActivity$saveStreams$task$1;->this$0:Lui/PacketActivity;

    iput-object p2, p0, Lui/PacketActivity$saveStreams$task$1;->$saveFunc:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lui/PacketActivity$saveStreams$task$1;->$outFileName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const-string v1, "params"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    nop

    .line 248
    :try_start_0
    iget-object v1, p0, Lui/PacketActivity$saveStreams$task$1;->$saveFunc:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lui/PacketActivity$saveStreams$task$1;->this$0:Lui/PacketActivity;

    invoke-virtual {v2}, Lui/PacketActivity;->getArgDecodeArg()Lui/decode/DecodeArg;

    move-result-object v2

    invoke-virtual {v2}, Lui/decode/DecodeArg;->getCaptFile()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lui/PacketActivity$saveStreams$task$1;->$outFileName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lui/PacketActivity$saveStreams$task$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Exception;

    .prologue
    .line 256
    if-nez p1, :cond_0

    .line 257
    iget-object v0, p0, Lui/PacketActivity$saveStreams$task$1;->this$0:Lui/PacketActivity;

    check-cast v0, Landroid/content/Context;

    const-string v1, "Saved"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lui/PacketActivity$saveStreams$task$1;->this$0:Lui/PacketActivity;

    check-cast v0, Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot save to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lui/PacketActivity$saveStreams$task$1;->$outFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 245
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lui/PacketActivity$saveStreams$task$1;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
