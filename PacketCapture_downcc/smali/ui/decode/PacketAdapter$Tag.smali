.class public final Lui/decode/PacketAdapter$Tag;
.super Ljava/lang/Object;
.source "DecodeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/decode/PacketAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tag"
.end annotation


# instance fields
.field private final viewDecoderName:Landroid/widget/TextView;

.field private final viewDecoderNameLayout:Landroid/view/View;

.field private final viewDirection:Landroid/widget/TextView;

.field private final viewHeader:Landroid/view/View;

.field private final viewImage:Landroid/widget/ImageView;

.field private final viewMore:Landroid/view/View;

.field private final viewText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "viewHeader"    # Landroid/view/View;
    .param p2, "viewDirection"    # Landroid/widget/TextView;
    .param p3, "viewDecoderNameLayout"    # Landroid/view/View;
    .param p4, "viewDecoderName"    # Landroid/widget/TextView;
    .param p5, "viewText"    # Landroid/widget/TextView;
    .param p6, "viewMore"    # Landroid/view/View;
    .param p7, "viewImage"    # Landroid/widget/ImageView;

    .prologue
    const-string v0, "viewHeader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewDirection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewDecoderNameLayout"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewDecoderName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewText"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewMore"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewImage"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lui/decode/PacketAdapter$Tag;->viewHeader:Landroid/view/View;

    iput-object p2, p0, Lui/decode/PacketAdapter$Tag;->viewDirection:Landroid/widget/TextView;

    iput-object p3, p0, Lui/decode/PacketAdapter$Tag;->viewDecoderNameLayout:Landroid/view/View;

    iput-object p4, p0, Lui/decode/PacketAdapter$Tag;->viewDecoderName:Landroid/widget/TextView;

    iput-object p5, p0, Lui/decode/PacketAdapter$Tag;->viewText:Landroid/widget/TextView;

    iput-object p6, p0, Lui/decode/PacketAdapter$Tag;->viewMore:Landroid/view/View;

    iput-object p7, p0, Lui/decode/PacketAdapter$Tag;->viewImage:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lui/decode/PacketAdapter$Tag;

    if-eqz v0, :cond_1

    check-cast p1, Lui/decode/PacketAdapter$Tag;

    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewHeader:Landroid/view/View;

    iget-object v1, p1, Lui/decode/PacketAdapter$Tag;->viewHeader:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewDirection:Landroid/widget/TextView;

    iget-object v1, p1, Lui/decode/PacketAdapter$Tag;->viewDirection:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewDecoderNameLayout:Landroid/view/View;

    iget-object v1, p1, Lui/decode/PacketAdapter$Tag;->viewDecoderNameLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewDecoderName:Landroid/widget/TextView;

    iget-object v1, p1, Lui/decode/PacketAdapter$Tag;->viewDecoderName:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewText:Landroid/widget/TextView;

    iget-object v1, p1, Lui/decode/PacketAdapter$Tag;->viewText:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewMore:Landroid/view/View;

    iget-object v1, p1, Lui/decode/PacketAdapter$Tag;->viewMore:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewImage:Landroid/widget/ImageView;

    iget-object v1, p1, Lui/decode/PacketAdapter$Tag;->viewImage:Landroid/widget/ImageView;

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

.method public final getViewDecoderName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewDecoderName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getViewDecoderNameLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewDecoderNameLayout:Landroid/view/View;

    return-object v0
.end method

.method public final getViewDirection()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewDirection:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getViewHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewHeader:Landroid/view/View;

    return-object v0
.end method

.method public final getViewImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getViewMore()Landroid/view/View;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewMore:Landroid/view/View;

    return-object v0
.end method

.method public final getViewText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewText:Landroid/widget/TextView;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewDirection:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewDecoderNameLayout:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewDecoderName:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewText:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lui/decode/PacketAdapter$Tag;->viewMore:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lui/decode/PacketAdapter$Tag;->viewImage:Landroid/widget/ImageView;

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

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag(viewHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/decode/PacketAdapter$Tag;->viewHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/decode/PacketAdapter$Tag;->viewDirection:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewDecoderNameLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/decode/PacketAdapter$Tag;->viewDecoderNameLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewDecoderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/decode/PacketAdapter$Tag;->viewDecoderName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/decode/PacketAdapter$Tag;->viewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewMore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/decode/PacketAdapter$Tag;->viewMore:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/decode/PacketAdapter$Tag;->viewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
