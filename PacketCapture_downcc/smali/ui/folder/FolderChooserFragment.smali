.class public final Lui/folder/FolderChooserFragment;
.super Landroid/support/v4/app/Fragment;
.source "FolderChooserFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/folder/FolderChooserFragment$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lui/folder/FolderChooserFragment$Companion;

# The value of this static final field might be set in the static constructor
.field private static final REQ_PERMISSION_WRITE_STORAGE:I = 0xc9


# instance fields
.field private final adapter$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final currentDir$delegate:Lkotlin/properties/ReadWriteProperty;

.field private loading:Z

.field private final viewDirName$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final viewFileName$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final viewList$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final viewProgress$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final viewSave$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final viewUp$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    new-instance v0, Lui/folder/FolderChooserFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lui/folder/FolderChooserFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lui/folder/FolderChooserFragment;->Companion:Lui/folder/FolderChooserFragment$Companion;

    .line 18
    const/16 v0, 0xc9

    sput v0, Lui/folder/FolderChooserFragment;->REQ_PERMISSION_WRITE_STORAGE:I

    const/16 v0, 0x8

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/folder/FolderChooserFragment;

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

    const-class v3, Lui/folder/FolderChooserFragment;

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

    const-class v3, Lui/folder/FolderChooserFragment;

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

    const-class v3, Lui/folder/FolderChooserFragment;

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

    const-class v3, Lui/folder/FolderChooserFragment;

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

    const-class v3, Lui/folder/FolderChooserFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "viewFileName"

    const-string v5, "getViewFileName()Landroid/widget/EditText;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x6

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/folder/FolderChooserFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "viewSave"

    const-string v5, "getViewSave()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x7

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/folder/FolderChooserFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "currentDir"

    const-string v5, "getCurrentDir()Ljava/io/File;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 22
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/folder/FolderChooserFragment;->adapter$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 23
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/folder/FolderChooserFragment;->viewList$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 24
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/folder/FolderChooserFragment;->viewProgress$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 25
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/folder/FolderChooserFragment;->viewUp$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 26
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/folder/FolderChooserFragment;->viewDirName$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 27
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/folder/FolderChooserFragment;->viewFileName$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 28
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/folder/FolderChooserFragment;->viewSave$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 30
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/folder/FolderChooserFragment;->currentDir$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lui/folder/FolderChooserFragment;)Lui/folder/FolderAdapter;
    .locals 1
    .param p0, "$this"    # Lui/folder/FolderChooserFragment;

    .prologue
    .line 15
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getAdapter()Lui/folder/FolderAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getREQ_PERMISSION_WRITE_STORAGE$cp()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lui/folder/FolderChooserFragment;->REQ_PERMISSION_WRITE_STORAGE:I

    return v0
.end method

.method public static final synthetic access$getViewFileName$p(Lui/folder/FolderChooserFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "$this"    # Lui/folder/FolderChooserFragment;

    .prologue
    .line 15
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewFileName()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$loadFolder(Lui/folder/FolderChooserFragment;Ljava/io/File;)V
    .locals 0
    .param p0, "$this"    # Lui/folder/FolderChooserFragment;
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lui/folder/FolderChooserFragment;->loadFolder(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$updateView(Lui/folder/FolderChooserFragment;)V
    .locals 0
    .param p0, "$this"    # Lui/folder/FolderChooserFragment;

    .prologue
    .line 15
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->updateView()V

    return-void
.end method

.method private final getAdapter()Lui/folder/FolderAdapter;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/folder/FolderChooserFragment;->adapter$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    iget-object v0, p0, Lui/folder/FolderChooserFragment;->viewDirName$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getViewFileName()Landroid/widget/EditText;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/folder/FolderChooserFragment;->viewFileName$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method private final getViewList()Landroid/widget/ListView;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/folder/FolderChooserFragment;->viewList$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    iget-object v0, p0, Lui/folder/FolderChooserFragment;->viewProgress$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getViewSave()Landroid/widget/TextView;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/folder/FolderChooserFragment;->viewSave$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getViewUp()Landroid/view/View;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/folder/FolderChooserFragment;->viewUp$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    .line 139
    invoke-virtual {p0, p1}, Lui/folder/FolderChooserFragment;->setCurrentDir(Ljava/io/File;)V

    .line 140
    new-instance v0, Lui/folder/FolderChooserFragment$loadFolder$loadTask$1;

    invoke-direct {v0, p0, p1, p1}, Lui/folder/FolderChooserFragment$loadFolder$loadTask$1;-><init>(Lui/folder/FolderChooserFragment;Ljava/io/File;Ljava/io/File;)V

    .line 150
    .local v0, "loadTask":Lui/folder/FolderChooserFragment$loadFolder$loadTask$1;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lui/folder/FolderChooserFragment;->loading:Z

    .line 151
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/io/File;

    invoke-virtual {v0, v1}, Lui/folder/FolderChooserFragment$loadFolder$loadTask$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->updateView()V

    .line 153
    return-void
.end method

.method private final setAdapter(Lui/folder/FolderAdapter;)V
    .locals 3
    .param p1, "<set-?>"    # Lui/folder/FolderAdapter;

    .prologue
    iget-object v0, p0, Lui/folder/FolderChooserFragment;->adapter$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setViewDirName(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Lui/folder/FolderChooserFragment;->viewDirName$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setViewFileName(Landroid/widget/EditText;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/widget/EditText;

    .prologue
    iget-object v0, p0, Lui/folder/FolderChooserFragment;->viewFileName$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setViewList(Landroid/widget/ListView;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/widget/ListView;

    .prologue
    iget-object v0, p0, Lui/folder/FolderChooserFragment;->viewList$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setViewProgress(Landroid/view/View;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lui/folder/FolderChooserFragment;->viewProgress$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setViewSave(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Lui/folder/FolderChooserFragment;->viewSave$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setViewUp(Landroid/view/View;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lui/folder/FolderChooserFragment;->viewUp$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final updateView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 156
    invoke-virtual {p0}, Lui/folder/FolderChooserFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v0

    .line 158
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 159
    .local v1, "parent":Ljava/io/File;
    if-nez v1, :cond_0

    .line 160
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewDirName()Landroid/widget/TextView;

    move-result-object v3

    const-string v2, "/"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewUp()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 165
    :goto_0
    invoke-virtual {p0}, Lui/folder/FolderChooserFragment;->updateFileNameView()V

    .line 169
    iget-boolean v2, p0, Lui/folder/FolderChooserFragment;->loading:Z

    if-eqz v2, :cond_1

    .line 170
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewProgress()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 171
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewList()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 175
    :goto_1
    return-void

    .line 163
    :cond_0
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewDirName()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewUp()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewProgress()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 174
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewList()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public final getCurrentDir()Ljava/io/File;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/folder/FolderChooserFragment;->currentDir$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v6, Lui/folder/FolderAdapter;

    invoke-virtual {p0}, Lui/folder/FolderChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v9, "getActivity()"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/content/Context;

    invoke-direct {v6, v4}, Lui/folder/FolderAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v6}, Lui/folder/FolderChooserFragment;->setAdapter(Lui/folder/FolderAdapter;)V

    .line 37
    const/4 v4, 0x5

    new-array v6, v4, [Ljava/io/File;

    invoke-virtual {p0}, Lui/folder/FolderChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v9, "PREF"

    invoke-virtual {v4, v9, v8}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v9, "lastSaveDir"

    invoke-interface {v4, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 38
    .local v2, "it":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    move-object v3, p0

    .line 37
    .end local v2    # "it":Ljava/lang/String;
    .end local p0    # "this":Lui/folder/FolderChooserFragment;
    .local v3, "this":Lui/folder/FolderChooserFragment;
    :goto_0
    aput-object v4, v5, v8

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    aput-object v5, v6, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lui/folder/FolderChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    aput-object v5, v6, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/io/File;

    const-string v9, "/"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v5, v6, v4

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 206
    .local v0, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv$iv":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/io/File;

    .line 43
    .local v2, "it":Ljava/io/File;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v7

    :goto_2
    if-eqz v4, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    .end local v1    # "element$iv$iv":Ljava/lang/Object;
    .end local v2    # "it":Ljava/io/File;
    .end local v3    # "this":Lui/folder/FolderChooserFragment;
    .restart local p0    # "this":Lui/folder/FolderChooserFragment;
    :cond_1
    move-object v4, v5

    move-object v3, p0

    .end local p0    # "this":Lui/folder/FolderChooserFragment;
    .restart local v3    # "this":Lui/folder/FolderChooserFragment;
    move-object v5, v6

    .line 37
    goto :goto_0

    .restart local v0    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v1    # "element$iv$iv":Ljava/lang/Object;
    .restart local v2    # "it":Ljava/io/File;
    :cond_2
    move v4, v8

    .line 43
    goto :goto_2

    .line 207
    .end local v1    # "element$iv$iv":Ljava/lang/Object;
    .end local v2    # "it":Ljava/io/File;
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 43
    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    check-cast v4, Ljava/io/File;

    invoke-virtual {v3, v4}, Lui/folder/FolderChooserFragment;->setCurrentDir(Ljava/io/File;)V

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-string v1, "inflater"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const v1, 0x7f03002b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById(app.greys\u2026ts.mitm.R.id.progressBar)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lui/folder/FolderChooserFragment;->setViewProgress(Landroid/view/View;)V

    .line 49
    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById<ListView>\u2026reyshirts.mitm.R.id.list)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lui/folder/FolderChooserFragment;->setViewList(Landroid/widget/ListView;)V

    .line 50
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewList()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getAdapter()Lui/folder/FolderAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewList()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x7f0b0084

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 53
    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById(app.greyshirts.mitm.R.id.up)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lui/folder/FolderChooserFragment;->setViewUp(Landroid/view/View;)V

    .line 54
    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById<TextView>\u2026shirts.mitm.R.id.dirName)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lui/folder/FolderChooserFragment;->setViewDirName(Landroid/widget/TextView;)V

    .line 55
    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById<EditText>\u2026hirts.mitm.R.id.fileName)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lui/folder/FolderChooserFragment;->setViewFileName(Landroid/widget/EditText;)V

    .line 56
    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById<TextView>\u2026reyshirts.mitm.R.id.save)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lui/folder/FolderChooserFragment;->setViewSave(Landroid/widget/TextView;)V

    .line 58
    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "permissions"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "grantResults"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v1, Lui/folder/FolderChooserFragment;->Companion:Lui/folder/FolderChooserFragment$Companion;

    invoke-static {v1}, Lui/folder/FolderChooserFragment$Companion;->access$getREQ_PERMISSION_WRITE_STORAGE$p(Lui/folder/FolderChooserFragment$Companion;)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 122
    array-length v1, p3

    if-nez v1, :cond_1

    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    aget v1, p3, v2

    if-nez v1, :cond_3

    .line 123
    invoke-virtual {p0}, Lui/folder/FolderChooserFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lui/folder/FolderChooserFragment;->loadFolder(Ljava/io/File;)V

    .line 124
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->updateView()V

    .line 135
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 122
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 126
    :cond_3
    invoke-virtual {p0}, Lui/folder/FolderChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Landroid/support/v4/app/FragmentActivity;
    move-object v1, v0

    .line 127
    check-cast v1, Landroid/content/Context;

    const-string v2, "Grant STORAGE permission to save"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 128
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 129
    nop

    .line 126
    goto :goto_2

    .line 133
    .end local v0    # "it":Landroid/support/v4/app/FragmentActivity;
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 106
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 108
    invoke-virtual {p0}, Lui/folder/FolderChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, "permissionCheck":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 110
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    sget-object v2, Lui/folder/FolderChooserFragment;->Companion:Lui/folder/FolderChooserFragment$Companion;

    invoke-static {v2}, Lui/folder/FolderChooserFragment$Companion;->access$getREQ_PERMISSION_WRITE_STORAGE$p(Lui/folder/FolderChooserFragment$Companion;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lui/folder/FolderChooserFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lui/folder/FolderChooserFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lui/folder/FolderChooserFragment;->loadFolder(Ljava/io/File;)V

    .line 116
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->updateView()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewList()Landroid/widget/ListView;

    move-result-object v1

    new-instance v0, Lui/folder/FolderChooserFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lui/folder/FolderChooserFragment$onViewCreated$1;-><init>(Lui/folder/FolderChooserFragment;)V

    check-cast v0, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewFileName()Landroid/widget/EditText;

    move-result-object v1

    new-instance v0, Lui/folder/FolderChooserFragment$onViewCreated$2;

    invoke-direct {v0, p0}, Lui/folder/FolderChooserFragment$onViewCreated$2;-><init>(Lui/folder/FolderChooserFragment;)V

    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewUp()Landroid/view/View;

    move-result-object v1

    new-instance v0, Lui/folder/FolderChooserFragment$onViewCreated$3;

    invoke-direct {v0, p0}, Lui/folder/FolderChooserFragment$onViewCreated$3;-><init>(Lui/folder/FolderChooserFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewSave()Landroid/widget/TextView;

    move-result-object v1

    new-instance v0, Lui/folder/FolderChooserFragment$onViewCreated$4;

    invoke-direct {v0, p0}, Lui/folder/FolderChooserFragment$onViewCreated$4;-><init>(Lui/folder/FolderChooserFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method public final setCurrentDir(Ljava/io/File;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/io/File;

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lui/folder/FolderChooserFragment;->currentDir$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/folder/FolderChooserFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setLoading(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lui/folder/FolderChooserFragment;->loading:Z

    return-void
.end method

.method public final updateFileNameView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 179
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewFileName()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "fileName":Ljava/lang/String;
    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewSave()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 182
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewSave()Landroid/widget/TextView;

    move-result-object v3

    const-string v2, "Save"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_0
    return-void

    .line 185
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lui/folder/FolderChooserFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v0, "existing":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewSave()Landroid/widget/TextView;

    move-result-object v3

    const-string v2, "Save"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewSave()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewSave()Landroid/widget/TextView;

    move-result-object v3

    const-string v2, "Overwrite"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewSave()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewSave()Landroid/widget/TextView;

    move-result-object v3

    const-string v2, "Save"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-direct {p0}, Lui/folder/FolderChooserFragment;->getViewSave()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
