.class public final Lkotlin/TuplesKt;
.super Ljava/lang/Object;
.source "Tuples.kt"


# direct methods
.method public static final to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/Object;
    .param p1, "that"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lkotlin/Pair",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
