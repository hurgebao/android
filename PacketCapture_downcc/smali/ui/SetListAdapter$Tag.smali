.class public final Lui/SetListAdapter$Tag;
.super Ljava/lang/Object;
.source "SetListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/SetListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tag"
.end annotation


# instance fields
.field private setId:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private final viewProgress:Landroid/view/View;

.field private final viewStatus:Landroid/widget/TextView;

.field private final viewTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1
    .param p1, "viewTime"    # Landroid/widget/TextView;
    .param p2, "viewStatus"    # Landroid/widget/TextView;
    .param p3, "viewProgress"    # Landroid/view/View;

    .prologue
    const-string v0, "viewTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewStatus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewProgress"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lui/SetListAdapter$Tag;->viewTime:Landroid/widget/TextView;

    iput-object p2, p0, Lui/SetListAdapter$Tag;->viewStatus:Landroid/widget/TextView;

    iput-object p3, p0, Lui/SetListAdapter$Tag;->viewProgress:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lui/SetListAdapter$Tag;

    if-eqz v0, :cond_1

    check-cast p1, Lui/SetListAdapter$Tag;

    iget-object v0, p0, Lui/SetListAdapter$Tag;->viewTime:Landroid/widget/TextView;

    iget-object v1, p1, Lui/SetListAdapter$Tag;->viewTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/SetListAdapter$Tag;->viewStatus:Landroid/widget/TextView;

    iget-object v1, p1, Lui/SetListAdapter$Tag;->viewStatus:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/SetListAdapter$Tag;->viewProgress:Landroid/view/View;

    iget-object v1, p1, Lui/SetListAdapter$Tag;->viewProgress:Landroid/view/View;

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

.method public final getSetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lui/SetListAdapter$Tag;->setId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lui/SetListAdapter$Tag;->time:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewProgress()Landroid/view/View;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lui/SetListAdapter$Tag;->viewProgress:Landroid/view/View;

    return-object v0
.end method

.method public final getViewStatus()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lui/SetListAdapter$Tag;->viewStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getViewTime()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lui/SetListAdapter$Tag;->viewTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lui/SetListAdapter$Tag;->viewTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lui/SetListAdapter$Tag;->viewStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lui/SetListAdapter$Tag;->viewProgress:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final setSetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lui/SetListAdapter$Tag;->setId:Ljava/lang/String;

    return-void
.end method

.method public final setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lui/SetListAdapter$Tag;->time:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag(viewTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/SetListAdapter$Tag;->viewTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/SetListAdapter$Tag;->viewStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/SetListAdapter$Tag;->viewProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
