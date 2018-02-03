.class final Lui/folder/FolderChooserFragment$onViewCreated$4;
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

    iput-object p1, p0, Lui/folder/FolderChooserFragment$onViewCreated$4;->this$0:Lui/folder/FolderChooserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v1, p0, Lui/folder/FolderChooserFragment$onViewCreated$4;->this$0:Lui/folder/FolderChooserFragment;

    invoke-virtual {v1}, Lui/folder/FolderChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "PREF"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "lastSaveDir"

    iget-object v3, p0, Lui/folder/FolderChooserFragment$onViewCreated$4;->this$0:Lui/folder/FolderChooserFragment;

    invoke-virtual {v3}, Lui/folder/FolderChooserFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "fileName"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lui/folder/FolderChooserFragment$onViewCreated$4;->this$0:Lui/folder/FolderChooserFragment;

    invoke-virtual {v3}, Lui/folder/FolderChooserFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lui/folder/FolderChooserFragment$onViewCreated$4;->this$0:Lui/folder/FolderChooserFragment;

    invoke-static {v4}, Lui/folder/FolderChooserFragment;->access$getViewFileName$p(Lui/folder/FolderChooserFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lui/folder/FolderChooserFragment$onViewCreated$4;->this$0:Lui/folder/FolderChooserFragment;

    invoke-virtual {v1}, Lui/folder/FolderChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 101
    :cond_1
    iget-object v1, p0, Lui/folder/FolderChooserFragment$onViewCreated$4;->this$0:Lui/folder/FolderChooserFragment;

    invoke-virtual {v1}, Lui/folder/FolderChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 102
    :cond_2
    return-void
.end method
