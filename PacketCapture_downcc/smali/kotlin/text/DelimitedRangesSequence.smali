.class final Lkotlin/text/DelimitedRangesSequence;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence",
        "<",
        "Lkotlin/ranges/IntRange;",
        ">;"
    }
.end annotation


# instance fields
.field private final getNextMatch:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final input:Ljava/lang/CharSequence;

.field private final limit:I

.field private final startIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "limit"    # I
    .param p4, "getNextMatch"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/DelimitedRangesSequence;->input:Ljava/lang/CharSequence;

    iput p2, p0, Lkotlin/text/DelimitedRangesSequence;->startIndex:I

    iput p3, p0, Lkotlin/text/DelimitedRangesSequence;->limit:I

    iput-object p4, p0, Lkotlin/text/DelimitedRangesSequence;->getNextMatch:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$getGetNextMatch$p(Lkotlin/text/DelimitedRangesSequence;)Lkotlin/jvm/functions/Function2;
    .locals 1
    .param p0, "$this"    # Lkotlin/text/DelimitedRangesSequence;

    .prologue
    .line 1029
    iget-object v0, p0, Lkotlin/text/DelimitedRangesSequence;->getNextMatch:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public static final synthetic access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "$this"    # Lkotlin/text/DelimitedRangesSequence;

    .prologue
    .line 1029
    iget-object v0, p0, Lkotlin/text/DelimitedRangesSequence;->input:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static final synthetic access$getLimit$p(Lkotlin/text/DelimitedRangesSequence;)I
    .locals 1
    .param p0, "$this"    # Lkotlin/text/DelimitedRangesSequence;

    .prologue
    .line 1029
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence;->limit:I

    return v0
.end method

.method public static final synthetic access$getStartIndex$p(Lkotlin/text/DelimitedRangesSequence;)I
    .locals 1
    .param p0, "$this"    # Lkotlin/text/DelimitedRangesSequence;

    .prologue
    .line 1029
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence;->startIndex:I

    return v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lkotlin/ranges/IntRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1031
    new-instance v0, Lkotlin/text/DelimitedRangesSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;-><init>(Lkotlin/text/DelimitedRangesSequence;)V

    check-cast v0, Ljava/util/Iterator;

    .line 1082
    return-object v0
.end method
