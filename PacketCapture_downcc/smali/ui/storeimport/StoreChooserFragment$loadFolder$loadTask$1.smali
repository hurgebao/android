.class public final Lui/storeimport/StoreChooserFragment$loadFolder$loadTask$1;
.super Lui/folder/FolderLoadTask;
.source "StoreChooserFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/storeimport/StoreChooserFragment;->loadFolder(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $dir:Ljava/io/File;

.field final synthetic this$0:Lui/storeimport/StoreChooserFragment;


# direct methods
.method constructor <init>(Lui/storeimport/StoreChooserFragment;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "$outer"    # Lui/storeimport/StoreChooserFragment;
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
    .line 120
    iput-object p1, p0, Lui/storeimport/StoreChooserFragment$loadFolder$loadTask$1;->this$0:Lui/storeimport/StoreChooserFragment;

    iput-object p2, p0, Lui/storeimport/StoreChooserFragment$loadFolder$loadTask$1;->$dir:Ljava/io/File;

    invoke-direct {p0, p3}, Lui/folder/FolderLoadTask;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 120
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lui/storeimport/StoreChooserFragment$loadFolder$loadTask$1;->onPostExecute([Ljava/io/File;)V

    return-void
.end method

.method protected onPostExecute([Ljava/io/File;)V
    .locals 2
    .param p1, "result"    # [Ljava/io/File;

    .prologue
    .line 122
    iget-object v0, p0, Lui/storeimport/StoreChooserFragment$loadFolder$loadTask$1;->$dir:Ljava/io/File;

    invoke-virtual {p0}, Lui/storeimport/StoreChooserFragment$loadFolder$loadTask$1;->getLoadDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lui/storeimport/StoreChooserFragment$loadFolder$loadTask$1;->this$0:Lui/storeimport/StoreChooserFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lui/storeimport/StoreChooserFragment;->setLoading(Z)V

    .line 126
    iget-object v0, p0, Lui/storeimport/StoreChooserFragment$loadFolder$loadTask$1;->this$0:Lui/storeimport/StoreChooserFragment;

    invoke-static {v0}, Lui/storeimport/StoreChooserFragment;->access$getAdapter$p(Lui/storeimport/StoreChooserFragment;)Lui/folder/FolderAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lui/folder/FolderAdapter;->setData([Ljava/io/File;)V

    .line 127
    iget-object v0, p0, Lui/storeimport/StoreChooserFragment$loadFolder$loadTask$1;->this$0:Lui/storeimport/StoreChooserFragment;

    invoke-static {v0}, Lui/storeimport/StoreChooserFragment;->access$updateView(Lui/storeimport/StoreChooserFragment;)V

    goto :goto_0
.end method
