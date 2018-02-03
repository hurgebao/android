.class public final Lui/folder/FolderChooserFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "FolderChooserFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/folder/FolderChooserFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/folder/FolderChooserFragment;


# direct methods
.method constructor <init>(Lui/folder/FolderChooserFragment;)V
    .locals 0
    .param p1, "$outer"    # Lui/folder/FolderChooserFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 77
    iput-object p1, p0, Lui/folder/FolderChooserFragment$onViewCreated$2;->this$0:Lui/folder/FolderChooserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 84
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 82
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lui/folder/FolderChooserFragment$onViewCreated$2;->this$0:Lui/folder/FolderChooserFragment;

    invoke-virtual {v0}, Lui/folder/FolderChooserFragment;->updateFileNameView()V

    .line 80
    return-void
.end method
