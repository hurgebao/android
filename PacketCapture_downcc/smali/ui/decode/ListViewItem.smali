.class public final Lui/decode/ListViewItem;
.super Ljava/lang/Object;
.source "listviewitem.kt"


# instance fields
.field private final fileOffset:I

.field private final isParent:Z

.field private final prettyLabel:Ljava/lang/String;

.field private final server2App:Z

.field private final size:I

.field private final v1HeaderState:Lui/decode/V1HeaderState;

.field private final viewType:Lui/decode/ViewType;


# direct methods
.method public constructor <init>(ZIIZLjava/lang/String;Lui/decode/ViewType;Lui/decode/V1HeaderState;)V
    .locals 1
    .param p1, "server2App"    # Z
    .param p2, "fileOffset"    # I
    .param p3, "size"    # I
    .param p4, "isParent"    # Z
    .param p5, "prettyLabel"    # Ljava/lang/String;
    .param p6, "viewType"    # Lui/decode/ViewType;
    .param p7, "v1HeaderState"    # Lui/decode/V1HeaderState;

    .prologue
    const-string v0, "prettyLabel"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v1HeaderState"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lui/decode/ListViewItem;->server2App:Z

    iput p2, p0, Lui/decode/ListViewItem;->fileOffset:I

    iput p3, p0, Lui/decode/ListViewItem;->size:I

    iput-boolean p4, p0, Lui/decode/ListViewItem;->isParent:Z

    iput-object p5, p0, Lui/decode/ListViewItem;->prettyLabel:Ljava/lang/String;

    iput-object p6, p0, Lui/decode/ListViewItem;->viewType:Lui/decode/ViewType;

    iput-object p7, p0, Lui/decode/ListViewItem;->v1HeaderState:Lui/decode/V1HeaderState;

    return-void
.end method


# virtual methods
.method public final getFileOffset()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lui/decode/ListViewItem;->fileOffset:I

    return v0
.end method

.method public final getPrettyLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lui/decode/ListViewItem;->prettyLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getServer2App()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lui/decode/ListViewItem;->server2App:Z

    return v0
.end method

.method public final getSize()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lui/decode/ListViewItem;->size:I

    return v0
.end method

.method public final getV1HeaderState()Lui/decode/V1HeaderState;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lui/decode/ListViewItem;->v1HeaderState:Lui/decode/V1HeaderState;

    return-object v0
.end method

.method public final getViewType()Lui/decode/ViewType;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lui/decode/ListViewItem;->viewType:Lui/decode/ViewType;

    return-object v0
.end method

.method public final isParent()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lui/decode/ListViewItem;->isParent:Z

    return v0
.end method
