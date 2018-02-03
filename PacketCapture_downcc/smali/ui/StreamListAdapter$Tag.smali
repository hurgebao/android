.class public final Lui/StreamListAdapter$Tag;
.super Ljava/lang/Object;
.source "StreamListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/StreamListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tag"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private appName:Ljava/lang/String;

.field private final decodeArg$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final viewFileSize:Landroid/widget/TextView;

.field private final viewHostName:Landroid/widget/TextView;

.field private final viewIcon:Landroid/widget/ImageView;

.field private final viewIp:Landroid/widget/TextView;

.field private final viewName:Landroid/widget/TextView;

.field private final viewPort:Landroid/widget/TextView;

.field private final viewProtNo:Landroid/widget/TextView;

.field private final viewProxyType:Landroid/widget/TextView;

.field private final viewTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/StreamListAdapter$Tag;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "decodeArg"

    const-string v5, "getDecodeArg()Lui/decode/DecodeArg;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lui/StreamListAdapter$Tag;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "viewIcon"    # Landroid/widget/ImageView;
    .param p2, "viewName"    # Landroid/widget/TextView;
    .param p3, "viewIp"    # Landroid/widget/TextView;
    .param p4, "viewPort"    # Landroid/widget/TextView;
    .param p5, "viewHostName"    # Landroid/widget/TextView;
    .param p6, "viewTime"    # Landroid/widget/TextView;
    .param p7, "viewProtNo"    # Landroid/widget/TextView;
    .param p8, "viewProxyType"    # Landroid/widget/TextView;
    .param p9, "viewFileSize"    # Landroid/widget/TextView;

    .prologue
    const-string v0, "viewIcon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewIp"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewPort"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHostName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewTime"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewProtNo"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewProxyType"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewFileSize"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lui/StreamListAdapter$Tag;->viewIcon:Landroid/widget/ImageView;

    iput-object p2, p0, Lui/StreamListAdapter$Tag;->viewName:Landroid/widget/TextView;

    iput-object p3, p0, Lui/StreamListAdapter$Tag;->viewIp:Landroid/widget/TextView;

    iput-object p4, p0, Lui/StreamListAdapter$Tag;->viewPort:Landroid/widget/TextView;

    iput-object p5, p0, Lui/StreamListAdapter$Tag;->viewHostName:Landroid/widget/TextView;

    iput-object p6, p0, Lui/StreamListAdapter$Tag;->viewTime:Landroid/widget/TextView;

    iput-object p7, p0, Lui/StreamListAdapter$Tag;->viewProtNo:Landroid/widget/TextView;

    iput-object p8, p0, Lui/StreamListAdapter$Tag;->viewProxyType:Landroid/widget/TextView;

    iput-object p9, p0, Lui/StreamListAdapter$Tag;->viewFileSize:Landroid/widget/TextView;

    .line 206
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/StreamListAdapter$Tag;->decodeArg$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lui/StreamListAdapter$Tag;

    if-eqz v0, :cond_1

    check-cast p1, Lui/StreamListAdapter$Tag;

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewIcon:Landroid/widget/ImageView;

    iget-object v1, p1, Lui/StreamListAdapter$Tag;->viewIcon:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewName:Landroid/widget/TextView;

    iget-object v1, p1, Lui/StreamListAdapter$Tag;->viewName:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewIp:Landroid/widget/TextView;

    iget-object v1, p1, Lui/StreamListAdapter$Tag;->viewIp:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewPort:Landroid/widget/TextView;

    iget-object v1, p1, Lui/StreamListAdapter$Tag;->viewPort:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewHostName:Landroid/widget/TextView;

    iget-object v1, p1, Lui/StreamListAdapter$Tag;->viewHostName:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewTime:Landroid/widget/TextView;

    iget-object v1, p1, Lui/StreamListAdapter$Tag;->viewTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewProtNo:Landroid/widget/TextView;

    iget-object v1, p1, Lui/StreamListAdapter$Tag;->viewProtNo:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewProxyType:Landroid/widget/TextView;

    iget-object v1, p1, Lui/StreamListAdapter$Tag;->viewProxyType:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewFileSize:Landroid/widget/TextView;

    iget-object v1, p1, Lui/StreamListAdapter$Tag;->viewFileSize:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lui/StreamListAdapter$Tag;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDecodeArg()Lui/decode/DecodeArg;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/StreamListAdapter$Tag;->decodeArg$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/StreamListAdapter$Tag;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui/decode/DecodeArg;

    return-object v0
.end method

.method public final getViewFileSize()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewFileSize:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getViewHostName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewHostName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getViewIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getViewIp()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewIp:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getViewName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getViewPort()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewPort:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getViewProtNo()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewProtNo:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getViewProxyType()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewProxyType:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getViewTime()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewIp:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewPort:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewHostName:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewTime:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewProtNo:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->viewProxyType:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lui/StreamListAdapter$Tag;->viewFileSize:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    move v0, v1

    goto :goto_7
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lui/StreamListAdapter$Tag;->appName:Ljava/lang/String;

    return-void
.end method

.method public final setDecodeArg(Lui/decode/DecodeArg;)V
    .locals 3
    .param p1, "<set-?>"    # Lui/decode/DecodeArg;

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lui/StreamListAdapter$Tag;->decodeArg$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/StreamListAdapter$Tag;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag(viewIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/StreamListAdapter$Tag;->viewIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/StreamListAdapter$Tag;->viewName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewIp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/StreamListAdapter$Tag;->viewIp:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/StreamListAdapter$Tag;->viewPort:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewHostName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/StreamListAdapter$Tag;->viewHostName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/StreamListAdapter$Tag;->viewTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewProtNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/StreamListAdapter$Tag;->viewProtNo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewProxyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/StreamListAdapter$Tag;->viewProxyType:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/StreamListAdapter$Tag;->viewFileSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
