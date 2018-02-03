.class public final Lui/folder/FolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderAdapter.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private files:[Ljava/io/File;

.field private final inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lui/folder/FolderAdapter;->context:Landroid/content/Context;

    .line 19
    iget-object v0, p0, Lui/folder/FolderAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "LayoutInflater.from(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lui/folder/FolderAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    const-string v2, "view"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type ui.folder.Tag"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    check-cast v1, Lui/folder/Tag;

    .line 62
    .local v1, "tag":Lui/folder/Tag;
    iget-object v2, p0, Lui/folder/FolderAdapter;->files:[Ljava/io/File;

    if-eqz v2, :cond_1

    check-cast v2, [Ljava/lang/Object;

    aget-object v2, v2, p2

    check-cast v2, Ljava/io/File;

    move-object v0, v2

    .line 63
    .local v0, "file":Ljava/io/File;
    :goto_0
    if-nez v0, :cond_2

    .line 64
    invoke-virtual {v1}, Lui/folder/Tag;->getViewImage()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {v1}, Lui/folder/Tag;->getViewName()Landroid/widget/TextView;

    move-result-object v4

    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :goto_1
    iget-object v2, p0, Lui/folder/FolderAdapter;->files:[Ljava/io/File;

    if-eqz v2, :cond_4

    check-cast v2, [Ljava/lang/Object;

    aget-object v2, v2, p2

    check-cast v2, Ljava/io/File;

    :goto_2
    invoke-virtual {v1, v2}, Lui/folder/Tag;->setFile(Ljava/io/File;)V

    .line 75
    return-void

    .end local v0    # "file":Ljava/io/File;
    :cond_1
    move-object v0, v3

    .line 62
    goto :goto_0

    .line 67
    .restart local v0    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    invoke-virtual {v1}, Lui/folder/Tag;->getViewImage()Landroid/widget/ImageView;

    move-result-object v2

    const v4, 0x7f02006f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    :goto_3
    invoke-virtual {v1}, Lui/folder/Tag;->getViewName()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {v1}, Lui/folder/Tag;->getViewImage()Landroid/widget/ImageView;

    move-result-object v2

    const v4, 0x7f02006e

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_4
    move-object v2, v3

    .line 73
    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lui/folder/FolderAdapter;->files:[Ljava/io/File;

    if-eqz v0, :cond_0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 27
    iget-object v0, p0, Lui/folder/FolderAdapter;->files:[Ljava/io/File;

    if-eqz v0, :cond_0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/io/File;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 31
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-string v1, "parent"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    if-nez p2, :cond_0

    .line 37
    invoke-virtual {p0, p3}, Lui/folder/FolderAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lui/folder/FolderAdapter;->bindView(Landroid/view/View;I)V

    .line 42
    return-object v0

    .line 39
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public final newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-string v2, "parent"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lui/folder/FolderAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030030

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lui/folder/Tag;

    const v2, 0x7f0b004a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "v.findViewById<ImageView>(R.id.image)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0b0089

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "v.findViewById<TextView>(R.id.name)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {v0, v2, v3}, Lui/folder/Tag;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 55
    .local v0, "tag":Lui/folder/Tag;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    const-string v2, "v"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final setData([Ljava/io/File;)V
    .locals 0
    .param p1, "files"    # [Ljava/io/File;

    .prologue
    .line 46
    iput-object p1, p0, Lui/folder/FolderAdapter;->files:[Ljava/io/File;

    .line 47
    invoke-virtual {p0}, Lui/folder/FolderAdapter;->notifyDataSetChanged()V

    .line 48
    return-void
.end method
