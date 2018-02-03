.class public final Lui/folder/Tag;
.super Ljava/lang/Object;
.source "FolderAdapter.kt"


# instance fields
.field private file:Ljava/io/File;

.field private final viewImage:Landroid/widget/ImageView;

.field private final viewName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "viewImage"    # Landroid/widget/ImageView;
    .param p2, "viewName"    # Landroid/widget/TextView;

    .prologue
    const-string v0, "viewImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lui/folder/Tag;->viewImage:Landroid/widget/ImageView;

    iput-object p2, p0, Lui/folder/Tag;->viewName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lui/folder/Tag;

    if-eqz v0, :cond_1

    check-cast p1, Lui/folder/Tag;

    iget-object v0, p0, Lui/folder/Tag;->viewImage:Landroid/widget/ImageView;

    iget-object v1, p1, Lui/folder/Tag;->viewImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/folder/Tag;->viewName:Landroid/widget/TextView;

    iget-object v1, p1, Lui/folder/Tag;->viewName:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lui/folder/Tag;->file:Ljava/io/File;

    return-object v0
.end method

.method public final getViewImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lui/folder/Tag;->viewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getViewName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lui/folder/Tag;->viewName:Landroid/widget/TextView;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lui/folder/Tag;->viewImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lui/folder/Tag;->viewName:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/io/File;

    .prologue
    .line 81
    iput-object p1, p0, Lui/folder/Tag;->file:Ljava/io/File;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag(viewImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/folder/Tag;->viewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/folder/Tag;->viewName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
