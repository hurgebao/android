.class public final Lui/folder/FolderChooserFragment$loadFolder$loadTask$1;
.super Lui/folder/FolderLoadTask;
.source "FolderChooserFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/folder/FolderChooserFragment;->loadFolder(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $dir:Ljava/io/File;

.field final synthetic this$0:Lui/folder/FolderChooserFragment;


# direct methods
.method constructor <init>(Lui/folder/FolderChooserFragment;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "$outer"    # Lui/folder/FolderChooserFragment;
    .param p2, "$captured_local_variable$1"    # Ljava/io/File;
    .param p3, "$super_call_param$2"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    iput-object p1, p0, Lui/folder/FolderChooserFragment$loadFolder$loadTask$1;->this$0:Lui/folder/FolderChooserFragment;

    iput-object p2, p0, Lui/folder/FolderChooserFragment$loadFolder$loadTask$1;->$dir:Ljava/io/File;

    invoke-direct {p0, p3}, Lui/folder/FolderLoadTask;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 140
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lui/folder/FolderChooserFragment$loadFolder$loadTask$1;->onPostExecute([Ljava/io/File;)V

    return-void
.end method

.method protected onPostExecute([Ljava/io/File;)V
    .locals 2
    .param p1, "result"    # [Ljava/io/File;

    .prologue
    .line 142
    iget-object v0, p0, Lui/folder/FolderChooserFragment$loadFolder$loadTask$1;->$dir:Ljava/io/File;

    invoke-virtual {p0}, Lui/folder/FolderChooserFragment$loadFolder$loadTask$1;->getLoadDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lui/folder/FolderChooserFragment$loadFolder$loadTask$1;->this$0:Lui/folder/FolderChooserFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lui/folder/FolderChooserFragment;->setLoading(Z)V

    .line 146
    iget-object v0, p0, Lui/folder/FolderChooserFragment$loadFolder$loadTask$1;->this$0:Lui/folder/FolderChooserFragment;

    invoke-static {v0}, Lui/folder/FolderChooserFragment;->access$getAdapter$p(Lui/folder/FolderChooserFragment;)Lui/folder/FolderAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lui/folder/FolderAdapter;->setData([Ljava/io/File;)V

    .line 147
    iget-object v0, p0, Lui/folder/FolderChooserFragment$loadFolder$loadTask$1;->this$0:Lui/folder/FolderChooserFragment;

    invoke-static {v0}, Lui/folder/FolderChooserFragment;->access$updateView(Lui/folder/FolderChooserFragment;)V

    goto :goto_0
.end method
