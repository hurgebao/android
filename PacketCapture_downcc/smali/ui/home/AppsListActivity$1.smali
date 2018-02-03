.class Lui/home/AppsListActivity$1;
.super Ljava/lang/Object;
.source "AppsListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/home/AppsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/home/AppsListActivity;

.field final synthetic val$viewModel:Lui/home/AppLoadViewModel;


# direct methods
.method constructor <init>(Lui/home/AppsListActivity;Lui/home/AppLoadViewModel;)V
    .locals 0
    .param p1, "this$0"    # Lui/home/AppsListActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lui/home/AppsListActivity$1;->this$0:Lui/home/AppsListActivity;

    iput-object p2, p0, Lui/home/AppsListActivity$1;->val$viewModel:Lui/home/AppLoadViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 84
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 75
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lui/home/AppsListActivity$1;->val$viewModel:Lui/home/AppLoadViewModel;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lui/home/AppLoadViewModel;->setFilter(Ljava/lang/String;)V

    .line 80
    return-void
.end method
