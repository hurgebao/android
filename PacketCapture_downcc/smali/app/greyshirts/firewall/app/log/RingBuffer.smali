.class public Lapp/greyshirts/firewall/app/log/RingBuffer;
.super Ljava/lang/Object;
.source "RingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field final arraySize:I

.field head:I

.field headSeqno:I

.field tail:I

.field tailSeqno:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 12
    .local p0, "this":Lapp/greyshirts/firewall/app/log/RingBuffer;, "Lapp/greyshirts/firewall/app/log/RingBuffer<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->array:[Ljava/lang/Object;

    .line 15
    iput p1, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->arraySize:I

    .line 16
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lapp/greyshirts/firewall/app/log/RingBuffer;, "Lapp/greyshirts/firewall/app/log/RingBuffer<TE;>;"
    .local p1, "elem":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    .line 29
    iget v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->headSeqno:I

    iget v1, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->tailSeqno:I

    sub-int/2addr v0, v1

    iget v1, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->arraySize:I

    if-lt v0, v1, :cond_0

    .line 31
    iget v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->tailSeqno:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->tailSeqno:I

    .line 32
    iget v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->tail:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->tail:I

    .line 33
    iget v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->tail:I

    iget v1, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->arraySize:I

    if-ne v0, v1, :cond_0

    .line 34
    iput v2, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->tail:I

    .line 37
    :cond_0
    iget-object v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->array:[Ljava/lang/Object;

    iget v1, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->head:I

    aput-object p1, v0, v1

    .line 38
    iget v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->headSeqno:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->headSeqno:I

    .line 39
    iget v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->head:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->head:I

    .line 40
    iget v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->head:I

    iget v1, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->arraySize:I

    if-ne v0, v1, :cond_1

    .line 41
    iput v2, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->head:I

    .line 43
    :cond_1
    return-void
.end method

.method public count()I
    .locals 2

    .prologue
    .line 46
    .local p0, "this":Lapp/greyshirts/firewall/app/log/RingBuffer;, "Lapp/greyshirts/firewall/app/log/RingBuffer<TE;>;"
    iget v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->headSeqno:I

    iget v1, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->tailSeqno:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lapp/greyshirts/firewall/app/log/RingBuffer;, "Lapp/greyshirts/firewall/app/log/RingBuffer<TE;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lapp/greyshirts/firewall/app/log/RingBuffer;->count()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index out of range"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    iget v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->tail:I

    add-int/2addr p1, v0

    .line 54
    iget v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->arraySize:I

    if-lt p1, v0, :cond_2

    .line 55
    iget v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->arraySize:I

    sub-int/2addr p1, v0

    .line 57
    :cond_2
    iget-object v0, p0, Lapp/greyshirts/firewall/app/log/RingBuffer;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
