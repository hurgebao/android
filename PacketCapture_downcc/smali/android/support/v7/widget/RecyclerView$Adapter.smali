.class public abstract Landroid/support/v7/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6403
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6404
    new-instance v0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    .line 6405
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    const/4 v4, 0x1

    .line 6507
    iput p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6508
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6509
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 6511
    :cond_0
    const/16 v1, 0x207

    invoke-virtual {p1, v4, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6514
    const-string v1, "RV OnBindView"

    invoke-static {v1}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6515
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 6516
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 6517
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6518
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v1, :cond_1

    .line 6519
    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6521
    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 6522
    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 6492
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    const-string v1, "RV CreateView"

    invoke-static {v1}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6493
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6494
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    iput p2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 6495
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 6496
    return-object v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 6565
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 6537
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 6583
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 6762
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 6763
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 6721
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public abstract onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6482
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 6483
    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 6730
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 6641
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    const/4 v0, 0x0

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6655
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6667
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6604
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 6695
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 6696
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 6709
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 6710
    return-void
.end method
