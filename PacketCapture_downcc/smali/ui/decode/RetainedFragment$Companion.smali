.class public final Lui/decode/RetainedFragment$Companion;
.super Ljava/lang/Object;
.source "DecodeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/decode/RetainedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 179
    invoke-direct {p0}, Lui/decode/RetainedFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newFragment()Lui/decode/RetainedFragment;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lui/decode/RetainedFragment;

    invoke-direct {v0}, Lui/decode/RetainedFragment;-><init>()V

    .line 182
    .local v0, "f":Lui/decode/RetainedFragment;
    return-object v0
.end method
