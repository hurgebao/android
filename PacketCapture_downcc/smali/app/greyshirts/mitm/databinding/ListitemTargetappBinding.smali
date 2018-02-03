.class public Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ListitemTargetappBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final background:Landroid/widget/LinearLayout;

.field public final divider:Landroid/widget/ImageView;

.field public final icon:Landroid/widget/ImageView;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field public final name:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0088

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0b004d

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget-object v0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0089

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    sget-object v0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0097

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 5
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p2, "root"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v4}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 85
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->mDirtyFlags:J

    .line 30
    const/4 v1, 0x5

    sget-object v2, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v1, v2, v3}, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 31
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->background:Landroid/widget/LinearLayout;

    .line 32
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->divider:Landroid/widget/ImageView;

    .line 33
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->icon:Landroid/widget/ImageView;

    .line 34
    aget-object v1, v0, v4

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 35
    iget-object v1, p0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 36
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->name:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p0, p2}, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->setRootTag(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0}, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->invalidateAll()V

    .line 40
    return-void
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;

    .prologue
    .line 103
    const-string v0, "layout/listitem_targetapp_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view tag isn\'t correct on view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    new-instance v0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;

    invoke-direct {v0, p1, p0}, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 88
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z
    .param p3, "bindingComponent"    # Landroid/databinding/DataBindingComponent;

    .prologue
    .line 91
    const v0, 0x7f030031

    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;

    return-object v0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 4

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    .line 76
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 77
    :try_start_0
    iget-wide v0, p0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->mDirtyFlags:J

    .line 78
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->mDirtyFlags:J

    .line 79
    monitor-exit p0

    .line 81
    return-void

    .line 79
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasPendingBindings()Z
    .locals 4

    .prologue
    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-wide v0, p0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    monitor-exit p0

    .line 57
    :goto_0
    return v0

    .line 56
    :cond_0
    monitor-exit p0

    .line 57
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .prologue
    .line 44
    monitor-enter p0

    .line 45
    const-wide/16 v0, 0x1

    :try_start_0
    iput-wide v0, p0, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->mDirtyFlags:J

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {p0}, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->requestRebind()V

    .line 48
    return-void

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
