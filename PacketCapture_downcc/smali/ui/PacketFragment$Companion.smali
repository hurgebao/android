.class public final Lui/PacketFragment$Companion;
.super Ljava/lang/Object;
.source "PacketFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/PacketFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 27
    invoke-direct {p0}, Lui/PacketFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newFragment(Lui/decode/DecodeArg;)Lui/PacketFragment;
    .locals 3
    .param p1, "decodeArg"    # Lui/decode/DecodeArg;

    .prologue
    const-string v2, "decodeArg"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v1, Lui/PacketFragment;

    invoke-direct {v1}, Lui/PacketFragment;-><init>()V

    .line 30
    .local v1, "f":Lui/PacketFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "decodeArg"

    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "decodeArg":Lui/decode/DecodeArg;
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 32
    invoke-virtual {v1, v0}, Lui/PacketFragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v1
.end method
