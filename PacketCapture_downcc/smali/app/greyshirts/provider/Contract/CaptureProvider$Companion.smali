.class public final Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;
.super Ljava/lang/Object;
.source "CaptureProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/greyshirts/provider/Contract/CaptureProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 21
    invoke-direct {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCAPTURE$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I
    .locals 1
    .param p0, "$this"    # Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    .prologue
    .line 21
    invoke-direct {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getCAPTURE()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getCAPTURESET$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I
    .locals 1
    .param p0, "$this"    # Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    .prologue
    .line 21
    invoke-direct {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getCAPTURESET()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getCAPTURESET_ID$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I
    .locals 1
    .param p0, "$this"    # Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    .prologue
    .line 21
    invoke-direct {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getCAPTURESET_ID()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getCAPTURE_ID$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I
    .locals 1
    .param p0, "$this"    # Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    .prologue
    .line 21
    invoke-direct {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getCAPTURE_ID()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getCAPTURE_SET_ID$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I
    .locals 1
    .param p0, "$this"    # Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    .prologue
    .line 21
    invoke-direct {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getCAPTURE_SET_ID()I

    move-result v0

    return v0
.end method

.method private final getCAPTURE()I
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lapp/greyshirts/provider/Contract/CaptureProvider;->access$getCAPTURE$cp()I

    move-result v0

    return v0
.end method

.method private final getCAPTURESET()I
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lapp/greyshirts/provider/Contract/CaptureProvider;->access$getCAPTURESET$cp()I

    move-result v0

    return v0
.end method

.method private final getCAPTURESET_ID()I
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lapp/greyshirts/provider/Contract/CaptureProvider;->access$getCAPTURESET_ID$cp()I

    move-result v0

    return v0
.end method

.method private final getCAPTURE_ID()I
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lapp/greyshirts/provider/Contract/CaptureProvider;->access$getCAPTURE_ID$cp()I

    move-result v0

    return v0
.end method

.method private final getCAPTURE_SET_ID()I
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lapp/greyshirts/provider/Contract/CaptureProvider;->access$getCAPTURE_SET_ID$cp()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final buildProjectionMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v0, "map":Ljava/util/HashMap;
    sget-object v1, Lapp/greyshirts/provider/Contract/CaptureSet;->_ID:Ljava/lang/String;

    sget-object v2, Lapp/greyshirts/provider/Contract/CaptureSet;->_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_SET_ID:Ljava/lang/String;

    sget-object v2, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_SET_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_START_TIME:Ljava/lang/String;

    sget-object v2, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_START_TIME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_NUM:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(select count(*) from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v3}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_SET_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_SET_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_NUM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-object v0
.end method

.method public final buildUriMatcher()Landroid/content/UriMatcher;
    .locals 4

    .prologue
    .line 30
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    .line 31
    .local v1, "matcher":Landroid/content/UriMatcher;
    invoke-static {}, Lapp/greyshirts/provider/Contract/CaptureContractKt;->getCONTENT_AUTHORITY()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "authority":Ljava/lang/String;
    const-string v3, "capture"

    move-object v2, p0

    check-cast v2, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-direct {v2}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getCAPTURE()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    const-string v3, "capture/set/*"

    move-object v2, p0

    check-cast v2, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-direct {v2}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getCAPTURE_SET_ID()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    const-string v3, "capture/*"

    move-object v2, p0

    check-cast v2, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-direct {v2}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getCAPTURE_ID()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    const-string v3, "captureset"

    move-object v2, p0

    check-cast v2, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-direct {v2}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getCAPTURESET()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    const-string v2, "captureset/*"

    check-cast p0, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    .end local p0    # "this":Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;
    invoke-direct {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getCAPTURESET_ID()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    return-object v1
.end method

.method public final getCaptureSetProjectionMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Lapp/greyshirts/provider/Contract/CaptureProvider;->access$getCaptureSetProjectionMap$cp()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public final getUriMatcher()Landroid/content/UriMatcher;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lapp/greyshirts/provider/Contract/CaptureProvider;->access$getUriMatcher$cp()Landroid/content/UriMatcher;

    move-result-object v0

    return-object v0
.end method
