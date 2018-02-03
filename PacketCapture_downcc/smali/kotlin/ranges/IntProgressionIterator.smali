.class public final Lkotlin/ranges/IntProgressionIterator;
.super Lkotlin/collections/IntIterator;
.source "ProgressionIterators.kt"


# instance fields
.field private final finalElement:I

.field private hasNext:Z

.field private next:I

.field private final step:I


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .param p1, "first"    # I
    .param p2, "last"    # I
    .param p3, "step"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lkotlin/collections/IntIterator;-><init>()V

    iput p3, p0, Lkotlin/ranges/IntProgressionIterator;->step:I

    .line 50
    iput p2, p0, Lkotlin/ranges/IntProgressionIterator;->finalElement:I

    .line 51
    iget v2, p0, Lkotlin/ranges/IntProgressionIterator;->step:I

    if-lez v2, :cond_2

    if-gt p1, p2, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 52
    iget-boolean v0, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v0, :cond_3

    .end local p1    # "first":I
    :goto_1
    iput p1, p0, Lkotlin/ranges/IntProgressionIterator;->next:I

    return-void

    .restart local p1    # "first":I
    :cond_1
    move v0, v1

    .line 51
    goto :goto_0

    :cond_2
    if-ge p1, p2, :cond_0

    move v0, v1

    goto :goto_0

    .line 52
    :cond_3
    iget p1, p0, Lkotlin/ranges/IntProgressionIterator;->finalElement:I

    goto :goto_1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    return v0
.end method

.method public nextInt()I
    .locals 3

    .prologue
    .line 57
    iget v0, p0, Lkotlin/ranges/IntProgressionIterator;->next:I

    .line 58
    .local v0, "value":I
    iget v1, p0, Lkotlin/ranges/IntProgressionIterator;->finalElement:I

    if-ne v0, v1, :cond_1

    .line 59
    iget-boolean v1, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 60
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 64
    :goto_0
    return v0

    .line 63
    :cond_1
    iget v1, p0, Lkotlin/ranges/IntProgressionIterator;->next:I

    iget v2, p0, Lkotlin/ranges/IntProgressionIterator;->step:I

    add-int/2addr v1, v2

    iput v1, p0, Lkotlin/ranges/IntProgressionIterator;->next:I

    goto :goto_0
.end method
