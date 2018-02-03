.class public abstract Lio/reactivex/Flowable;
.super Ljava/lang/Object;
.source "Flowable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x1

    const-string v1, "rx2.buffer-size"

    const/16 v2, 0x80

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lio/reactivex/Flowable;->BUFFER_SIZE:I

    .line 64
    return-void
.end method

.method public static bufferSize()I
    .locals 1

    .prologue
    .line 138
    sget v0, Lio/reactivex/Flowable;->BUFFER_SIZE:I

    return v0
.end method
