.class Lkotlin/sequences/SequencesKt___SequencesKt;
.super Lkotlin/sequences/SequencesKt__SequencesKt;
.source "_Sequences.kt"


# direct methods
.method public static final asIterable(Lkotlin/sequences/Sequence;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "$receiver"    # Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence",
            "<+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    new-instance v0, Lkotlin/sequences/SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;-><init>(Lkotlin/sequences/Sequence;)V

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method
