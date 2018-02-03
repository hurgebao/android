.class public final Lui/decode/DecodeFragment$Companion;
.super Ljava/lang/Object;
.source "DecodeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/decode/DecodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 29
    invoke-direct {p0}, Lui/decode/DecodeFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newFragment(Lui/decode/DecodeArg;Z)Lui/decode/DecodeFragment;
    .locals 3
    .param p1, "decodeArg"    # Lui/decode/DecodeArg;
    .param p2, "heuristic"    # Z

    .prologue
    const-string v2, "decodeArg"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v1, Lui/decode/DecodeFragment;

    invoke-direct {v1}, Lui/decode/DecodeFragment;-><init>()V

    .line 32
    .local v1, "f":Lui/decode/DecodeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "decodeArg"

    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "decodeArg":Lui/decode/DecodeArg;
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 34
    const-string v2, "heuristic"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    invoke-virtual {v1, v0}, Lui/decode/DecodeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    return-object v1
.end method
