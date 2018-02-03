.class public final Lcapt/TextSplitWriter;
.super Ljava/lang/Object;
.source "TextSplitWriter.kt"


# instance fields
.field private final hi:I

.field private leftover:I

.field private final low:I

.field private final splitSize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .param p1, "w"    # Ljava/io/RandomAccessFile;

    .prologue
    const-string v0, "w"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcapt/TextSplitWriter;->w:Ljava/io/RandomAccessFile;

    .line 7
    const/16 v0, 0xbb8

    iput v0, p0, Lcapt/TextSplitWriter;->low:I

    .line 8
    const/16 v0, 0xfa0

    iput v0, p0, Lcapt/TextSplitWriter;->hi:I

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcapt/TextSplitWriter;->splitSize:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcapt/TextSplitWriter;->leftover:I

    if-lez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcapt/TextSplitWriter;->splitSize:Ljava/util/ArrayList;

    iget v1, p0, Lcapt/TextSplitWriter;->leftover:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcapt/TextSplitWriter;->leftover:I

    .line 41
    :cond_0
    return-void
.end method

.method public final getSplitSize()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lcapt/TextSplitWriter;->splitSize:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final write([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    const-string v3, "data"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget v0, p0, Lcapt/TextSplitWriter;->leftover:I

    .line 16
    .local v0, "adj":I
    const/4 v2, 0x0

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_2

    .line 17
    :goto_0
    aget-byte v1, p1, v2

    .line 19
    .local v1, "b":B
    add-int v4, v2, v0

    iget v5, p0, Lcapt/TextSplitWriter;->hi:I

    if-lt v4, v5, :cond_1

    .line 20
    iget-object v4, p0, Lcapt/TextSplitWriter;->splitSize:Ljava/util/ArrayList;

    add-int v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    neg-int v0, v2

    .line 28
    :cond_0
    :goto_1
    if-eq v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    goto :goto_0

    .line 25
    .end local v2    # "i":I
    :cond_1
    const/16 v4, 0xa

    int-to-byte v4, v4

    if-ne v1, v4, :cond_0

    add-int v4, v2, v0

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcapt/TextSplitWriter;->low:I

    if-lt v4, v5, :cond_0

    .line 26
    iget-object v4, p0, Lcapt/TextSplitWriter;->splitSize:Ljava/util/ArrayList;

    add-int v5, v2, v0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v4, v2, 0x1

    neg-int v0, v4

    goto :goto_1

    .line 32
    .end local v1    # "b":B
    :cond_2
    array-length v3, p1

    add-int/2addr v3, v0

    iput v3, p0, Lcapt/TextSplitWriter;->leftover:I

    .line 33
    iget-object v3, p0, Lcapt/TextSplitWriter;->w:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 34
    return-void
.end method
