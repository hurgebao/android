.class final Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/TrampolineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimedRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;",
        ">;"
    }
.end annotation


# instance fields
.field final count:I

.field volatile disposed:Z

.field final execTime:J

.field final run:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V
    .locals 2
    .param p1, "run"    # Ljava/lang/Runnable;
    .param p2, "execTime"    # Ljava/lang/Long;
    .param p3, "count"    # I

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->run:Ljava/lang/Runnable;

    .line 162
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->execTime:J

    .line 163
    iput p3, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->count:I

    .line 164
    return-void
.end method


# virtual methods
.method public compareTo(Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;)I
    .locals 6
    .param p1, "that"    # Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;

    .prologue
    .line 168
    iget-wide v2, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->execTime:J

    iget-wide v4, p1, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->execTime:J

    invoke-static {v2, v3, v4, v5}, Lio/reactivex/internal/functions/ObjectHelper;->compare(JJ)I

    move-result v0

    .line 169
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 170
    iget v1, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->count:I

    iget v2, p1, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->count:I

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->compare(II)I

    move-result v0

    .line 172
    .end local v0    # "result":I
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 153
    check-cast p1, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->compareTo(Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;)I

    move-result v0

    return v0
.end method
