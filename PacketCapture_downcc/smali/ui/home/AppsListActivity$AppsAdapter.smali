.class public Lui/home/AppsListActivity$AppsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AppsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/home/AppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lui/home/AppsListActivity$AppsViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lui/home/OnAppClickListener;

.field private final pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lui/home/OnAppClickListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lui/home/OnAppClickListener;

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui/home/AppsListActivity$AppsAdapter;->history:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui/home/AppsListActivity$AppsAdapter;->apps:Ljava/util/List;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lui/home/AppsListActivity$AppsAdapter;->pm:Landroid/content/pm/PackageManager;

    .line 135
    iput-object p2, p0, Lui/home/AppsListActivity$AppsAdapter;->listener:Lui/home/OnAppClickListener;

    .line 136
    return-void
.end method

.method private getItemAt(I)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lui/home/AppsListActivity$AppsAdapter;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 173
    iget-object v0, p0, Lui/home/AppsListActivity$AppsAdapter;->history:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 175
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lui/home/AppsListActivity$AppsAdapter;->apps:Ljava/util/List;

    iget-object v1, p0, Lui/home/AppsListActivity$AppsAdapter;->history:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method private needDivider(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 165
    iget-object v1, p0, Lui/home/AppsListActivity$AppsAdapter;->history:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lui/home/AppsListActivity$AppsAdapter;->history:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lui/home/AppsListActivity$AppsAdapter;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lui/home/AppsListActivity$AppsAdapter;->apps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 120
    check-cast p1, Lui/home/AppsListActivity$AppsViewHolder;

    invoke-virtual {p0, p1, p2}, Lui/home/AppsListActivity$AppsAdapter;->onBindViewHolder(Lui/home/AppsListActivity$AppsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lui/home/AppsListActivity$AppsViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lui/home/AppsListActivity$AppsViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 153
    invoke-direct {p0, p2}, Lui/home/AppsListActivity$AppsAdapter;->getItemAt(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 154
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p1, Lui/home/AppsListActivity$AppsViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    invoke-static {p1}, Lui/home/AppsListActivity$AppsViewHolder;->access$000(Lui/home/AppsListActivity$AppsViewHolder;)Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;

    move-result-object v2

    iget-object v2, v2, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lui/home/AppsListActivity$AppsAdapter;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :try_start_0
    invoke-static {p1}, Lui/home/AppsListActivity$AppsViewHolder;->access$000(Lui/home/AppsListActivity$AppsViewHolder;)Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;

    move-result-object v2

    iget-object v2, v2, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lui/home/AppsListActivity$AppsAdapter;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    invoke-static {p1}, Lui/home/AppsListActivity$AppsViewHolder;->access$000(Lui/home/AppsListActivity$AppsViewHolder;)Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;

    move-result-object v2

    iget-object v3, v2, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->divider:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lui/home/AppsListActivity$AppsAdapter;->needDivider(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    return-void

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p1}, Lui/home/AppsListActivity$AppsViewHolder;->access$000(Lui/home/AppsListActivity$AppsViewHolder;)Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;

    move-result-object v2

    iget-object v2, v2, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x4

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 187
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lui/home/AppsListActivity$AppsAdapter;->listener:Lui/home/OnAppClickListener;

    invoke-interface {v1, v0}, Lui/home/OnAppClickListener;->onAppClicked(Landroid/content/pm/ApplicationInfo;)V

    .line 188
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0, p1, p2}, Lui/home/AppsListActivity$AppsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lui/home/AppsListActivity$AppsViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lui/home/AppsListActivity$AppsViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;

    move-result-object v0

    .line 147
    .local v0, "binding":Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;
    invoke-virtual {v0}, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    new-instance v1, Lui/home/AppsListActivity$AppsViewHolder;

    invoke-direct {v1, v0}, Lui/home/AppsListActivity$AppsViewHolder;-><init>(Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;)V

    return-object v1
.end method

.method public setData(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "history":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local p2, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz p1, :cond_0

    .end local p1    # "history":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_0
    iput-object p1, p0, Lui/home/AppsListActivity$AppsAdapter;->history:Ljava/util/List;

    .line 140
    if-eqz p2, :cond_1

    .end local p2    # "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_1
    iput-object p2, p0, Lui/home/AppsListActivity$AppsAdapter;->apps:Ljava/util/List;

    .line 141
    invoke-virtual {p0}, Lui/home/AppsListActivity$AppsAdapter;->notifyDataSetChanged()V

    .line 142
    return-void

    .line 139
    .restart local p1    # "history":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local p2    # "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "history":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 140
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method
