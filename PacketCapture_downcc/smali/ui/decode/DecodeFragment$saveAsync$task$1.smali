.class public final Lui/decode/DecodeFragment$saveAsync$task$1;
.super Landroid/os/AsyncTask;
.source "DecodeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/decode/DecodeFragment;->saveAsync(Ljava/lang/String;Ljava/io/File;II)V
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
.field final synthetic $inFile:Ljava/io/File;

.field final synthetic $offset:I

.field final synthetic $outFile:Ljava/lang/String;

.field final synthetic $size:I

.field final synthetic this$0:Lui/decode/DecodeFragment;


# direct methods
.method constructor <init>(Lui/decode/DecodeFragment;Ljava/io/File;Ljava/lang/String;II)V
    .locals 0
    .param p1, "$outer"    # Lui/decode/DecodeFragment;
    .param p2, "$captured_local_variable$1"    # Ljava/io/File;
    .param p3, "$captured_local_variable$2"    # Ljava/lang/String;
    .param p4, "$captured_local_variable$3"    # I
    .param p5, "$captured_local_variable$4"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 146
    iput-object p1, p0, Lui/decode/DecodeFragment$saveAsync$task$1;->this$0:Lui/decode/DecodeFragment;

    iput-object p2, p0, Lui/decode/DecodeFragment$saveAsync$task$1;->$inFile:Ljava/io/File;

    iput-object p3, p0, Lui/decode/DecodeFragment$saveAsync$task$1;->$outFile:Ljava/lang/String;

    iput p4, p0, Lui/decode/DecodeFragment$saveAsync$task$1;->$offset:I

    iput p5, p0, Lui/decode/DecodeFragment$saveAsync$task$1;->$size:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const-string v4, "params"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    nop

    .line 149
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lui/decode/DecodeFragment$saveAsync$task$1;->$inFile:Ljava/io/File;

    const-string v6, "r"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 150
    .local v3, "inCh":Ljava/nio/channels/FileChannel;
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lui/decode/DecodeFragment$saveAsync$task$1;->$outFile:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .line 151
    .local v9, "outCh":Ljava/nio/channels/FileChannel;
    iget v4, p0, Lui/decode/DecodeFragment$saveAsync$task$1;->$offset:I

    int-to-long v4, v4

    iget v6, p0, Lui/decode/DecodeFragment$saveAsync$task$1;->$size:I

    int-to-long v6, v6

    move-object v0, v9

    check-cast v0, Ljava/nio/channels/WritableByteChannel;

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 152
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 153
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    const/4 v2, 0x0

    .end local v3    # "inCh":Ljava/nio/channels/FileChannel;
    .end local v9    # "outCh":Ljava/nio/channels/FileChannel;
    :goto_0
    return-object v2

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lui/decode/DecodeFragment$saveAsync$task$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Exception;

    .prologue
    .line 161
    iget-object v0, p0, Lui/decode/DecodeFragment$saveAsync$task$1;->this$0:Lui/decode/DecodeFragment;

    invoke-virtual {v0}, Lui/decode/DecodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 164
    :cond_0
    if-nez p1, :cond_1

    .line 165
    iget-object v0, p0, Lui/decode/DecodeFragment$saveAsync$task$1;->this$0:Lui/decode/DecodeFragment;

    invoke-virtual {v0}, Lui/decode/DecodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "Saved"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lui/decode/DecodeFragment$saveAsync$task$1;->this$0:Lui/decode/DecodeFragment;

    invoke-virtual {v0}, Lui/decode/DecodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot save to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lui/decode/DecodeFragment$saveAsync$task$1;->$outFile:Ljava/lang/String;

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
    .line 146
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lui/decode/DecodeFragment$saveAsync$task$1;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
