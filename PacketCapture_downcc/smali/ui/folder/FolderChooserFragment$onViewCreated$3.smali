.class final Lui/folder/FolderChooserFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "FolderChooserFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lui/folder/FolderChooserFragment$onViewCreated$3;->this$0:Lui/folder/FolderChooserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v2, p0, Lui/folder/FolderChooserFragment$onViewCreated$3;->this$0:Lui/folder/FolderChooserFragment;

    invoke-virtual {v2}, Lui/folder/FolderChooserFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 90
    .local v1, "newDir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 91
    iget-object v2, p0, Lui/folder/FolderChooserFragment$onViewCreated$3;->this$0:Lui/folder/FolderChooserFragment;

    invoke-static {v2, v1}, Lui/folder/FolderChooserFragment;->access$loadFolder(Lui/folder/FolderChooserFragment;Ljava/io/File;)V

    .line 92
    :cond_0
    return-void
.end method
