.class public abstract Lio/reactivex/subjects/Subject;
.super Lio/reactivex/Observable;
.source "Subject.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable",
        "<TT;>;",
        "Lio/reactivex/Observer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lio/reactivex/subjects/Subject;, "Lio/reactivex/subjects/Subject<TT;>;"
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    return-void
.end method
