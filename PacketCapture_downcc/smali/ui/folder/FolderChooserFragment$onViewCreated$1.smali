.class final Lui/folder/FolderChooserFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "FolderChooserFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/folder/FolderChooserFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/folder/FolderChooserFragment;


# direct methods
.method constructor <init>(Lui/folder/FolderChooserFragment;)V
    .locals 0

    iput-object p1, p0, Lui/folder/FolderChooserFragment$onViewCreated$1;->this$0:Lui/folder/FolderChooserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "adapterView"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type ui.folder.Tag"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    check-cast v1, Lui/folder/Tag;

    .line 66
    .local v1, "tag":Lui/folder/Tag;
    invoke-virtual {v1}, Lui/folder/Tag;->getFile()Ljava/io/File;

    move-result-object v0

    .line 67
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    iget-object v2, p0, Lui/folder/FolderChooserFragment$onViewCreated$1;->this$0:Lui/folder/FolderChooserFragment;

    invoke-static {v2, v0}, Lui/folder/FolderChooserFragment;->access$loadFolder(Lui/folder/FolderChooserFragment;Ljava/io/File;)V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    iget-object v2, p0, Lui/folder/FolderChooserFragment$onViewCreated$1;->this$0:Lui/folder/FolderChooserFragment;

    invoke-static {v2}, Lui/folder/FolderChooserFragment;->access$getViewFileName$p(Lui/folder/FolderChooserFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, p0, Lui/folder/FolderChooserFragment$onViewCreated$1;->this$0:Lui/folder/FolderChooserFragment;

    invoke-virtual {v2}, Lui/folder/FolderChooserFragment;->updateFileNameView()V

    goto :goto_0
.end method
