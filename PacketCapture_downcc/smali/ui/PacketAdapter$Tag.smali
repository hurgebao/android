.class public final Lui/PacketAdapter$Tag;
.super Ljava/lang/Object;
.source "PacketFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/PacketAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tag"
.end annotation


# instance fields
.field private final viewDirection:Landroid/widget/TextView;

.field private final viewNumber:Landroid/widget/TextView;

.field private final viewText:Landroid/widget/TextView;

.field private final viewTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "viewNumber"    # Landroid/widget/TextView;
    .param p2, "viewDirection"    # Landroid/widget/TextView;
    .param p3, "viewTime"    # Landroid/widget/TextView;
    .param p4, "viewText"    # Landroid/widget/TextView;

    .prologue
    const-string v0, "viewNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewDirection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewTime"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lui/PacketAdapter$Tag;->viewNumber:Landroid/widget/TextView;

    iput-object p2, p0, Lui/PacketAdapter$Tag;->viewDirection:Landroid/widget/TextView;

    iput-object p3, p0, Lui/PacketAdapter$Tag;->viewTime:Landroid/widget/TextView;

    iput-object p4, p0, Lui/PacketAdapter$Tag;->viewText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lui/PacketAdapter$Tag;

    if-eqz v0, :cond_1

    check-cast p1, Lui/PacketAdapter$Tag;

    iget-object v0, p0, Lui/PacketAdapter$Tag;->viewNumber:Landroid/widget/TextView;

    iget-object v1, p1, Lui/PacketAdapter$Tag;->viewNumber:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/PacketAdapter$Tag;->viewDirection:Landroid/widget/TextView;

    iget-object v1, p1, Lui/PacketAdapter$Tag;->viewDirection:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/PacketAdapter$Tag;->viewTime:Landroid/widget/TextView;

    iget-object v1, p1, Lui/PacketAdapter$Tag;->viewTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/PacketAdapter$Tag;->viewText:Landroid/widget/TextView;

    iget-object v1, p1, Lui/PacketAdapter$Tag;->viewText:Landroid/widget/TextView;

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

.method public final getViewDirection()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lui/PacketAdapter$Tag;->viewDirection:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getViewNumber()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lui/PacketAdapter$Tag;->viewNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getViewText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lui/PacketAdapter$Tag;->viewText:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getViewTime()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lui/PacketAdapter$Tag;->viewTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lui/PacketAdapter$Tag;->viewNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lui/PacketAdapter$Tag;->viewDirection:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lui/PacketAdapter$Tag;->viewTime:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lui/PacketAdapter$Tag;->viewText:Landroid/widget/TextView;

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

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag(viewNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/PacketAdapter$Tag;->viewNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/PacketAdapter$Tag;->viewDirection:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/PacketAdapter$Tag;->viewTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/PacketAdapter$Tag;->viewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
