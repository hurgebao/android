.class final Lui/storeimport/StoreChooserFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "StoreChooserFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/storeimport/StoreChooserFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/storeimport/StoreChooserFragment;


# direct methods
.method constructor <init>(Lui/storeimport/StoreChooserFragment;)V
    .locals 0

    iput-object p1, p0, Lui/storeimport/StoreChooserFragment$onViewCreated$1;->this$0:Lui/storeimport/StoreChooserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type ui.folder.Tag"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    check-cast v2, Lui/folder/Tag;

    .line 67
    .local v2, "tag":Lui/folder/Tag;
    invoke-virtual {v2}, Lui/folder/Tag;->getFile()Ljava/io/File;

    move-result-object v0

    .line 68
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    iget-object v3, p0, Lui/storeimport/StoreChooserFragment$onViewCreated$1;->this$0:Lui/storeimport/StoreChooserFragment;

    invoke-static {v3, v0}, Lui/storeimport/StoreChooserFragment;->access$loadFolder(Lui/storeimport/StoreChooserFragment;Ljava/io/File;)V

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    iget-object v3, p0, Lui/storeimport/StoreChooserFragment$onViewCreated$1;->this$0:Lui/storeimport/StoreChooserFragment;

    invoke-virtual {v3}, Lui/storeimport/StoreChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 73
    sget-object v4, Lui/storeimport/StoreLoadActivity;->Companion:Lui/storeimport/StoreLoadActivity$Companion;

    iget-object v3, p0, Lui/storeimport/StoreChooserFragment$onViewCreated$1;->this$0:Lui/storeimport/StoreChooserFragment;

    invoke-virtual {v3}, Lui/storeimport/StoreChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v5, "getActivity()"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v4, v3, v0}, Lui/storeimport/StoreLoadActivity$Companion;->getStartingIntent(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v1

    .line 74
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lui/storeimport/StoreChooserFragment$onViewCreated$1;->this$0:Lui/storeimport/StoreChooserFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lui/storeimport/StoreChooserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
