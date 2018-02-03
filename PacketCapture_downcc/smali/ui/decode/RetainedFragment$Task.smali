.class public final Lui/decode/RetainedFragment$Task;
.super Ljava/lang/Object;
.source "DecodeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/decode/RetainedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Task"
.end annotation


# instance fields
.field private final decodeArg:Lui/decode/DecodeArg;

.field private final heuristic:Z


# direct methods
.method public constructor <init>(Lui/decode/DecodeArg;Z)V
    .locals 0
    .param p1, "decodeArg"    # Lui/decode/DecodeArg;
    .param p2, "heuristic"    # Z

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lui/decode/RetainedFragment$Task;->decodeArg:Lui/decode/DecodeArg;

    iput-boolean p2, p0, Lui/decode/RetainedFragment$Task;->heuristic:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lui/decode/RetainedFragment$Task;

    if-eqz v2, :cond_1

    check-cast p1, Lui/decode/RetainedFragment$Task;

    iget-object v2, p0, Lui/decode/RetainedFragment$Task;->decodeArg:Lui/decode/DecodeArg;

    iget-object v3, p1, Lui/decode/RetainedFragment$Task;->decodeArg:Lui/decode/DecodeArg;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lui/decode/RetainedFragment$Task;->heuristic:Z

    iget-boolean v3, p1, Lui/decode/RetainedFragment$Task;->heuristic:Z

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final getDecodeArg()Lui/decode/DecodeArg;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lui/decode/RetainedFragment$Task;->decodeArg:Lui/decode/DecodeArg;

    return-object v0
.end method

.method public final getHeuristic()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lui/decode/RetainedFragment$Task;->heuristic:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lui/decode/RetainedFragment$Task;->decodeArg:Lui/decode/DecodeArg;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lui/decode/RetainedFragment$Task;->heuristic:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task(decodeArg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/decode/RetainedFragment$Task;->decodeArg:Lui/decode/DecodeArg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heuristic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lui/decode/RetainedFragment$Task;->heuristic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
