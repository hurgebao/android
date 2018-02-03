.class public final Lui/storeimport/StoreChooserFragment;
.super Landroid/support/v4/app/Fragment;
.source "StoreChooserFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/storeimport/StoreChooserFragment$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lui/storeimport/StoreChooserFragment$Companion;


# instance fields
.field private final adapter$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final currentDir$delegate:Lkotlin/properties/ReadWriteProperty;

.field private loading:Z

.field private final viewDirName$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final viewList$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final viewProgress$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final viewUp$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lui/storeimport/StoreChooserFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lui/storeimport/StoreChooserFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lui/storeimport/StoreChooserFragment;->Companion:Lui/storeimport/StoreChooserFragment$Companion;

    const/4 v0, 0x6

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/storeimport/StoreChooserFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "adapter"

    const-string v5, "getAdapter()Lui/folder/FolderAdapter;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/storeimport/StoreChooserFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "viewList"

    const-string v5, "getViewList()Landroid/widget/ListView;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/storeimport/StoreChooserFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "viewProgress"

    const-string v5, "getViewProgress()Landroid/view/View;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x3

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/storeimport/StoreChooserFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "viewUp"

    const-string v5, "getViewUp()Landroid/view/View;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x4

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/storeimport/StoreChooserFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "viewDirName"

    const-string v5, "getViewDirName()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/storeimport/StoreChooserFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "currentDir"

    const-string v5, "getCurrentDir()Ljava/io/File;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lui/storeimport/StoreChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 31
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/storeimport/StoreChooserFragment;->adapter$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 32
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/storeimport/StoreChooserFragment;->viewList$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/storeimport/StoreChooserFragment;->viewProgress$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 34
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/storeimport/StoreChooserFragment;->viewUp$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 35
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/storeimport/StoreChooserFragment;->viewDirName$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 110
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/storeimport/StoreChooserFragment;->currentDir$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lui/storeimport/StoreChooserFragment;)Lui/folder/FolderAdapter;
    .locals 1
    .param p0, "$this"    # Lui/storeimport/StoreChooserFragment;

    .prologue
    .line 22
    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->getAdapter()Lui/folder/FolderAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$loadFolder(Lui/storeimport/StoreChooserFragment;Ljava/io/File;)V
    .locals 0
    .param p0, "$this"    # Lui/storeimport/StoreChooserFragment;
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lui/storeimport/StoreChooserFragment;->loadFolder(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$updateView(Lui/storeimport/StoreChooserFragment;)V
    .locals 0
    .param p0, "$this"    # Lui/storeimport/StoreChooserFragment;

    .prologue
    .line 22
    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->updateView()V

    return-void
.end method

.method private final getAdapter()Lui/folder/FolderAdapter;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreChooserFragment;->adapter$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui/folder/FolderAdapter;

    return-object v0
.end method

.method private final getViewDirName()Landroid/widget/TextView;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreChooserFragment;->viewDirName$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getViewList()Landroid/widget/ListView;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreChooserFragment;->viewList$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method private final getViewProgress()Landroid/view/View;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreChooserFragment;->viewProgress$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getViewUp()Landroid/view/View;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreChooserFragment;->viewUp$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final loadFolder(Ljava/io/File;)V
    .locals 2
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lui/storeimport/StoreChooserFragment;->setCurrentDir(Ljava/io/File;)V

    .line 120
    new-instance v0, Lui/storeimport/StoreChooserFragment$loadFolder$loadTask$1;

    invoke-direct {v0, p0, p1, p1}, Lui/storeimport/StoreChooserFragment$loadFolder$loadTask$1;-><init>(Lui/storeimport/StoreChooserFragment;Ljava/io/File;Ljava/io/File;)V

    .line 130
    .local v0, "loadTask":Lui/storeimport/StoreChooserFragment$loadFolder$loadTask$1;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lui/storeimport/StoreChooserFragment;->loading:Z

    .line 131
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/io/File;

    invoke-virtual {v0, v1}, Lui/storeimport/StoreChooserFragment$loadFolder$loadTask$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->updateView()V

    .line 133
    return-void
.end method

.method private final setAdapter(Lui/folder/FolderAdapter;)V
    .locals 3
    .param p1, "<set-?>"    # Lui/folder/FolderAdapter;

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreChooserFragment;->adapter$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setViewDirName(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreChooserFragment;->viewDirName$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setViewList(Landroid/widget/ListView;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/widget/ListView;

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreChooserFragment;->viewList$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setViewProgress(Landroid/view/View;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreChooserFragment;->viewProgress$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setViewUp(Landroid/view/View;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreChooserFragment;->viewUp$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final updateView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 136
    invoke-virtual {p0}, Lui/storeimport/StoreChooserFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v0

    .line 138
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 139
    .local v1, "parent":Ljava/io/File;
    if-nez v1, :cond_0

    .line 140
    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->getViewDirName()Landroid/widget/TextView;

    move-result-object v3

    const-string v2, "/"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->getViewUp()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 145
    :goto_0
    iget-boolean v2, p0, Lui/storeimport/StoreChooserFragment;->loading:Z

    if-eqz v2, :cond_1

    .line 148
    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->getViewProgress()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->getViewList()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 153
    :goto_1
    return-void

    .line 143
    :cond_0
    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->getViewDirName()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->getViewUp()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->getViewProgress()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->getViewList()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public final getCurrentDir()Ljava/io/File;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/storeimport/StoreChooserFragment;->currentDir$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lui/storeimport/StoreChooserFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lui/storeimport/StoreChooserFragment;->loadFolder(Ljava/io/File;)V

    .line 116
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 90
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 91
    invoke-virtual {p0}, Lui/storeimport/StoreChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 92
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-nez v0, :cond_0

    .line 108
    .end local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    :goto_0
    return-void

    .line 97
    .restart local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    :cond_0
    sget-object v3, Lui/storeimport/StoreLoadActivity;->Companion:Lui/storeimport/StoreLoadActivity$Companion;

    invoke-virtual {v3, p3}, Lui/storeimport/StoreLoadActivity$Companion;->getFilePathFromResult(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "filePath":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 100
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "file":Ljava/io/File;
    const-string v3, "pkcs12"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set lastStoreDir="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v3, "PREF"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "lastStoreDir"

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 107
    .end local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v2, Lui/folder/FolderAdapter;

    invoke-virtual {p0}, Lui/storeimport/StoreChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v3, "getActivity()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v1}, Lui/folder/FolderAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Lui/storeimport/StoreChooserFragment;->setAdapter(Lui/folder/FolderAdapter;)V

    .line 41
    invoke-virtual {p0}, Lui/storeimport/StoreChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "PREF"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "lastStoreDir"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "dir":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 43
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lui/storeimport/StoreChooserFragment;->setCurrentDir(Ljava/io/File;)V

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lui/storeimport/StoreChooserFragment;->setCurrentDir(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

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

    .line 50
    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById(R.id.progressBar)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lui/storeimport/StoreChooserFragment;->setViewProgress(Landroid/view/View;)V

    .line 52
    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById<ListView>(R.id.list)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lui/storeimport/StoreChooserFragment;->setViewList(Landroid/widget/ListView;)V

    .line 53
    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->getViewList()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->getAdapter()Lui/folder/FolderAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->getViewList()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x7f0b0084

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 56
    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById(R.id.up)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lui/storeimport/StoreChooserFragment;->setViewUp(Landroid/view/View;)V

    .line 57
    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById<TextView>(R.id.dirName)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lui/storeimport/StoreChooserFragment;->setViewDirName(Landroid/widget/TextView;)V

    .line 59
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 158
    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->updateView()V

    .line 159
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->getViewList()Landroid/widget/ListView;

    move-result-object v1

    new-instance v0, Lui/storeimport/StoreChooserFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lui/storeimport/StoreChooserFragment$onViewCreated$1;-><init>(Lui/storeimport/StoreChooserFragment;)V

    check-cast v0, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    invoke-direct {p0}, Lui/storeimport/StoreChooserFragment;->getViewUp()Landroid/view/View;

    move-result-object v1

    new-instance v0, Lui/storeimport/StoreChooserFragment$onViewCreated$2;

    invoke-direct {v0, p0}, Lui/storeimport/StoreChooserFragment$onViewCreated$2;-><init>(Lui/storeimport/StoreChooserFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public final setCurrentDir(Ljava/io/File;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/io/File;

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lui/storeimport/StoreChooserFragment;->currentDir$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/storeimport/StoreChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setLoading(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lui/storeimport/StoreChooserFragment;->loading:Z

    return-void
.end method
