.class public final Lui/decode/V1HeaderState;
.super Ljava/lang/Object;
.source "listviewitem.kt"


# instance fields
.field private final header:Lcapt/V1Header;

.field private viewType:Lui/decode/ViewType;


# direct methods
.method public constructor <init>(Lcapt/V1Header;)V
    .locals 2
    .param p1, "header"    # Lcapt/V1Header;

    .prologue
    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lui/decode/V1HeaderState;->header:Lcapt/V1Header;

    .line 17
    iget-object v0, p0, Lui/decode/V1HeaderState;->header:Lcapt/V1Header;

    invoke-virtual {v0}, Lcapt/V1Header;->getHasPretty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lui/decode/V1HeaderState;->header:Lcapt/V1Header;

    invoke-virtual {v0}, Lcapt/V1Header;->getPrettyLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMAGE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lui/decode/ViewType;->IMAGE:Lui/decode/ViewType;

    iput-object v0, p0, Lui/decode/V1HeaderState;->viewType:Lui/decode/ViewType;

    .line 26
    :goto_0
    return-void

    .line 21
    :cond_0
    sget-object v0, Lui/decode/ViewType;->PRETTY:Lui/decode/ViewType;

    iput-object v0, p0, Lui/decode/V1HeaderState;->viewType:Lui/decode/ViewType;

    goto :goto_0

    .line 24
    :cond_1
    sget-object v0, Lui/decode/ViewType;->TEXT:Lui/decode/ViewType;

    iput-object v0, p0, Lui/decode/V1HeaderState;->viewType:Lui/decode/ViewType;

    goto :goto_0
.end method


# virtual methods
.method public final getHeader()Lcapt/V1Header;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lui/decode/V1HeaderState;->header:Lcapt/V1Header;

    return-object v0
.end method

.method public final getViewType()Lui/decode/ViewType;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lui/decode/V1HeaderState;->viewType:Lui/decode/ViewType;

    return-object v0
.end method

.method public final setViewType(Lui/decode/ViewType;)V
    .locals 1
    .param p1, "<set-?>"    # Lui/decode/ViewType;

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lui/decode/V1HeaderState;->viewType:Lui/decode/ViewType;

    return-void
.end method
