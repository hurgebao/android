.class public final Lui/WalkThrough3Fragment;
.super Landroid/support/v4/app/Fragment;
.source "WalkThroughActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/WalkThrough3Fragment$CertGenerateTask;,
        Lui/WalkThrough3Fragment$InstallTask;,
        Lui/WalkThrough3Fragment$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lui/WalkThrough3Fragment$Companion;

.field private static final REQ_INSTALL_CERT:I


# instance fields
.field private final vInstall$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final vProgress$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final vSkip$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lui/WalkThrough3Fragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lui/WalkThrough3Fragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lui/WalkThrough3Fragment;->Companion:Lui/WalkThrough3Fragment$Companion;

    const/4 v0, 0x3

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/WalkThrough3Fragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "vSkip"

    const-string v5, "getVSkip()Landroid/view/View;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/WalkThrough3Fragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "vInstall"

    const-string v5, "getVInstall()Landroid/view/View;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/WalkThrough3Fragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "vProgress"

    const-string v5, "getVProgress()Landroid/view/View;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lui/WalkThrough3Fragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 76
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/WalkThrough3Fragment;->vSkip$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 77
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/WalkThrough3Fragment;->vInstall$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 78
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/WalkThrough3Fragment;->vProgress$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic access$getREQ_INSTALL_CERT$cp()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lui/WalkThrough3Fragment;->REQ_INSTALL_CERT:I

    return v0
.end method

.method public static final synthetic access$getVInstall$p(Lui/WalkThrough3Fragment;)Landroid/view/View;
    .locals 1
    .param p0, "$this"    # Lui/WalkThrough3Fragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lui/WalkThrough3Fragment;->getVInstall()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getVProgress$p(Lui/WalkThrough3Fragment;)Landroid/view/View;
    .locals 1
    .param p0, "$this"    # Lui/WalkThrough3Fragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lui/WalkThrough3Fragment;->getVProgress()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getVSkip$p(Lui/WalkThrough3Fragment;)Landroid/view/View;
    .locals 1
    .param p0, "$this"    # Lui/WalkThrough3Fragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lui/WalkThrough3Fragment;->getVSkip()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final getVInstall()Landroid/view/View;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/WalkThrough3Fragment;->vInstall$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/WalkThrough3Fragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getVProgress()Landroid/view/View;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/WalkThrough3Fragment;->vProgress$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/WalkThrough3Fragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getVSkip()Landroid/view/View;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/WalkThrough3Fragment;->vSkip$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/WalkThrough3Fragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final setVInstall(Landroid/view/View;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lui/WalkThrough3Fragment;->vInstall$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/WalkThrough3Fragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setVProgress(Landroid/view/View;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lui/WalkThrough3Fragment;->vProgress$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/WalkThrough3Fragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setVSkip(Landroid/view/View;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lui/WalkThrough3Fragment;->vSkip$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/WalkThrough3Fragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 116
    invoke-virtual {p0}, Lui/WalkThrough3Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lui/WalkThrough3Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "\u5b89\u88c5\u8bc1\u4e66"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 123
    :goto_1
    invoke-virtual {p0}, Lui/WalkThrough3Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p0}, Lui/WalkThrough3Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "\u672a\u5b89\u88c5\u8bc1\u4e66"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-string v1, "inflater"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const v1, 0x7f030048

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b00ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById(R.id.skip)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lui/WalkThrough3Fragment;->setVSkip(Landroid/view/View;)V

    .line 87
    const v1, 0x7f0b00af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById(R.id.install)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lui/WalkThrough3Fragment;->setVInstall(Landroid/view/View;)V

    .line 88
    const v1, 0x7f0b00ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById(R.id.progress)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lui/WalkThrough3Fragment;->setVProgress(Landroid/view/View;)V

    .line 90
    invoke-direct {p0}, Lui/WalkThrough3Fragment;->getVProgress()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-direct {p0}, Lui/WalkThrough3Fragment;->getVSkip()Landroid/view/View;

    move-result-object v2

    new-instance v1, Lui/WalkThrough3Fragment$onCreateView$1;

    invoke-direct {v1, p0}, Lui/WalkThrough3Fragment$onCreateView$1;-><init>(Lui/WalkThrough3Fragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-direct {p0}, Lui/WalkThrough3Fragment;->getVInstall()Landroid/view/View;

    move-result-object v2

    new-instance v1, Lui/WalkThrough3Fragment$onCreateView$2;

    invoke-direct {v1, p0}, Lui/WalkThrough3Fragment$onCreateView$2;-><init>(Lui/WalkThrough3Fragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-object v0
.end method
