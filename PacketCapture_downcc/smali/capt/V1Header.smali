.class public final Lcapt/V1Header;
.super Ljava/lang/Object;
.source "v1parser.kt"


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final hasPretty:Z

.field private final prettyBlocks:[I

.field private final prettyLabel:Ljava/lang/String;

.field private final prettyOffset:I

.field private final prettySize:I

.field private final rawDataSize:I

.field private final rawFileOffset:I

.field private final server2app:Z

.field private final textBlocks:[I


# direct methods
.method public constructor <init>(ZZLjava/lang/String;II[ILjava/lang/String;II[I)V
    .locals 1
    .param p1, "server2app"    # Z
    .param p2, "hasPretty"    # Z
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "rawDataSize"    # I
    .param p5, "rawFileOffset"    # I
    .param p6, "textBlocks"    # [I
    .param p7, "prettyLabel"    # Ljava/lang/String;
    .param p8, "prettySize"    # I
    .param p9, "prettyOffset"    # I
    .param p10, "prettyBlocks"    # [I

    .prologue
    const-string v0, "contentType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textBlocks"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prettyLabel"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prettyBlocks"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcapt/V1Header;->server2app:Z

    iput-boolean p2, p0, Lcapt/V1Header;->hasPretty:Z

    iput-object p3, p0, Lcapt/V1Header;->contentType:Ljava/lang/String;

    iput p4, p0, Lcapt/V1Header;->rawDataSize:I

    iput p5, p0, Lcapt/V1Header;->rawFileOffset:I

    iput-object p6, p0, Lcapt/V1Header;->textBlocks:[I

    iput-object p7, p0, Lcapt/V1Header;->prettyLabel:Ljava/lang/String;

    iput p8, p0, Lcapt/V1Header;->prettySize:I

    iput p9, p0, Lcapt/V1Header;->prettyOffset:I

    iput-object p10, p0, Lcapt/V1Header;->prettyBlocks:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcapt/V1Header;

    if-eqz v2, :cond_1

    check-cast p1, Lcapt/V1Header;

    iget-boolean v2, p0, Lcapt/V1Header;->server2app:Z

    iget-boolean v3, p1, Lcapt/V1Header;->server2app:Z

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcapt/V1Header;->hasPretty:Z

    iget-boolean v3, p1, Lcapt/V1Header;->hasPretty:Z

    if-ne v2, v3, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcapt/V1Header;->contentType:Ljava/lang/String;

    iget-object v3, p1, Lcapt/V1Header;->contentType:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcapt/V1Header;->rawDataSize:I

    iget v3, p1, Lcapt/V1Header;->rawDataSize:I

    if-ne v2, v3, :cond_4

    move v2, v1

    :goto_2
    if-eqz v2, :cond_1

    iget v2, p0, Lcapt/V1Header;->rawFileOffset:I

    iget v3, p1, Lcapt/V1Header;->rawFileOffset:I

    if-ne v2, v3, :cond_5

    move v2, v1

    :goto_3
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcapt/V1Header;->textBlocks:[I

    iget-object v3, p1, Lcapt/V1Header;->textBlocks:[I

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcapt/V1Header;->prettyLabel:Ljava/lang/String;

    iget-object v3, p1, Lcapt/V1Header;->prettyLabel:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcapt/V1Header;->prettySize:I

    iget v3, p1, Lcapt/V1Header;->prettySize:I

    if-ne v2, v3, :cond_6

    move v2, v1

    :goto_4
    if-eqz v2, :cond_1

    iget v2, p0, Lcapt/V1Header;->prettyOffset:I

    iget v3, p1, Lcapt/V1Header;->prettyOffset:I

    if-ne v2, v3, :cond_7

    move v2, v1

    :goto_5
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcapt/V1Header;->prettyBlocks:[I

    iget-object v3, p1, Lcapt/V1Header;->prettyBlocks:[I

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_3

    :cond_6
    move v2, v0

    goto :goto_4

    :cond_7
    move v2, v0

    goto :goto_5
.end method

.method public final getHasPretty()Z
    .locals 1

    .prologue
    .line 8
    iget-boolean v0, p0, Lcapt/V1Header;->hasPretty:Z

    return v0
.end method

.method public final getPrettyBlocks()[I
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcapt/V1Header;->prettyBlocks:[I

    return-object v0
.end method

.method public final getPrettyLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcapt/V1Header;->prettyLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrettyOffset()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcapt/V1Header;->prettyOffset:I

    return v0
.end method

.method public final getRawDataSize()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcapt/V1Header;->rawDataSize:I

    return v0
.end method

.method public final getRawFileOffset()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcapt/V1Header;->rawFileOffset:I

    return v0
.end method

.method public final getServer2app()Z
    .locals 1

    .prologue
    .line 7
    iget-boolean v0, p0, Lcapt/V1Header;->server2app:Z

    return v0
.end method

.method public final getTextBlocks()[I
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcapt/V1Header;->textBlocks:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcapt/V1Header;->server2app:Z

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcapt/V1Header;->hasPretty:Z

    if-eqz v0, :cond_5

    :goto_0
    add-int v0, v3, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcapt/V1Header;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcapt/V1Header;->rawDataSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcapt/V1Header;->rawFileOffset:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcapt/V1Header;->textBlocks:[I

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcapt/V1Header;->prettyLabel:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcapt/V1Header;->prettySize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcapt/V1Header;->prettyOffset:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcapt/V1Header;->prettyBlocks:[I

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V1Header(server2app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcapt/V1Header;->server2app:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasPretty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcapt/V1Header;->hasPretty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcapt/V1Header;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawDataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcapt/V1Header;->rawDataSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawFileOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcapt/V1Header;->rawFileOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textBlocks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcapt/V1Header;->textBlocks:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prettyLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcapt/V1Header;->prettyLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prettySize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcapt/V1Header;->prettySize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prettyOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcapt/V1Header;->prettyOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prettyBlocks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcapt/V1Header;->prettyBlocks:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
