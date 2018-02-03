.class final Lui/storeimport/StoreChooserFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "StoreChooserFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lui/storeimport/StoreChooserFragment$onViewCreated$2;->this$0:Lui/storeimport/StoreChooserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v2, p0, Lui/storeimport/StoreChooserFragment$onViewCreated$2;->this$0:Lui/storeimport/StoreChooserFragment;

    invoke-virtual {v2}, Lui/storeimport/StoreChooserFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v0

    .line 82
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 83
    .local v1, "newDir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 84
    iget-object v2, p0, Lui/storeimport/StoreChooserFragment$onViewCreated$2;->this$0:Lui/storeimport/StoreChooserFragment;

    invoke-static {v2, v1}, Lui/storeimport/StoreChooserFragment;->access$loadFolder(Lui/storeimport/StoreChooserFragment;Ljava/io/File;)V

    .line 85
    :cond_0
    return-void
.end method
