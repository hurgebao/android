.class public final Lui/storeimport/StoreLoadActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "StoreLoadActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/storeimport/StoreLoadActivity$CertLoadTask;,
        Lui/storeimport/StoreLoadActivity$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lui/storeimport/StoreLoadActivity$Companion;


# instance fields
.field private final aliasName$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final cancelButton$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final inputDialog$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final okButton$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final progressBar$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final storePass$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final task$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lui/storeimport/StoreLoadActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lui/storeimport/StoreLoadActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lui/storeimport/StoreLoadActivity;->Companion:Lui/storeimport/StoreLoadActivity$Companion;

    const/4 v0, 0x7

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/storeimport/StoreLoadActivity;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "task"

    const-string v5, "getTask()Lui/storeimport/StoreLoadActivity$CertLoadTask;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/storeimport/StoreLoadActivity;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "inputDialog"

    const-string v5, "getInputDialog()Landroid/view/View;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/storeimport/StoreLoadActivity;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "progressBar"

    const-string v5, "getProgressBar()Landroid/widget/ProgressBar;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x3

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/storeimport/StoreLoadActivity;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "storePass"

    const-string v5, "getStorePass()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x4

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/storeimport/StoreLoadActivity;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "aliasName"

    const-string v5, "getAliasName()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/storeimport/StoreLoadActivity;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "cancelButton"

    const-string v5, "getCancelButton()Landroid/view/View;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x6

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/storeimport/StoreLoadActivity;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "okButton"

    const-string v5, "getOkButton()Landroid/view/View;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lui/storeimport/StoreLoadActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 50
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/storeimport/StoreLoadActivity;->task$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 51
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/storeimport/StoreLoadActivity;->inputDialog$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 52
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/storeimport/StoreLoadActivity;->progressBar$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 53
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/storeimport/StoreLoadActivity;->storePass$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 54
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/storeimport/StoreLoadActivity;->aliasName$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 55
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/storeimport/StoreLoadActivity;->cancelButton$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 56
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/storeimport/StoreLoadActivity;->okButton$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method


# virtual methods
.method public final getAliasName()Landroid/widget/TextView;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreLoadActivity;->aliasName$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreLoadActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getCancelButton()Landroid/view/View;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreLoadActivity;->cancelButton$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreLoadActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lui/storeimport/StoreLoadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getIntent().getStringExtra(\"file\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getInputDialog()Landroid/view/View;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreLoadActivity;->inputDialog$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreLoadActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getOkButton()Landroid/view/View;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreLoadActivity;->okButton$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreLoadActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getProgressBar()Landroid/widget/ProgressBar;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreLoadActivity;->progressBar$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreLoadActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public final getStorePass()Landroid/widget/TextView;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreLoadActivity;->storePass$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreLoadActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lui/storeimport/StoreLoadActivity;->setContentView(I)V

    .line 67
    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Lui/storeimport/StoreLoadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.inputDialog)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lui/storeimport/StoreLoadActivity;->setInputDialog(Landroid/view/View;)V

    .line 68
    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Lui/storeimport/StoreLoadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<ProgressBar>(R.id.progressBar)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lui/storeimport/StoreLoadActivity;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 69
    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Lui/storeimport/StoreLoadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<TextView>(R.id.storePass)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lui/storeimport/StoreLoadActivity;->setStorePass(Landroid/widget/TextView;)V

    .line 70
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lui/storeimport/StoreLoadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<TextView>(R.id.aliasName)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lui/storeimport/StoreLoadActivity;->setAliasName(Landroid/widget/TextView;)V

    .line 71
    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Lui/storeimport/StoreLoadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.cancel)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lui/storeimport/StoreLoadActivity;->setCancelButton(Landroid/view/View;)V

    .line 72
    const v0, 0x7f0b0082

    invoke-virtual {p0, v0}, Lui/storeimport/StoreLoadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.ok)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lui/storeimport/StoreLoadActivity;->setOkButton(Landroid/view/View;)V

    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lui/storeimport/StoreLoadActivity;->finish()V

    .line 95
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lui/storeimport/StoreLoadActivity;->getInputDialog()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 80
    invoke-virtual {p0}, Lui/storeimport/StoreLoadActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 82
    invoke-virtual {p0}, Lui/storeimport/StoreLoadActivity;->getCancelButton()Landroid/view/View;

    move-result-object v1

    new-instance v0, Lui/storeimport/StoreLoadActivity$onCreate$1;

    invoke-direct {v0, p0}, Lui/storeimport/StoreLoadActivity$onCreate$1;-><init>(Lui/storeimport/StoreLoadActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Lui/storeimport/StoreLoadActivity;->getOkButton()Landroid/view/View;

    move-result-object v1

    new-instance v0, Lui/storeimport/StoreLoadActivity$onCreate$2;

    invoke-direct {v0, p0}, Lui/storeimport/StoreLoadActivity$onCreate$2;-><init>(Lui/storeimport/StoreLoadActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final setAliasName(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/widget/TextView;

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lui/storeimport/StoreLoadActivity;->aliasName$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreLoadActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setCancelButton(Landroid/view/View;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/view/View;

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lui/storeimport/StoreLoadActivity;->cancelButton$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreLoadActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setInputDialog(Landroid/view/View;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/view/View;

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lui/storeimport/StoreLoadActivity;->inputDialog$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreLoadActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setOkButton(Landroid/view/View;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/view/View;

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lui/storeimport/StoreLoadActivity;->okButton$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreLoadActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setProgressBar(Landroid/widget/ProgressBar;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/widget/ProgressBar;

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lui/storeimport/StoreLoadActivity;->progressBar$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreLoadActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setStorePass(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/widget/TextView;

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lui/storeimport/StoreLoadActivity;->storePass$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreLoadActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
