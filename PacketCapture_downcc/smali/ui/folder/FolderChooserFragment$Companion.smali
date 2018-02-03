.class public final Lui/folder/FolderChooserFragment$Companion;
.super Ljava/lang/Object;
.source "FolderChooserFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/folder/FolderChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 17
    invoke-direct {p0}, Lui/folder/FolderChooserFragment$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getREQ_PERMISSION_WRITE_STORAGE$p(Lui/folder/FolderChooserFragment$Companion;)I
    .locals 1
    .param p0, "$this"    # Lui/folder/FolderChooserFragment$Companion;

    .prologue
    .line 17
    invoke-direct {p0}, Lui/folder/FolderChooserFragment$Companion;->getREQ_PERMISSION_WRITE_STORAGE()I

    move-result v0

    return v0
.end method

.method private final getREQ_PERMISSION_WRITE_STORAGE()I
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lui/folder/FolderChooserFragment;->access$getREQ_PERMISSION_WRITE_STORAGE$cp()I

    move-result v0

    return v0
.end method
