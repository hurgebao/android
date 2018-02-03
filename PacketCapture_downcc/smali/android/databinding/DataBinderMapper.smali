.class Landroid/databinding/DataBinderMapper;
.super Ljava/lang/Object;
.source "DataBinderMapper.java"


# static fields
.field static final TARGET_MIN_SDK:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method public getDataBinder(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 1
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "layoutId"    # I

    .prologue
    .line 9
    sparse-switch p3, :sswitch_data_0

    .line 15
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11
    :sswitch_0
    invoke-static {p2, p1}, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;

    move-result-object v0

    goto :goto_0

    .line 13
    :sswitch_1
    invoke-static {p2, p1}, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;

    move-result-object v0

    goto :goto_0

    .line 9
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f03001b -> :sswitch_1
        0x7f030031 -> :sswitch_0
    .end sparse-switch
.end method

.method getDataBinder(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 1
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p2, "views"    # [Landroid/view/View;
    .param p3, "layoutId"    # I

    .prologue
    .line 18
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method
